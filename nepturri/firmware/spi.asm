	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_spi_write
_spi_write:
	stdec	r6
						// allocreg r2
						// allocreg r1

						//..//firmware/spi.c, line 7
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l6: # 

						//..//firmware/spi.c, line 9
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 301
						// deref 
	ldbinc	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x21
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-44
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness

						//..//firmware/spi.c, line 10
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r2
						// (save result) // isreg

						//..//firmware/spi.c, line 10
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_spi_read
_spi_read:
	stdec	r6
						// allocreg r2
						// allocreg r1

						//..//firmware/spi.c, line 16
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l13: # 

						//..//firmware/spi.c, line 18
		// Offsets 255, -44
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/spi.c, line 18
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 21 type 503
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x503
	ld	r0
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//save_temp done

						//..//firmware/spi.c, line 19
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r2
						// (save result) // isreg

						//..//firmware/spi.c, line 19
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

