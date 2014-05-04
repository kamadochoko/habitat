;
;	telephone_get.m
;
;	Action code for the answer-or-pickup telephone operation.
;	This is the 'get' behavior for telephone objects.
;
;	This file should be assembled as position independent code.
;
;	Chip Morningstar
;	Lucasfilm Ltd.
;	6-May-1986
;
	include	"action_head.i"

	actionStart

	doMyAction ACTION_GO			; My go walks to phone
	waitWhile animation_wait_bit		; Wait till we get there
	lda #PHONE_ACTIVE
	chainTo v_answer_or_unhook

	actionEnd
