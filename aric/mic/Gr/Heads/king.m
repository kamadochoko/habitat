;---------------------------------------
;
;	animation cel data
;

king_data::
	byte	swing	+ 2
	byte	0b01000000
	byte	king_start_end - king_data
	byte	no_cont

	byte	244+right,28+left,255

	byte	0b10000000
	byte	0b01000000
	byte	0b01100000

	word	king_data_a - king_data
	word	king_data_b - king_data
	word	king_data_c - king_data

king_start_end:
	byte	0,0,1,1,0,0,2,2


king_data_a:
	byte	0x04, 0x22, 0x00, 0x0c, 0x00, 0x00
	byte	run,0x80+7
	byte	run,12,2
	byte	10
	byte	11
	byte	10
	byte	11
	byte	11
	byte	10
	byte	2
	byte	2
	byte	run,0x80+8
	byte	47
	byte	42
	byte	47
	byte	47
	byte	175
	byte	run,4,170
	byte	run,4,171
	byte	run,5,170
	byte	255
	byte	255
	byte	235
	byte	235
	byte	150
	byte	149
	byte	85
	byte	85
	byte	149
	byte	149
	byte	42
	byte	2
	byte	run,0x80+1
	byte	2
	byte	run,0x80+1
	byte	40
	byte	184
	byte	248
	byte	250
	byte	239
	byte	239
	byte	run,3,191
	byte	run,4,255
	byte	239
	byte	run,3,175
	byte	171
	byte	170
	byte	255
	byte	191
	byte	186
	byte	250
	byte	229
	byte	run,5,149
	byte	170
	byte	224
	byte	128
	byte	160
	byte	128
	byte	run,0x80+3
	byte	128
	byte	run,6,224
	byte	232
	byte	run,4,248
	byte	run,3,224
	byte	160
	byte	224
	byte	248
	byte	232
	byte	248
	byte	184
	byte	168
	byte	96
	byte	96
	byte	128
	byte	128
	byte	run,0x80+5




king_data_b:
	byte	0x04, 0x23, 0xfe, 0x0c, 0x00, 0x00
	byte	run,0x80+19
	byte	run,6,2
	byte	run,0x80+10
	byte	3
	byte	run,4,2
	byte	11
	byte	11
	byte	47
	byte	47
	byte	175
	byte	run,4,191
	byte	run,4,175
	byte	171
	byte	234
	byte	255
	byte	191
	byte	186
	byte	250
	byte	229
	byte	run,3,149
	byte	37
	byte	37
	byte	10
	byte	run,0x80+4
	byte	255
	byte	254
	byte	170
	byte	170
	byte	254
	byte	run,14,255
	byte	170
	byte	255
	byte	239
	byte	230
	byte	254
	byte	185
	byte	run,5,101
	byte	170
	byte	184
	byte	32
	byte	168
	byte	32
	byte	run,0x80+5
	byte	128
	byte	128
	byte	224
	byte	224
	byte	232
	byte	run,4,248
	byte	run,4,232
	byte	168
	byte	174
	byte	254
	byte	250
	byte	186
	byte	190
	byte	110
	byte	run,3,88
	byte	96
	byte	96
	byte	128
	byte	run,0x80+4




king_data_c:
	byte	0x03, 0x0f, 0xff, 0xfc, 0x00, 0x00
	byte	run,3,2
	byte	run,12,42
	byte	run,15,170
	byte	run,0x80+3
	byte	run,12,160




