  (define (problem a-schedule-problem435)
  (:domain schedule)
  (:objects P0 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 P18 P19 P20 P21 P22 P23 P24 P25 P26 P27 P28 P29 P30 P31 P32 P33 P34 P35 P36 P37 P38 P39 P40 P41 P42 P43 P44 P45 P46 P47 P48 P49 P50 P51 P52 P53 P54 P55 P56 P57 P58 P59  - packet)
  (:init 
         (alive)
         (current-phase Arrivals-and-updating)
         (need-to-process-arrivals C0)
         (need-to-process-arrivals C1)
         (need-to-process-arrivals C2)
         (need-to-process-arrivals C3)
         (need-to-process-arrivals C4)
         (need-to-process-arrivals C5)
         (need-to-process-arrivals C6)
         (need-to-process-arrivals C7)
         (need-to-process-arrivals C8)
         (need-to-process-arrivals C9)
         (status P0 Available)
         (status P1 Available)
         (status P2 Available)
         (status P3 Available)
         (status P4 Available)
         (status P5 Available)
         (status P6 Available)
         (status P7 Available)
         (status P8 Available)
         (status P9 Available)
         (status P10 Available)
         (status P11 Available)
         (status P12 Available)
         (status P13 Available)
         (status P14 Available)
         (status P15 Available)
         (status P16 Available)
         (status P17 Available)
         (status P18 Available)
         (status P19 Available)
         (status P20 Available)
         (status P21 Available)
         (status P22 Available)
         (status P23 Available)
         (status P24 Available)
         (status P25 Available)
         (status P26 Available)
         (status P27 Available)
         (status P28 Available)
         (status P29 Available)
         (status P30 Available)
         (status P31 Available)
         (status P32 Available)
         (status P33 Available)
         (status P34 Available)
         (status P35 Available)
         (status P36 Available)
         (status P37 Available)
         (status P38 Available)
         (status P39 Available)
         (status P40 Available)
         (status P41 Available)
         (status P42 Available)
         (status P43 Available)
         (status P44 Available)
         (status P45 Available)
         (status P46 Available)
         (status P47 Available)
         (status P48 Available)
         (status P49 Available)
         (status P50 Available)
         (status P51 Available)
         (status P52 Available)
         (status P53 Available)
         (status P54 Available)
         (status P55 Available)
         (status P56 Available)
         (status P57 Available)
         (status P58 Available)
         (status P59 Available)
         (not-dropped P0)
         (not-dropped P1)
         (not-dropped P2)
         (not-dropped P3)
         (not-dropped P4)
         (not-dropped P5)
         (not-dropped P6)
         (not-dropped P7)
         (not-dropped P8)
         (not-dropped P9)
         (not-dropped P10)
         (not-dropped P11)
         (not-dropped P12)
         (not-dropped P13)
         (not-dropped P14)
         (not-dropped P15)
         (not-dropped P16)
         (not-dropped P17)
         (not-dropped P18)
         (not-dropped P19)
         (not-dropped P20)
         (not-dropped P21)
         (not-dropped P22)
         (not-dropped P23)
         (not-dropped P24)
         (not-dropped P25)
         (not-dropped P26)
         (not-dropped P27)
         (not-dropped P28)
         (not-dropped P29)
         (not-dropped P30)
         (not-dropped P31)
         (not-dropped P32)
         (not-dropped P33)
         (not-dropped P34)
         (not-dropped P35)
         (not-dropped P36)
         (not-dropped P37)
         (not-dropped P38)
         (not-dropped P39)
         (not-dropped P40)
         (not-dropped P41)
         (not-dropped P42)
         (not-dropped P43)
         (not-dropped P44)
         (not-dropped P45)
         (not-dropped P46)
         (not-dropped P47)
         (not-dropped P48)
         (not-dropped P49)
         (not-dropped P50)
         (not-dropped P51)
         (not-dropped P52)
         (not-dropped P53)
         (not-dropped P54)
         (not-dropped P55)
         (not-dropped P56)
         (not-dropped P57)
         (not-dropped P58)
         (not-dropped P59)
  )
  (:goal (and (alive) (forall (?c - class) (served ?c))))
  )