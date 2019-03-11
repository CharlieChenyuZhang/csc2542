(define (problem zeno_15_10_6_11709)
  (:domain zenotravel)
  (:objects c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 - city p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person a0 a1 a2 a3 a4 a5 - aircraft f0 f1 f2 f3 f4 - flevel)
  (:init (next f0 f1) (next f1 f2) (next f2 f3) (next f3 f4)
         (at-person p0 c12) (not-boarding p0) (not-debarking p0)
         (at-person p1 c1) (not-boarding p1) (not-debarking p1)
         (at-person p2 c12) (not-boarding p2) (not-debarking p2)
         (at-person p3 c13) (not-boarding p3) (not-debarking p3)
         (at-person p4 c8) (not-boarding p4) (not-debarking p4)
         (at-person p5 c8) (not-boarding p5) (not-debarking p5)
         (at-person p6 c0) (not-boarding p6) (not-debarking p6)
         (at-person p7 c4) (not-boarding p7) (not-debarking p7)
         (at-person p8 c12) (not-boarding p8) (not-debarking p8)
         (at-person p9 c0) (not-boarding p9) (not-debarking p9)
         (at-aircraft a0 c0) (fuel-level a0 f0) (not-refueling a0)
         (at-aircraft a1 c4) (fuel-level a1 f3) (not-refueling a1)
         (at-aircraft a2 c3) (fuel-level a2 f2) (not-refueling a2)
         (at-aircraft a3 c14) (fuel-level a3 f2) (not-refueling a3)
         (at-aircraft a4 c2) (fuel-level a4 f4) (not-refueling a4)
         (at-aircraft a5 c12) (fuel-level a5 f3) (not-refueling a5)
  )
  (:goal (and (at-person p0 c9) (at-person p1 c6) (at-person p2 c2) (at-person p3 c5) (at-person p4 c4) (at-person p5 c13) (at-person p6 c10) (at-person p7 c3) (at-person p8 c9) (at-person p9 c10)))
)