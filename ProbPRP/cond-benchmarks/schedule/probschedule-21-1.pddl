(define (problem schedule-21-1)
(:domain schedule)
(:objects
    V0
    U0
    S0
    R0
    P0
    Q0
    O0
    N0
    M0
    L0
    K0
    J0
    I0
    H0
    G0
    F0
    E0
    D0
    C0
    B0
    A0
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
    YELLOW
    RED
    BLACK
 - colour
    TWO
    THREE
    ONE
 - width
    BACK
    FRONT
 - anorient
)
(:init
    (SHAPE A0 CIRCULAR)
    (SURFACE-CONDITION A0 ROUGH)
    (PAINTED A0 RED)
    (HAS-HOLE A0 THREE FRONT)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 OBLONG)
    (SURFACE-CONDITION B0 POLISHED)
    (PAINTED B0 BLACK)
    (HAS-HOLE B0 THREE FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 OBLONG)
    (SURFACE-CONDITION C0 POLISHED)
    (PAINTED C0 BLUE)
    (HAS-HOLE C0 TWO FRONT)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CYLINDRICAL)
    (SURFACE-CONDITION D0 ROUGH)
    (PAINTED D0 BLACK)
    (HAS-HOLE D0 TWO FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION E0 SMOOTH)
    (PAINTED E0 BLUE)
    (HAS-HOLE E0 THREE BACK)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 OBLONG)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 BLACK)
    (HAS-HOLE F0 THREE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 OBLONG)
    (SURFACE-CONDITION G0 ROUGH)
    (PAINTED G0 BLACK)
    (HAS-HOLE G0 THREE BACK)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 OBLONG)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 BLACK)
    (HAS-HOLE H0 TWO BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 BLUE)
    (HAS-HOLE I0 TWO FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 OBLONG)
    (SURFACE-CONDITION J0 POLISHED)
    (PAINTED J0 YELLOW)
    (HAS-HOLE J0 ONE FRONT)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 CYLINDRICAL)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED K0 BLACK)
    (HAS-HOLE K0 THREE BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CYLINDRICAL)
    (SURFACE-CONDITION L0 POLISHED)
    (PAINTED L0 RED)
    (HAS-HOLE L0 ONE BACK)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CIRCULAR)
    (SURFACE-CONDITION M0 POLISHED)
    (PAINTED M0 RED)
    (HAS-HOLE M0 THREE BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 OBLONG)
    (SURFACE-CONDITION N0 SMOOTH)
    (PAINTED N0 YELLOW)
    (HAS-HOLE N0 ONE BACK)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 OBLONG)
    (SURFACE-CONDITION O0 ROUGH)
    (PAINTED O0 RED)
    (HAS-HOLE O0 THREE FRONT)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 SMOOTH)
    (PAINTED Q0 BLUE)
    (HAS-HOLE Q0 ONE FRONT)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 OBLONG)
    (SURFACE-CONDITION P0 POLISHED)
    (PAINTED P0 YELLOW)
    (HAS-HOLE P0 ONE BACK)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 OBLONG)
    (SURFACE-CONDITION R0 ROUGH)
    (PAINTED R0 RED)
    (HAS-HOLE R0 ONE BACK)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 OBLONG)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 YELLOW)
    (HAS-HOLE S0 ONE BACK)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 OBLONG)
    (SURFACE-CONDITION U0 POLISHED)
    (PAINTED U0 BLUE)
    (HAS-HOLE U0 TWO BACK)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CYLINDRICAL)
    (SURFACE-CONDITION V0 SMOOTH)
    (PAINTED V0 BLUE)
    (HAS-HOLE V0 ONE FRONT)
    (TEMPERATURE V0 COLD)
    (CAN-ORIENT DRILL-PRESS BACK)
    (CAN-ORIENT PUNCH BACK)
    (CAN-ORIENT DRILL-PRESS FRONT)
    (CAN-ORIENT PUNCH FRONT)
    (HAS-PAINT IMMERSION-PAINTER YELLOW)
    (HAS-PAINT SPRAY-PAINTER YELLOW)
    (HAS-PAINT IMMERSION-PAINTER BLUE)
    (HAS-PAINT SPRAY-PAINTER BLUE)
    (HAS-PAINT IMMERSION-PAINTER BLACK)
    (HAS-PAINT SPRAY-PAINTER BLACK)
    (HAS-PAINT IMMERSION-PAINTER RED)
    (HAS-PAINT SPRAY-PAINTER RED)
    (HAS-BIT DRILL-PRESS THREE)
    (HAS-BIT PUNCH THREE)
    (HAS-BIT DRILL-PRESS TWO)
    (HAS-BIT PUNCH TWO)
    (HAS-BIT DRILL-PRESS ONE)
    (HAS-BIT PUNCH ONE)
)
(:goal (and
    (SURFACE-CONDITION L0 SMOOTH)
    (SURFACE-CONDITION D0 SMOOTH)
    (SHAPE J0 CYLINDRICAL)
    (SHAPE H0 CYLINDRICAL)
    (PAINTED G0 BLUE)
    (SURFACE-CONDITION J0 SMOOTH)
    (SURFACE-CONDITION E0 POLISHED)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION K0 ROUGH)
    (SURFACE-CONDITION F0 SMOOTH)
    (SURFACE-CONDITION M0 SMOOTH)
    (SHAPE Q0 CYLINDRICAL)
    (PAINTED V0 BLACK)
    (PAINTED U0 RED)
    (PAINTED C0 YELLOW)
    (PAINTED O0 BLACK)
    (SURFACE-CONDITION B0 ROUGH)
    (SURFACE-CONDITION H0 SMOOTH)
    (SHAPE C0 CYLINDRICAL)
    (SURFACE-CONDITION R0 SMOOTH)
    (PAINTED I0 YELLOW)
)))
