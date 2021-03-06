(define (problem aa-finishes-6)
 (:domain allen-algebra)
 (:objects
	i1 i2 i3 i4 i5 i6 - interval
 )
 (:init
	(not-started i1)
	(not-ended i1)
	(not-started i2)
	(not-ended i2)
	(not-started i3)
	(not-ended i3)
	(not-started i4)
	(not-ended i4)
	(not-started i5)
	(not-ended i5)
	(not-started i6)
	(not-ended i6)
	(= (length i1) 5)
	(= (length i2) 10)
	(= (length i3) 15)
	(= (length i4) 20)
	(= (length i5) 25)
	(= (length i6) 30)
 )
 (:goal
	(and
		(finishes i1 i2)
		(finishes i3 i4)
		(finishes i5 i6)
	)
 )
)
