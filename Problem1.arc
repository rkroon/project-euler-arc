(def isDivisibleBy (x y)
	(is (type (/ x y)) 'int)
)

(def isDivisibleByThree (x)
	(isDivisibleBy x 3)
)

(def isDivisibleByFive (x)
	(isDivisibleBy x 5)
)

(let x 0
	(for i 0 999
		(zap [+ _ (if (or (isDivisibleByFive i) (isDivisibleByThree i)) i 0)] x)
	)
	x
)