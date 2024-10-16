(define (problem problem2)

    (:domain drone) 
    (:objects 
    p1 p2 p3 p4
    l00 l01 l02 l03 l04
    l10 l11 l12 l13 l14
    l20 l21 l22 l23 l24
    l30 l31 l32 l33 l34
    l40 l41 l42 l43 l44)
    (:init 
    (drone-location l00) 
    (person-location p1 l03) (person-location p2 l10) (person-location p3 l21) (person-location p4 l34)
    (obstacle l12) (obstacle l22) (obstacle l44) (obstacle l41)
    (safe-zone l40)
    (drone-empty)

    ;; horizontal adjacencies
    (adjacent l00 l01) (adjacent l01 l00)
    (adjacent l01 l02) (adjacent l02 l01)
    (adjacent l02 l03) (adjacent l03 l02)
    (adjacent l03 l04) (adjacent l04 l03)
    
    (adjacent l10 l11) (adjacent l11 l10)
    (adjacent l11 l12) (adjacent l12 l11)
    (adjacent l12 l13) (adjacent l13 l12)
    (adjacent l13 l14) (adjacent l14 l13)
    
    (adjacent l20 l21) (adjacent l21 l20)
    (adjacent l21 l22) (adjacent l22 l21)
    (adjacent l22 l23) (adjacent l23 l22)
    (adjacent l23 l24) (adjacent l24 l23)
    
    (adjacent l30 l31) (adjacent l31 l30)
    (adjacent l31 l32) (adjacent l32 l31)
    (adjacent l32 l33) (adjacent l33 l32)
    (adjacent l33 l34) (adjacent l34 l33)

    (adjacent l40 l41) (adjacent l41 l40)
    (adjacent l41 l42) (adjacent l42 l41)
    (adjacent l42 l43) (adjacent l43 l42)
    (adjacent l43 l44) (adjacent l44 l43)
    
    ;; vertical adjacencies
    (adjacent l00 l10) (adjacent l10 l00)
    (adjacent l01 l11) (adjacent l11 l01)
    (adjacent l02 l12) (adjacent l12 l02)
    (adjacent l03 l13) (adjacent l13 l03)
    (adjacent l04 l14) (adjacent l14 l04)
    
    (adjacent l10 l20) (adjacent l20 l10)
    (adjacent l11 l21) (adjacent l21 l11)
    (adjacent l12 l22) (adjacent l22 l12)
    (adjacent l13 l23) (adjacent l23 l13)
    (adjacent l14 l24) (adjacent l24 l14)
    
    (adjacent l20 l30) (adjacent l30 l20)
    (adjacent l21 l31) (adjacent l31 l21)
    (adjacent l22 l32) (adjacent l32 l22)
    (adjacent l23 l33) (adjacent l33 l23)
    (adjacent l24 l34) (adjacent l34 l24)

    (adjacent l30 l40) (adjacent l40 l30)
    (adjacent l31 l41) (adjacent l41 l31)
    (adjacent l32 l42) (adjacent l42 l32)
    (adjacent l33 l43) (adjacent l43 l33)
    (adjacent l34 l44) (adjacent l44 l34)
    )
    (:goal (and (rescued p1) (rescued p2) (rescued p3) (rescued p4)))
)