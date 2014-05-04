;
;	telephone_put.m
;
;	Action code for the hang-up-or-drop-at telephone operation.
;	This is the 'put' behavior for telephone objects.
;
;	This file should be assembled as position independent code.
;
;	Chip Morningstar
;	Lucasfilm Ltd.
;	6-May-1986
;
	include	"action_head.i"

	actionStart

	jsr	v_adjacency_check
	if (!carry) {
		getProp pointed, TELEPHONE_state
		cmp #PHONE_ACTIVE
		if (!equal) {
			cmp #PHONE_LINE_BUSY
			if (!equal) {
				cmp #PHONE_LINE_RING
				if (!equal) {
					cmp #PHONE_TALKING
					if (!equal) {
						chainTo v_go_to_and_drop_at
					}
				}
			}
		}
	}
	chainTo v_hangup
	actionEnd
