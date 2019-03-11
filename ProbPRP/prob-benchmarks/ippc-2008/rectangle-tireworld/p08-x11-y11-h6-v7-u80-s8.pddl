(define (problem rect-11-11-6-7-8)
  (:domain rectangle-world)
  (:objects n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 - int)
  (:init (xpos n0)
	 (ypos n0)
         (next n0 n1)
         (next n1 n2)
         (next n2 n3)
         (next n3 n4)
         (next n4 n5)
         (next n5 n6)
         (next n6 n7)
         (next n7 n8)
         (next n8 n9)
         (next n9 n10)
	 (safeX n0)
	 (safeX n2)
	 (safeX n5)
	 (safeX n6)
	 (safeY n0)
	 (safeY n1)
	 (safeY n3)
	 (safeY n5)
	 (safeY n8)
	 (safeY n9)
	 (safeY n10)
	 (unsafe n0 n0)
	 (unsafe n0 n1)
	 (unsafe n0 n4)
	 (unsafe n0 n5)
	 (unsafe n0 n9)
	 (unsafe n0 n10)
	 (unsafe n1 n2)
	 (unsafe n1 n3)
	 (unsafe n1 n6)
	 (unsafe n1 n8)
	 (unsafe n1 n10)
	 (unsafe n2 n1)
	 (unsafe n2 n3)
	 (unsafe n2 n4)
	 (unsafe n2 n5)
	 (unsafe n3 n0)
	 (unsafe n3 n2)
	 (unsafe n3 n4)
	 (unsafe n3 n7)
	 (unsafe n3 n9)
	 (unsafe n4 n1)
	 (unsafe n4 n2)
	 (unsafe n4 n3)
	 (unsafe n4 n5)
	 (unsafe n4 n7)
	 (unsafe n4 n8)
	 (unsafe n5 n0)
	 (unsafe n5 n2)
	 (unsafe n5 n3)
	 (unsafe n5 n9)
	 (unsafe n5 n10)
	 (unsafe n6 n2)
	 (unsafe n6 n4)
	 (unsafe n6 n5)
	 (unsafe n6 n6)
	 (unsafe n6 n7)
	 (unsafe n6 n8)
	 (unsafe n6 n10)
	 (unsafe n7 n0)
	 (unsafe n7 n1)
	 (unsafe n7 n3)
	 (unsafe n7 n4)
	 (unsafe n7 n6)
	 (unsafe n7 n7)
	 (unsafe n7 n8)
	 (unsafe n7 n10)
	 (unsafe n8 n0)
	 (unsafe n8 n2)
	 (unsafe n8 n7)
	 (unsafe n8 n8)
	 (unsafe n8 n9)
	 (unsafe n9 n0)
	 (unsafe n9 n2)
	 (unsafe n9 n4)
	 (unsafe n9 n5)
	 (unsafe n9 n6)
	 (unsafe n9 n10)
	 (unsafe n10 n5)
	 (unsafe n10 n6)
	 (unsafe n10 n8)
	 (unsafe n10 n9)
  )
  (:goal (and (xpos n10) (ypos n10)))
  (:goal-reward 1000)
  (:metric maximize (reward))
)
