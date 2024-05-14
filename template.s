	.global	start
	.type	start, %function
start:
	movz	x0, #69
	mvn	    x1, xzr
	stur	x0, [x1]
	ret

