(with (x 2 oldx 0 y 1 i 0)
	(while (~> x 4000000)
		(= i (+ i (if (~odd x) x 0)))
		(= oldx x)
		(= x (+ x y))
		(= y oldx)
	)
	i
)