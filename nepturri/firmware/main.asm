	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_nthfile
_nthfile:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 95
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//..//firmware/main.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r5
						//save_temp done

						//..//firmware/main.c, line 98
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r3

						//..//firmware/main.c, line 98
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7
l16: # 

						//..//firmware/main.c, line 99
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//..//firmware/main.c, line 99
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//..//firmware/main.c, line 99
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l11
		add	r7

						//..//firmware/main.c, line 99
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 99
						//pcreltotemp
	.lipcrel	l12
	add	r7
l11: # 

						//..//firmware/main.c, line 99
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l12: # 
						// allocreg r1

						//..//firmware/main.c, line 99
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 99
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//..//firmware/main.c, line 99
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//..//firmware/main.c, line 100
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r4
						// (save result) // isreg

						//..//firmware/main.c, line 101
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6

						//..//firmware/main.c, line 101
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 102
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
l15: # 

						//..//firmware/main.c, line 98
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r5
						// (save result) // isreg

						//..//firmware/main.c, line 98
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	cmp	r4

						//..//firmware/main.c, line 98
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l16
		add	r7
l17: # 

						//..//firmware/main.c, line 104
						//setreturn
						// (obj to r0) flags 62 type a
						// deref 
	ld	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
.functiontail:
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

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
	.global	_spi32le
_spi32le:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 111
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r1
						// (save result) // isreg

						//..//firmware/main.c, line 111
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 112
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//..//firmware/main.c, line 112
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//..//firmware/main.c, line 112
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 113
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	16
	sgn
	shr	r1
						// (save result) // isreg

						//..//firmware/main.c, line 113
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//..//firmware/main.c, line 113
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 114
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	24
	sgn
	shr	r1
						// (save result) // isreg

						//..//firmware/main.c, line 114
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//..//firmware/main.c, line 114
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_selectrom
_selectrom:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 158
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 158
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// static
	.liabs	l4,0
						// static pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//..//firmware/main.c, line 158
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 62 with 4a
						// deref 
	byt
	ld	r5

						//..//firmware/main.c, line 158
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
						// freereg r2
						// allocreg r2

						//..//firmware/main.c, line 160
						// (bitwise/arithmetic) 	//ops: 0, 5, 3
						// (obj to r2) flags 2 type 3
						// matchobj comparing flags 2 with 62
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r2
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 160
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 42
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//..//firmware/main.c, line 160
						//call
						//pcreltotemp
	.lipcrel	_nthfile // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 160
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//..//firmware/main.c, line 162
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//..//firmware/main.c, line 162
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// freereg r3
						// allocreg r3

						//..//firmware/main.c, line 164
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 62
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_filename
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 164
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 164
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 164
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r3

						//..//firmware/main.c, line 166
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r3
						// (save result) // isreg

						//..//firmware/main.c, line 166
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r3
						// (save result) // isreg

						//..//firmware/main.c, line 166
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r3
						// (save result) // isreg

						//..//firmware/main.c, line 166
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l26,0
						// static pe is varadr
						// (save temp)store type a
	st	r3
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 167
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 80
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 167
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//..//firmware/main.c, line 168
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 42, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type a
	st	r3
						//save_temp done
						// freereg r3
						// allocreg r1

						//..//firmware/main.c, line 169
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 42
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 169
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 169
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 112
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_filename
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 169
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l25: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 171
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 171
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 172
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 172
						//call
						//pcreltotemp
	.lipcrel	_Menu_ShowHide // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 173
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 174
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 174
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l20: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 0
	add	r7

	.section	.rodata.3
l26:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_selectsdcard
_selectsdcard:
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 180
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 180
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 180
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l29,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 180
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 181
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 181
						//call
						//pcreltotemp
	.lipcrel	_Menu_ShowHide // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//..//firmware/main.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 183
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 183
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1
	ldinc	r6	// shortest way to add 4 to sp
	ldinc	r6
	mr	r7

	.section	.rodata.5
l29:
	.byte	60
	.byte	83
	.byte	68
	.byte	67
	.byte	97
	.byte	114
	.byte	100
	.byte	62
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_selectdir
_selectdir:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r2

						//..//firmware/main.c, line 189
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 189
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//..//firmware/main.c, line 189
						//call
						//pcreltotemp
	.lipcrel	_nthfile // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 189
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 190
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//..//firmware/main.c, line 190
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 191
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 191
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l33: # 

						//..//firmware/main.c, line 192
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 193
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 193
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_listroms
_listroms:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//..//firmware/main.c, line 199
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r5
						//save_temp done

						//..//firmware/main.c, line 201
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//..//firmware/main.c, line 202
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 203
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 203
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	0
	cmp	r1
						// freereg r1

						//..//firmware/main.c, line 203
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 203
						// (test)
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
				// flags 82
	mr	r0
	and	r0

						//..//firmware/main.c, line 203
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
l65: # 

						//..//firmware/main.c, line 204
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//..//firmware/main.c, line 204
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6

						//..//firmware/main.c, line 204
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7

						//..//firmware/main.c, line 204
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 204
						//pcreltotemp
	.lipcrel	l42
	add	r7
l41: # 

						//..//firmware/main.c, line 204
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l42: # 
						// allocreg r1

						//..//firmware/main.c, line 204
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 204
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//..//firmware/main.c, line 204
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//..//firmware/main.c, line 205
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r4
						// (save result) // isreg

						//..//firmware/main.c, line 203
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//..//firmware/main.c, line 203
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 203
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//..//firmware/main.c, line 203
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 203
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//..//firmware/main.c, line 203
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
l67: # 

						//..//firmware/main.c, line 208
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//..//firmware/main.c, line 209
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//..//firmware/main.c, line 209
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7
l66: # 

						//..//firmware/main.c, line 210
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_configstring_matchextension
						// extern pe is varadr
	stdec	r6

						//..//firmware/main.c, line 210
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6

						//..//firmware/main.c, line 210
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7

						//..//firmware/main.c, line 210
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 210
						//pcreltotemp
	.lipcrel	l51
	add	r7
l50: # 

						//..//firmware/main.c, line 210
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l51: # 
						// allocreg r1

						//..//firmware/main.c, line 210
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 210
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//..//firmware/main.c, line 210
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//..//firmware/main.c, line 211
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//..//firmware/main.c, line 211
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 214
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 214
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 214
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//..//firmware/main.c, line 214
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l56
		add	r7
						// freereg r2
						// allocreg r2

						//..//firmware/main.c, line 216
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_selectdir
						// extern pe is varadr
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//..//firmware/main.c, line 216
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 216
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 216
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 220
		// Real offset of type is 220, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 217
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 217
						// Z disposable
		// Offsets -1, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 218
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 218
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 82 type a
						// (prepobj r5)
 						// (prepobj r5)
 						// static
	.liabs	l4,0
						// static pe is varadr
	mr	r5
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r5
						// (save result) // isreg
						// freereg r1

						//..//firmware/main.c, line 218
		// Offsets 129, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 256
		// Real offset of type is 256, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	129
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 219
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 219
						// Z disposable
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 220
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_longfilename
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//..//firmware/main.c, line 220
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7
						// freereg r3

						//..//firmware/main.c, line 221
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//..//firmware/main.c, line 221
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 221
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 221
		// Offsets 27, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	27
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 221
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//..//firmware/main.c, line 223
						//pcreltotemp
	.lipcrel	l63
	add	r7
l58: # 
						// allocreg r1

						//..//firmware/main.c, line 224
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	13
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 224
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 225
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//..//firmware/main.c, line 225
						// (bitwise/arithmetic) 	//ops: 6, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	addt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 225
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 225
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 200
		// Real offset of type is 200, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 225
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//..//firmware/main.c, line 229
						//pcreltotemp
	.lipcrel	l63
	add	r7
l56: # 
						// allocreg r3
						// allocreg r2

						//..//firmware/main.c, line 230
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_selectrom
						// extern pe is varadr
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1

						//..//firmware/main.c, line 230
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 230
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 230
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//..//firmware/main.c, line 231
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_longfilename
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//..//firmware/main.c, line 231
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7
						// freereg r3
						// allocreg r1

						//..//firmware/main.c, line 232
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	30
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 232
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r4
						// (save result) // isreg
						// allocreg r3

						//..//firmware/main.c, line 232
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 4
						// (obj to r3) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj r3)
 						// (prepobj r3)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l4,0
						// static pe is varadr
	mr	r3
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	add	r3
						// (save result) // isreg
						// freereg r1
						// allocreg r2

						//..//firmware/main.c, line 232
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 104
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 232
		// Offsets 29, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	29
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 232
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//..//firmware/main.c, line 234
						//pcreltotemp
	.lipcrel	l63
	add	r7
l62: # 
						// allocreg r3

						//..//firmware/main.c, line 235
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	30
	mul	r3
						// (save result) // isreg

						//..//firmware/main.c, line 235
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l4,0
						// static pe is varadr
	add	r3
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 235
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	11
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 235
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 124
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 236
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg

						//..//firmware/main.c, line 236
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 236
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 236
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 236
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1
l63: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 209
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 209
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	7
	cmp	r4

						//..//firmware/main.c, line 209
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7

						//..//firmware/main.c, line 209
						// (test)
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6

						//..//firmware/main.c, line 209
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
l68: # 
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 248
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 42
	.liconst	-12
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
l69:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 253
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 253
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//..//firmware/main.c, line 253
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 253
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// allocreg r2

						//..//firmware/main.c, line 254
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	9
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//..//firmware/main.c, line 254
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_configstring_index
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 255
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	10
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 255
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 256
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l1,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 256
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 256
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 256
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//..//firmware/main.c, line 257
		// Offsets 30, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	30
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 258
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 258
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1
						// freereg r3
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
l3:
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 265
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 265
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 265
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 265
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menupage, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//..//firmware/main.c, line 266
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 268
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 268
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
l74:
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 273
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 273
						//call
						//pcreltotemp
	.lipcrel	_Menu_ShowHide // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
l77:
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 279
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
				// flags 42
	and	r1

						//..//firmware/main.c, line 279
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7

						//..//firmware/main.c, line 281
		// Offsets 0, 85
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 85, 0
		// Real offset of type is 85, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// extern (offset 85)
	.liabs	_menu, 85
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 282
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 86
						//Fuzzy match found, offset: -9 (varadr: 1)
	.liconst	-9
	add	r0

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l3,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	stinc	r0
						//save_temp done

						//..//firmware/main.c, line 283
		// Offsets 0, 81
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 81, 0
		// Real offset of type is 81, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// extern (offset 0)
	.liabs	_std_label_back
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//..//firmware/main.c, line 286
						//pcreltotemp
	.lipcrel	l82
	add	r7
l81: # 

						//..//firmware/main.c, line 287
		// Offsets 0, 81
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 81, 0
		// Real offset of type is 81, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 81)
	.liabs	_menu, 81
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 81
						// extern (offset 0)
	.liabs	_std_label_exit
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//..//firmware/main.c, line 288
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 0
						// matchobj comparing flags 82 with 82
						//extern: comparing 77 with 81
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l74,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
l82: # 
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_cycle
_cycle:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r2

						//..//firmware/main.c, line 296
						// (bitwise/arithmetic) 	//ops: 5, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r2
						// (save result) // isreg

						//..//firmware/main.c, line 296
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 297
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//..//firmware/main.c, line 297
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	9
	addt	r2
						// (save temp)isreg
	mr	r3
						//save_temp done

						//..//firmware/main.c, line 297
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r3
						// (save temp)isreg
	mr	r3
						//save_temp done

						//..//firmware/main.c, line 297
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r3 - only match against tmp
	//mt
	stdec	r6
						// freereg r3

						//..//firmware/main.c, line 297
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 297
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//..//firmware/main.c, line 297
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	10
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 297
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 297
						//call
						//pcreltotemp
	.lipcrel	_statusword_cycle // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 298
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 298
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 299
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 299
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1
						// freereg r4
	.liconst	-8
	sub	r6
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.d
	.weak	_toggle
_toggle:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 305
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 305
						//call
						//pcreltotemp
	.lipcrel	_cycle // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 306
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 306
						//call
						//pcreltotemp
	.lipcrel	_cycle // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.e
l2:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	6
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l90
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l91
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l101
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l92
		add	r7
						//pcreltotemp
	.lipcrel	l103
	add	r7
						// freereg r1
l90: # 

						//..//firmware/main.c, line 319
		// Offsets 31, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	31
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 320
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 320
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 322
						//pcreltotemp
	.lipcrel	l87
	add	r7
l91: # 
						// allocreg r1

						//..//firmware/main.c, line 331
		// Offsets 7, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 331
						//call
						//pcreltotemp
	.lipcrel	l3 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 333
						//pcreltotemp
	.lipcrel	l87
	add	r7
l92: # 
						// allocreg r1

						//..//firmware/main.c, line 336
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt

						//..//firmware/main.c, line 336
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7

						//..//firmware/main.c, line 337
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 338
						//pcreltotemp
	.lipcrel	l103
	add	r7
l95: # 

						//..//firmware/main.c, line 340
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_moremenu
						//extern deref
						//sizemod based on type 0x3
	ldt

						//..//firmware/main.c, line 340
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7

						//..//firmware/main.c, line 341
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 342
						//pcreltotemp
	.lipcrel	l103
	add	r7
						// freereg r1
l98: # 
						// allocreg r1

						//..//firmware/main.c, line 344
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	6
	sub	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//..//firmware/main.c, line 345
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r1
						// freereg r1

						//..//firmware/main.c, line 345
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 346
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 347
						//pcreltotemp
	.lipcrel	l103
	add	r7
l101: # 

						//..//firmware/main.c, line 349
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_moremenu
						//extern deref
						//sizemod based on type 0x3
	ldt

						//..//firmware/main.c, line 349
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7

						//..//firmware/main.c, line 350
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menuindex, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l103: # 
						// allocreg r1

						//..//firmware/main.c, line 353
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 353
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 354
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 354
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l87: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.f
	.global	_dipswitches
_dipswitches:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 360
		// Offsets 29, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 40
						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	29
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 361
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 361
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 362
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 362
						//call
						//pcreltotemp
	.lipcrel	_Menu_Draw // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.10
l107:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 369
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	12
	ldidx	r6
	stdec	r6
						// allocreg r3

						//..//firmware/main.c, line 369
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						// (obj to r3) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	11
	mul	r3
						// (save result) // isreg

						//..//firmware/main.c, line 369
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	add	r3
						// (save result) // isreg
						// allocreg r2

						//..//firmware/main.c, line 369
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 369
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 369
						//call
						//pcreltotemp
	.lipcrel	_strcpy // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//..//firmware/main.c, line 370
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l69,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r3
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 371
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 371
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 372
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 372
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 373
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r3

						//..//firmware/main.c, line 373
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// freereg r4
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.11
	.global	_parseconf
_parseconf:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-48
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 381
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 383
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 4, 0 with 8, 0
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	68
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 384
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 12, 0 with 4, 0
						//Fuzzy match found, offset: 8 (varadr: 1)
	.liconst	8
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 385
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 16, 0 with 12, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 386
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_moremenu
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//..//firmware/main.c, line 388
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	30
	cmp	r0

						//..//firmware/main.c, line 388
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l113
		add	r7
						// freereg r1

						//..//firmware/main.c, line 391
						//call
						//pcreltotemp
	.lipcrel	_listroms // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 391
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 391
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1

						//..//firmware/main.c, line 395
						//pcreltotemp
	.lipcrel	l119
	add	r7
l113: # 
						// allocreg r1

						//..//firmware/main.c, line 395
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	31
	cmp	r0

						//..//firmware/main.c, line 395
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7
						// freereg r1
						// freereg r2
						// freereg r3
						// allocreg r1

						//..//firmware/main.c, line 397
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	64
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 397
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r1
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 397
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l117,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r1
					// Copying 4 words and 0 bytes to 
					// Copying 4 words to 
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r1
	mr	r2
.cpywordloop0:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpywordloop0
		add	r7
						// allocreg r2

						//..//firmware/main.c, line 398
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l69,0
						// static pe is varadr
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 398
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 22
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 82
	.liconst	64
	ldidx	r6
	exg	r2
						//sizemod based on type 0x4
	st	r2
	exg	r2
						// allocreg r1

						//..//firmware/main.c, line 399
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	64
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 399
						// Z disposable
		// Offsets 31, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	31
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 400
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	64
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 400
						// Z disposable
		// Offsets 83, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 402
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	64
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	add	r1
						// (save result) // isreg
						// allocreg r3

						//..//firmware/main.c, line 402
						// (bitwise/arithmetic) 	//ops: 2, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done

						//..//firmware/main.c, line 402
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 8a
						// matchobj comparing flags 6a with 8a
						// deref 
	ld	r3
						// (save temp)store type a
	st	r0
						//save_temp done
						// freereg r3

						//..//firmware/main.c, line 402
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2a
						// (a/p assign)
	mt	r1
	stdec	r6
	mt	r2
	stdec	r6
					// (char with size!=1 -> array of unknown type)
						// (obj to r0) flags 2 type b
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l118,0
	mr	r0
						// (prepobj r1)
 						// (prepobj r1)
 						// matchobj comparing flags aa with 2
						// matchobj comparing flags aa with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
	ldidx	r6
	mr	r1
					// Copying 4 words and 0 bytes to 
					// Copying 4 words to 
						// matchobj comparing flags 1 with 2
	.liconst	16
	addt	r1
	mr	r2
.cpywordloop1:
	ldinc	r0
	stinc	r1
	mt	r1
	cmp	r2
	cond	NEQ
		.lipcrel	.cpywordloop1
		add	r7
	ldinc	r6
	mr	r2
	ldinc	r6
	mr	r1

						//..//firmware/main.c, line 403
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 358
		// Real offset of type is 358, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 4
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//..//firmware/main.c, line 404
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	9
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 404
						// Z disposable
		// Offsets 31, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 132
		// Real offset of type is 132, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	31
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 405
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 405
						// Z disposable
		// Offsets 84, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	84
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 406
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 419
						//pcreltotemp
	.lipcrel	l119
	add	r7
l116: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 420
						//call
						//pcreltotemp
	.lipcrel	_configstring_begin // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 422
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 423
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 423
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 427
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	59
	cmp	r4

						//..//firmware/main.c, line 427
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l121
		add	r7

						//..//firmware/main.c, line 431
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6

						//..//firmware/main.c, line 431
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l123
		add	r7
						// freereg r1
						// freereg r2

						//..//firmware/main.c, line 433
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	stdec	r6

						//..//firmware/main.c, line 433
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//..//firmware/main.c, line 433
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//..//firmware/main.c, line 433
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l106,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 433
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 433
						//call
						//pcreltotemp
	.lipcrel	l107 // Static 
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1
						// allocreg r2

						//..//firmware/main.c, line 438
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type a
						// var, auto|reg
	.liconst	80
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 438
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 6a type a
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	7
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 438
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 439
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	stdec	r6

						//..//firmware/main.c, line 439
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	24
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 439
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 6a type a
						// matchobj comparing flags 6a with 1
						// deref 
	ld	r2
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	add	r1
						// (save result) // isreg
						// freereg r2

						//..//firmware/main.c, line 439
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 16 bytes
	.liconst	24
	add	r6
						// freereg r1

						//..//firmware/main.c, line 443
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	68
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//..//firmware/main.c, line 443
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l125
		add	r7
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 444
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 446
						//pcreltotemp
	.lipcrel	l127
	add	r7
l125: # 

						//..//firmware/main.c, line 446
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	68
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 450
						//pcreltotemp
	.lipcrel	l127
	add	r7
l123: # 

						//..//firmware/main.c, line 450
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l127: # 

						//..//firmware/main.c, line 451
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done
l121: # 

						//..//firmware/main.c, line 453
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//..//firmware/main.c, line 453
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7

						//..//firmware/main.c, line 453
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	72
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 453
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7
l202: # 

						//..//firmware/main.c, line 456
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 457
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 457
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 477
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	80
	cmp	r4

						//..//firmware/main.c, line 477
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7
						// freereg r1
l203: # 

						//..//firmware/main.c, line 479
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done

						//..//firmware/main.c, line 480
						//call
						//pcreltotemp
	.lipcrel	_configstring_getdigit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 480
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 480
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	28
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1

						//..//firmware/main.c, line 482
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 482
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 483
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//..//firmware/main.c, line 483
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l136
		add	r7
						// freereg r2
						// allocreg r1

						//..//firmware/main.c, line 485
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 485
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	64
	ldidx	r6
	add	r1
						// (save result) // isreg
						// allocreg r2

						//..//firmware/main.c, line 485
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 485
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r2
						// allocreg r2

						//..//firmware/main.c, line 486
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 486
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 487
						// Z disposable
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l3,0
						// static pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 488
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 488
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 489
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//..//firmware/main.c, line 489
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 489
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	59
	cmp	r4

						//..//firmware/main.c, line 489
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7
l204: # 

						//..//firmware/main.c, line 491
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 1
	stbinc	r5
						//save_temp done

						//..//firmware/main.c, line 492
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 492
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 489
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//..//firmware/main.c, line 489
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l210
		add	r7

						//..//firmware/main.c, line 489
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	59
	cmp	r4

						//..//firmware/main.c, line 489
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7
l210: # 
						// freereg r1

						//..//firmware/main.c, line 494
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	32
						// (save temp)store type 1
	stbinc	r5
						//save_temp done

						//..//firmware/main.c, line 495
		// Offsets 129, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	129
						// (save temp)store type 1
	stbinc	r5
						//save_temp done

						//..//firmware/main.c, line 496
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 498
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 498
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	cmp	r1
						// freereg r1

						//..//firmware/main.c, line 498
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 500
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 500
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l145
		add	r7

						//..//firmware/main.c, line 501
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 503
						//pcreltotemp
	.lipcrel	l146
	add	r7
l145: # 

						//..//firmware/main.c, line 503
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l146: # 

						//..//firmware/main.c, line 505
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 505
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l136: # 

						//..//firmware/main.c, line 507
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r4

						//..//firmware/main.c, line 507
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7

						//..//firmware/main.c, line 508
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l148: # 

						//..//firmware/main.c, line 477
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	80
	cmp	r4

						//..//firmware/main.c, line 477
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l203
		add	r7
						// freereg r1
l209: # 
						// allocreg r1

						//..//firmware/main.c, line 512
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	28
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 512
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 512
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l150
		add	r7

						//..//firmware/main.c, line 514
		// Offsets 48, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	48
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 515
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 36, 0 with 32, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 517
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 40, 0 with 36, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 519
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	59
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	11
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l153
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	9
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l168
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	4
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l154
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l168
		add	r7
						//pcreltotemp
	.lipcrel	l188
	add	r7
l153: # 

						//..//firmware/main.c, line 539
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
l154: # 

						//..//firmware/main.c, line 541
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 542
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 542
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 543
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//..//firmware/main.c, line 543
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l159
		add	r7

						//..//firmware/main.c, line 546
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6

						//..//firmware/main.c, line 546
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l158
		add	r7

						//..//firmware/main.c, line 547
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r4

						//..//firmware/main.c, line 549
						//pcreltotemp
	.lipcrel	l159
	add	r7
l158: # 

						//..//firmware/main.c, line 549
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	48
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l159: # 

						//..//firmware/main.c, line 551
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	44
	cmp	r4

						//..//firmware/main.c, line 551
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l211
		add	r7
l205: # 

						//..//firmware/main.c, line 552
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 552
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 551
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r4

						//..//firmware/main.c, line 551
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
l211: # 
						// freereg r1

						//..//firmware/main.c, line 555
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 555
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 555
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//..//firmware/main.c, line 555
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//..//firmware/main.c, line 555
						// (a/p push)
						// a: pushed 12, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l106,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 555
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 124, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 555
						//call
						//pcreltotemp
	.lipcrel	l107 // Static 
	add	r7
						// Deferred popping of 16 bytes (16 in total)
						// freereg r1

						//..//firmware/main.c, line 556
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//..//firmware/main.c, line 556
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 556
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 556
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	88
	ldidx	r6
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 556
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r1
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 556
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 556
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 16 bytes
	.liconst	24
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 557
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//..//firmware/main.c, line 557
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7

						//..//firmware/main.c, line 559
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	stdec	r6

						//..//firmware/main.c, line 559
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	30
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 559
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	8
	ldidx	r6
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 559
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 559
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 559
						// Q1 disposable
						// (minus)
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mr	r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	0
	exg r0
	sub r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//..//firmware/main.c, line 560
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
	sgn
	cmp	r0

						//..//firmware/main.c, line 560
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 560
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	29
	sgn
	cmp	r0

						//..//firmware/main.c, line 560
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 562
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	mr	r1
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 22
						// var, auto|reg
						// matchobj comparing flags 1 with 22
	.liconst	32
						//sizemod based on type 0xa
	ldidx	r6
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 562
						// Z disposable
		// Offsets 32, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 176
		// Real offset of type is 176, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	32
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 563
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 563
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 563
						// Z disposable
		// Offsets 129, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	129
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 564
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 564
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 22 type a
						// matchobj comparing flags 22 with 1
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0xa
	ldt
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 564
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 216
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l166: # 
						// allocreg r1

						//..//firmware/main.c, line 567
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//..//firmware/main.c, line 568
						//pcreltotemp
	.lipcrel	l151
	add	r7
l168: # 

						//..//firmware/main.c, line 573
						//call
						//pcreltotemp
	.lipcrel	_configstring_getdigit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 573
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 574
						//call
						//pcreltotemp
	.lipcrel	_configstring_getdigit // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 574
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	40
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 576
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	44
	cmp	r0

						//..//firmware/main.c, line 576
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l171
		add	r7

						//..//firmware/main.c, line 577
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 36
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 579
						//pcreltotemp
	.lipcrel	l172
	add	r7
l171: # 

						//..//firmware/main.c, line 579
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// freereg r2
l172: # 
						// allocreg r1

						//..//firmware/main.c, line 581
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 581
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type a
						// var, auto|reg
	.liconst	64
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching
						// freereg r1
						// allocreg r2

						//..//firmware/main.c, line 581
						// (bitwise/arithmetic) 	//ops: 7, 0, 3
						// (obj to r2) flags 62 type a
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	mr	r2
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	8
	add	r2
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 581
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	10
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 581
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 582
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 582
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
	sub	r1
						// (save result) // isreg

						//..//firmware/main.c, line 582
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 582
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	sub	r1
						// (save result) // isreg

						//..//firmware/main.c, line 582
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 586
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	32
						//sizemod based on type 0x103
	ldidx	r6
	shr	r1
						// (save result) // isreg

						//..//firmware/main.c, line 586
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 2
						// deref 
	byt
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 586
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 588
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 588
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 1
						// matchobj comparing flags 6a with 2
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 589
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 589
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l175
		add	r7
						// allocreg r2
						// allocreg r1

						//..//firmware/main.c, line 589
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 589
						//pcreltotemp
	.lipcrel	l176
	add	r7
l175: # 

						//..//firmware/main.c, line 589
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l176: # 

						//..//firmware/main.c, line 589
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6

						//..//firmware/main.c, line 589
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
	.liconst	32
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 589
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 242
		// Real offset of type is 250, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 589
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//..//firmware/main.c, line 589
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//..//firmware/main.c, line 589
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r4

						//..//firmware/main.c, line 589
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l212
		add	r7
						// freereg r2
						// freereg r3

						//..//firmware/main.c, line 591
						// (bitwise/arithmetic) 	//ops: 6, 5, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	add	r5
						// (save result) // isreg
						// allocreg r1

						//..//firmware/main.c, line 592
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	32
	mr	r1
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	sub	r1
						// (save result) // isreg

						//..//firmware/main.c, line 592
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size
						// allocreg r3

						//..//firmware/main.c, line 592
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 274
		// Real offset of type is 274, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 592
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 278
		// Real offset of type is 278, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l178,0
						// static pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 592
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 282
		// Real offset of type is 282, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//..//firmware/main.c, line 592
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//..//firmware/main.c, line 593
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	2
	add	r5
						// (save result) // isreg
l206: # 
						// allocreg r3
						// allocreg r2

						//..//firmware/main.c, line 596
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	40
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//..//firmware/main.c, line 597
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	44
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 597
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
	cmp	r1
						// freereg r1

						//..//firmware/main.c, line 597
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l182
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 597
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 597
						//pcreltotemp
	.lipcrel	l183
	add	r7
l182: # 

						//..//firmware/main.c, line 597
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	24
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l183: # 

						//..//firmware/main.c, line 597
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 597
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
	.liconst	2
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 597
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	32
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 597
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	stdec	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 597
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 314
		// Real offset of type is 322, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 597
						//call
						//pcreltotemp
	.lipcrel	_configstring_copytocomma // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 597
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//..//firmware/main.c, line 597
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l206
		add	r7
l212: # 
						// allocreg r1

						//..//firmware/main.c, line 600
						// (test)
						// (obj to tmp) flags 2 type 103
						// var, auto|reg
	.liconst	40
						//sizemod based on type 0x103
	ldidx	r6

						//..//firmware/main.c, line 600
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l186
		add	r7
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 602
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	9
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 602
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	40
						//sizemod based on type 0x103
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 603
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cycle
						// extern pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//..//firmware/main.c, line 606
						//pcreltotemp
	.lipcrel	l187
	add	r7
l186: # 
						// allocreg r1

						//..//firmware/main.c, line 607
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	9
	add	r1
						// (save result) // isreg

						//..//firmware/main.c, line 607
						// Z disposable
		// Offsets 2, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 262
		// Real offset of type is 262, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 608
						//FIXME convert
						// (convert - reducing type a to 4
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_toggle
						// extern pe is varadr
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
l187: # 
						// allocreg r1

						//..//firmware/main.c, line 610
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//..//firmware/main.c, line 611
						//pcreltotemp
	.lipcrel	l151
	add	r7
l188: # 

						//..//firmware/main.c, line 613
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 613
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l151: # 

						//..//firmware/main.c, line 616
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//..//firmware/main.c, line 616
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7

						//..//firmware/main.c, line 618
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 62
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 618
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7

						//..//firmware/main.c, line 619
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 621
						//pcreltotemp
	.lipcrel	l194
	add	r7
l192: # 

						//..//firmware/main.c, line 621
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 625
						//pcreltotemp
	.lipcrel	l194
	add	r7
l150: # 

						//..//firmware/main.c, line 626
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	70
	cmp	r4

						//..//firmware/main.c, line 626
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l196
		add	r7

						//..//firmware/main.c, line 627
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l196: # 

						//..//firmware/main.c, line 628
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 628
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l194: # 

						//..//firmware/main.c, line 630
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	16
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 453
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//..//firmware/main.c, line 453
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7

						//..//firmware/main.c, line 453
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 2
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	72
	ldidx	r6
	cmp	r0

						//..//firmware/main.c, line 453
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l202
		add	r7
l208: # 

						//..//firmware/main.c, line 632
						//call
						//pcreltotemp
	.lipcrel	_configstring_end // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l119: # 

						//..//firmware/main.c, line 635
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	cmp	r0

						//..//firmware/main.c, line 635
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// freereg r1
						// freereg r2
l207: # 

						//..//firmware/main.c, line 636
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_moremenu
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 637
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	11
	mul	r1
						// (save result) // isreg

						//..//firmware/main.c, line 637
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	64
	ldidx	r6
	add	r1
						// (save result) // isreg
						// allocreg r2

						//..//firmware/main.c, line 637
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// matchobj comparing flags 4a with 4a
						// Obsoleting t1

						//..//firmware/main.c, line 637
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type a
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 637
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	0
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//..//firmware/main.c, line 638
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 458
		// Real offset of type is 458, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 4
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 4
	st	r1
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 635
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//..//firmware/main.c, line 635
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	7
	cmp	r0

						//..//firmware/main.c, line 635
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l207
		add	r7
l213: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-48
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	.section	.rodata.12
l117:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	32
	.byte	83
	.byte	101
	.byte	116
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	115
	.byte	32
	.byte	-127
	.byte	0
	.section	.rodata.13
l118:
	.byte	83
	.byte	97
	.byte	118
	.byte	101
	.byte	32
	.byte	83
	.byte	101
	.byte	116
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	115
	.byte	32
	.byte	-127
	.byte	0
	.section	.rodata.14
l178:
	.byte	58
	.byte	32
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.15
	.global	_buildmenu
_buildmenu:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 644
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//..//firmware/main.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l217
		add	r7

						//..//firmware/main.c, line 645
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l217: # 

						//..//firmware/main.c, line 646
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	7
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 646
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_menuindex
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/main.c, line 646
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//..//firmware/main.c, line 646
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 646
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 646
						//call
						//pcreltotemp
	.lipcrel	_parseconf // extern
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 647
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_menupage
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 647
						//call
						//pcreltotemp
	.lipcrel	l77 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 648
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//..//firmware/main.c, line 648
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 649
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_menu
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 649
						//call
						//pcreltotemp
	.lipcrel	_Menu_Set // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l219: # 
						// allocreg r1
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.16
	.weak	_autoboot
_autoboot:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3

						//..//firmware/main.c, line 668
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 670
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l223,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 670
						//call
						//pcreltotemp
	.lipcrel	_loadsettings // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 672
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 674
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 674
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//..//firmware/main.c, line 674
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/main.c, line 674
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l225
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 675
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l226,0
						// static pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
l225: # 

						//..//firmware/main.c, line 679
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	.section	.rodata.17
l223:
	.byte	65
	.byte	77
	.byte	83
	.byte	84
	.byte	82
	.byte	65
	.byte	68
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	67
	.byte	70
	.byte	71
	.byte	0
	.section	.rodata.18
l226:
	.byte	82
	.byte	79
	.byte	77
	.byte	32
	.byte	108
	.byte	111
	.byte	97
	.byte	100
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.19
	.weak	_get_rtc
_get_rtc:
	stdec	r6
	mt	r3
	stdec	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r3
		// Offsets 255, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 403
						// const
	.liconst	255
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/main.c, line 687
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-44
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 689
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 21 type 503
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
	.liconst	-4
						//sizemod based on type 0x503
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
						// const
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 21
	.liconst	1
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x6a
	mt	r0
	st	r6

						//..//firmware/main.c, line 689
						// (test)
						// (obj to tmp) flags 6a type 503
						// matchobj comparing flags 6a with 6a
						// deref 
	ld	r6

						//..//firmware/main.c, line 689
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l230
		add	r7

						//..//firmware/main.c, line 692
		// Offsets 65, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 6a
						// matchobj comparing flags a1 with 6a
						// deref
						// const to r0
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	65
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 693
		// Offsets 146, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	146
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 694
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 1
						// matchobj comparing flags 240 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 694
		// Offsets 1, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 1
						// extern (offset 1)
	.liabs	_sector_buffer, 1
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 694
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 695
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 695
						// Z disposable
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 696
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 696
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82
						//extern: comparing 2 with 1
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 697
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 697
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 698
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done
						// allocreg r1

						//..//firmware/main.c, line 698
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 699
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 699
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 700
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 240 type 403
						// matchobj comparing flags 240 with 62
						// matchobj comparing flags 240 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/main.c, line 700
						//FIXME convert
						// (convert - reducing type 403 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 240
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 62 type 403
						// matchobj comparing flags 62 with 240
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 701
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 6)
	.liabs	_sector_buffer, 10
						// extern pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//..//firmware/main.c, line 702
		// Offsets 64, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 82
						// matchobj comparing flags a1 with 82
						// deref
						// const to r0
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	64
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 705
						//pcreltotemp
	.lipcrel	l231
	add	r7
l230: # 
						// allocreg r1

						//..//firmware/main.c, line 706
		// Offsets 1, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 1)
	.liabs	_sector_buffer, 1
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 706
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	-1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 707
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//..//firmware/main.c, line 708
		// Offsets 0, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 0
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 2 with 1
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 709
		// Offsets 25, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 0
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	25
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 710
		// Offsets 1, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 711
		// Offsets 34, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 0
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	34
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 712
		// Offsets 3, 6
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 6, 0
		// Real offset of type is 6, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l231: # 

						//..//firmware/main.c, line 714
		// Offsets 0, 7
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 7, 0
		// Real offset of type is 7, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 7)
	.liabs	_sector_buffer, 7
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//..//firmware/main.c, line 715
						//setreturn
						// (obj to r0) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 8
						//Fuzzy match found, offset: -8 (varadr: 0)
	.liconst	-8
	add	r0

						// required value found in r0
						// freereg r2
						// freereg r3
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1a
	.weak	_init
_init:
	stdec	r6
						// allocreg r2

						//..//firmware/main.c, line 724
						//call
						//pcreltotemp
	.lipcrel	_PS2Init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 726
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 726
						//call
						//pcreltotemp
	.lipcrel	_buildmenu // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//..//firmware/main.c, line 731
						//call
						//pcreltotemp
	.lipcrel	_sd_init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 731
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/main.c, line 731
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7

						//..//firmware/main.c, line 731
						//call
						//pcreltotemp
	.lipcrel	_FindDrive // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 731
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/main.c, line 731
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7
						// allocreg r1

						//..//firmware/main.c, line 731
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//..//firmware/main.c, line 731
						//pcreltotemp
	.lipcrel	l239
	add	r7
l238: # 

						//..//firmware/main.c, line 731
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l239: # 

						//..//firmware/main.c, line 731
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//..//firmware/main.c, line 731
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l246
		add	r7
						// freereg r1

						//..//firmware/main.c, line 733
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 733
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 36
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l240,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 733
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l245: # 
						// allocreg r1

						//..//firmware/main.c, line 735
						//pcreltotemp
	.lipcrel	l245
	add	r7
l246: # 
						// freereg r1

						//..//firmware/main.c, line 741
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//..//firmware/main.c, line 741
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l244,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/main.c, line 741
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//..//firmware/main.c, line 742
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//..//firmware/main.c, line 742
						//call
						//pcreltotemp
	.lipcrel	_autoboot // extern
	add	r7
						// Nested call - popping 0 bytes
						// allocreg r1

						//..//firmware/main.c, line 742
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/main.c, line 742
						//call
						//pcreltotemp
	.lipcrel	_Menu_Message // extern
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1

						//..//firmware/main.c, line 745
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r2
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r7

	.section	.rodata.1b
l240:
	.byte	83
	.byte	68
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	46
	.byte	0
	.section	.rodata.1c
l244:
	.byte	66
	.byte	111
	.byte	111
	.byte	116
	.byte	105
	.byte	110
	.byte	103
	.byte	46
	.byte	46
	.byte	46
	.byte	0
	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1d
	.weak	_mainloop
_mainloop:
	stdec	r6
l252: # 

						//..//firmware/main.c, line 762
						//call
						//pcreltotemp
	.lipcrel	_Menu_Run // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 773
						//call
						//pcreltotemp
	.lipcrel	_diskimg_poll // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/main.c, line 753
						//pcreltotemp
	.lipcrel	l252
	add	r7
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1e
	.weak	_main
_main:
	stdec	r6

						//..//firmware/main.c, line 801
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_menuindex
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 802
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_menupage
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/main.c, line 803
						//call
						//pcreltotemp
	.lipcrel	_init // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//..//firmware/main.c, line 804
						//call
						//pcreltotemp
	.lipcrel	_mainloop // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//..//firmware/main.c, line 805
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
	ldinc	r6
	mr	r7

	.section	.data.1f
	.global	_std_label_exit
_std_label_exit:
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	69
	.byte	120
	.byte	105
	.byte	116
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	129
	.byte	0
	.section	.data.20
	.global	_std_label_back
_std_label_back:
	.byte	128
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	66
	.byte	97
	.byte	99
	.byte	107
	.byte	0
	.section	.data.21
	.global	_menu
_menu:
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,30
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,60
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,90
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,120
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,150
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
						// Declaring from tree
						// static
	.ref	l4,180
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l3
	.int	0
	.byte	0
	.byte	0
	.byte	0
						// Declaring from tree
						// static
	.ref	l2
	.int	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.22
	.weak	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l220
	.section	.bss.23
	.global	_menupage
	.comm	_menupage,4
	.section	.bss.24
	.global	_menuindex
	.comm	_menuindex,4
	.section	.bss.25
	.global	_moremenu
	.comm	_moremenu,4
	.section	.bss.26
	.global	_romindex
	.comm	_romindex,4
	.section	.bss.27
	.global	_filename
	.comm	_filename,12
	.section	.rodata.28
l220:
	.byte	65
	.byte	77
	.byte	83
	.byte	84
	.byte	82
	.byte	65
	.byte	68
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	0
	.section	.data.29
l106:
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	32
	.byte	42
	.byte	46
	.byte	0
	.section	.bss.2a
	.lcomm	l1,1
	.section	.bss.2b
	.lcomm	l4,210
