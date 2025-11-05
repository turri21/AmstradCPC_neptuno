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
	.global	_autoboot
_autoboot:
	stdec	r6
						// allocreg r1

						//..//firmware/overrides.c, line 8
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//..//firmware/overrides.c, line 8
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//..//firmware/overrides.c, line 9
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
	ldinc	r6
	mr	r7

	.section	.data.1
	.global	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l1
	.section	.rodata.2
l1:
	.byte	65
	.byte	77
	.byte	83
	.byte	84
	.byte	82
	.byte	65
	.byte	68
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	0
