(define (problem pfile0)
	(:domain testdomain)
	(:objects 
		var1 var2 var3 - variable
	)
	(:init
		(norepeat var1)
		(norepeat var2)
		(norepeat var3)
	)
	(:goal
		(and
			(target1 var1)
			(target2 var1)
			(target3 var1)
			(target1 var2)
			(target2 var2)
			(target3 var2)
			(target1 var3)
			(target2 var3)
			(target3 var3)
		)
	)
	(:metric minimize (total-time))
)
