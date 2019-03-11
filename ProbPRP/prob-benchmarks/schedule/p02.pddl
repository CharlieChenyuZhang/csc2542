  (define (problem a-schedule-problem412)
  (:domain schedule)
  (:objects P0 P1 P2 P3  - packet)
  (:init 
         (alive)
         (current-phase Arrivals-and-updating)
         (need-to-process-arrivals C0)
         (status P0 Available)
         (status P1 Available)
         (status P2 Available)
         (status P3 Available)
         (not-dropped P0)
         (not-dropped P1)
         (not-dropped P2)
         (not-dropped P3)
  )
  (:goal (and (alive) (forall (?c - class) (served ?c))))
  )
