; Change end credits sequence to display IGT in Minutes:Seconds instead
; of Hours:minutes

org $8BF3F7
	LDA $09DC
org $8BF3D5
	LDA $09DE

