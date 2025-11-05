module i2s
(
    input        reset,
    input        clk,
    input [31:0] clk_rate,
    input        toggle_filter,  // New input to enable/disable the filter

    output reg sclk,
    output reg lrclk,
    output reg sdata,

    input [AUDIO_DW-1:0] left_chan,
    input [AUDIO_DW-1:0] right_chan
);

// Clock Setting
parameter I2S_Freq = 48_000;     // 48 KHz
parameter AUDIO_DW = 16;

localparam I2S_FreqX2 = I2S_Freq * 2 * AUDIO_DW * 2;

reg  [31:0] cnt;
wire [31:0] cnt_next = cnt + I2S_FreqX2;

reg ce;

always @(posedge clk) begin
    ce <= 0;
    cnt <= cnt_next;
    if(cnt_next >= clk_rate) begin
        cnt <= cnt_next - clk_rate;
        ce <= 1;
    end
end

// Filter-related signals
reg [AUDIO_DW-1:0] left_filter_accum [7:0];  // 8-tap filter
reg [AUDIO_DW-1:0] right_filter_accum [7:0];
reg [AUDIO_DW-1:0] filtered_left, filtered_right;
wire [AUDIO_DW-1:0] left_with_gain, right_with_gain;

// Apply reduced gain factor of 4 to avoid excessive volume
assign left_with_gain  = filtered_left;
assign right_with_gain = filtered_right; 


integer i;

always @(posedge clk) begin
    reg  [4:0] bit_cnt = 1;

    reg [AUDIO_DW-1:0] left;
    reg [AUDIO_DW-1:0] right;

    if (reset) begin
        bit_cnt <= 1;
        lrclk   <= 1;
        sclk    <= 1;
        sdata   <= 1;
        sclk    <= 1;
        filtered_left <= 0;
        filtered_right <= 0;
        for (i = 0; i < 8; i = i + 1) begin
            left_filter_accum[i] <= 0;
            right_filter_accum[i] <= 0;
        end
    end
    else begin
        if(ce) begin
            sclk <= ~sclk;
            if(sclk) begin
                if(bit_cnt == AUDIO_DW) begin
                    bit_cnt <= 1;
                    lrclk <= ~lrclk;
                    if(lrclk) begin
                        // Load new data
                        left  <= left_chan;
                        right <= right_chan;

                        // Apply 8-tap moving average filter if enabled
                        if (~toggle_filter) begin
                            // Shift the filter registers
                            for (i = 7; i > 0; i = i - 1) begin
                                left_filter_accum[i] <= left_filter_accum[i-1];
                                right_filter_accum[i] <= right_filter_accum[i-1];
                            end

                            // Insert new input values
                            left_filter_accum[0] <= left_chan;
                            right_filter_accum[0] <= right_chan;

                            // Average the 8 values
                            filtered_left <= (left_filter_accum[0] + left_filter_accum[1] + 
                                              left_filter_accum[2] + left_filter_accum[3] + 
                                              left_filter_accum[4] + left_filter_accum[5] + 
                                              left_filter_accum[6] + left_filter_accum[7]) >> 3;
                                              
                            filtered_right <= (right_filter_accum[0] + right_filter_accum[1] + 
                                               right_filter_accum[2] + right_filter_accum[3] + 
                                               right_filter_accum[4] + right_filter_accum[5] + 
                                               right_filter_accum[6] + right_filter_accum[7]) >> 3;
                        end
                    end
                end
                else begin
                    bit_cnt <= bit_cnt + 1'd1;
                end

                // Send data using the correct output (filtered or unfiltered)
                if (~toggle_filter) begin
                    // Use filtered data when filter is enabled
                    sdata <= lrclk ? left_with_gain[AUDIO_DW - bit_cnt] : right_with_gain[AUDIO_DW - bit_cnt];
                end else begin
                    // Use unfiltered data when filter is disabled
                    sdata <= lrclk ? left[AUDIO_DW - bit_cnt] : right[AUDIO_DW - bit_cnt];
                end
            end
        end
    end
end

endmodule
