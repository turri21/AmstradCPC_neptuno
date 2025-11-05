	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.weak	_ToggleScandoubler
_ToggleScandoubler:
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 20
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_scandouble
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	xor	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_scandouble, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//..//firmware/settings.c, line 21
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

						//..//firmware/settings.c, line 22
		// Offsets 545, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	545
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/settings.c, line 23
		// Offsets 1, -44
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/settings.c, line 24
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
	shl	r1
						// (save result) // isreg

						//..//firmware/settings.c, line 24
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

						//..//firmware/settings.c, line 25
		// Offsets 32, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done
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
	.section	.text.1
	.global	_AutoScandoubler
_AutoScandoubler:
	stdec	r6

						//..//firmware/settings.c, line 30
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l7,0
						// static pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 30
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 30
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 30
						// (test)
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 30
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r1

						//..//firmware/settings.c, line 31
						//call
						//pcreltotemp
	.lipcrel	_ToggleScandoubler // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
l6: # 
						// freereg r1
	ldinc	r6
	mr	r7

	.section	.rodata.2
l7:
	.byte	49
	.byte	53
	.byte	75
	.byte	72
	.byte	90
	.byte	32
	.byte	32
	.byte	32
	.byte	67
	.byte	70
	.byte	71
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.weak	_configtocore
_configtocore:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 39
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 39
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_statusword
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//..//firmware/settings.c, line 40
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 103
						// matchobj comparing flags 6a with 62
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	1
	xor	r1
						// (save result) // isreg

						//..//firmware/settings.c, line 40
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_scandouble, 4
						// extern pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1

						//..//firmware/settings.c, line 41
						//call
						//pcreltotemp
	.lipcrel	_ToggleScandoubler // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//..//firmware/settings.c, line 42
						//call
						//pcreltotemp
	.lipcrel	_sendstatus // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//..//firmware/settings.c, line 43
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0
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
	.section	.text.4
	.weak	_coretoconfig
_coretoconfig:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 49
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 49
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r2
						//save_temp done

						//..//firmware/settings.c, line 50
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_scandouble
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	st	r1
						//save_temp done
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
	.section	.text.5
	.weak	_loadsettings
_loadsettings:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//..//firmware/settings.c, line 55
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 55
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 55
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 55
						// (test)
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 55
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7

						//..//firmware/settings.c, line 57
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 57
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 57
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 57
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 57
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7
						// allocreg r1

						//..//firmware/settings.c, line 59
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 59
						//call
						//pcreltotemp
	.lipcrel	_configtocore // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 59
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r0 - only match against tmp
						// freereg r1

						//..//firmware/settings.c, line 60
						//pcreltotemp
	.lipcrel	l12
	add	r7
l17: # 
						// allocreg r1

						//..//firmware/settings.c, line 62
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l12: # 
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
	.section	.text.6
	.weak	_savesettings
_savesettings:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//..//firmware/settings.c, line 67
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 67
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 67
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 67
						// (test)
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 67
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// allocreg r1

						//..//firmware/settings.c, line 69
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 69
						//call
						//pcreltotemp
	.lipcrel	_coretoconfig // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//..//firmware/settings.c, line 70
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 70
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 70
						//call
						//pcreltotemp
	.lipcrel	_FileWriteSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 70
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 70
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// allocreg r1

						//..//firmware/settings.c, line 71
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
	mr	r0

						//..//firmware/settings.c, line 72
						//pcreltotemp
	.lipcrel	l18
	add	r7
l23: # 

						//..//firmware/settings.c, line 73
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l18: # 
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.weak	_settings_loadblob
_settings_loadblob:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5

						//..//firmware/settings.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_CurrentDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//..//firmware/settings.c, line 79
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5
						// allocreg r1

						//..//firmware/settings.c, line 80
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/settings.c, line 80
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 80
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//..//firmware/settings.c, line 80
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l27
		add	r7
						// allocreg r1

						//..//firmware/settings.c, line 81
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 3
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//..//firmware/settings.c, line 81
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectoryByCluster // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l27: # 

						//..//firmware/settings.c, line 83
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	16
	ldidx	r6
	stdec	r6
						// allocreg r1

						//..//firmware/settings.c, line 83
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 83
						//call
						//pcreltotemp
	.lipcrel	_loadimage // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r3

						//..//firmware/settings.c, line 83
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
						// allocreg r1

						//..//firmware/settings.c, line 84
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 84
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectoryByCluster // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//..//firmware/settings.c, line 85
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
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
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.weak	_settings_storeblob
_settings_storeblob:
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
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r3

						//..//firmware/settings.c, line 90
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//..//firmware/settings.c, line 90
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	12
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//..//firmware/settings.c, line 90
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 90
						//call
						//pcreltotemp
	.lipcrel	___strncpy // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1
						// allocreg r1

						//..//firmware/settings.c, line 91
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	15
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/settings.c, line 91
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
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

						//..//firmware/settings.c, line 92
						//call
						//pcreltotemp
	.lipcrel	_CurrentDirectory // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// allocreg r1

						//..//firmware/settings.c, line 92
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//..//firmware/settings.c, line 92
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r1
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

	.section	.data.9
	.global	_scandouble
_scandouble:
	.int	0
