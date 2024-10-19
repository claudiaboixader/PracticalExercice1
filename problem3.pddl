(define (problem problem3)

    (:domain drone) 
    (:objects 
    p1 p2 p3
    l00 l01 l02 l03 
    l10 l11 l12 l13 
    l20 l21 l22 l23 
    l30 l31 l32 l33
    s1 s2 s3)
    (:init 
    (drone-location l00) 
    (person-location p1 l03) (person-location p2 l10) (person-location p3 l21)
    (obstacle l12) (obstacle l22) (obstacle l33)
    (safe-zone l31)
    (freespot l31 s1) (freespot l31 s2) (freespot l31 s3)
    (drone-empty)

    ;; horizontal adjacencies
    (adjacent l00 l01) (adjacent l01 l00)
    (adjacent l01 l02) (adjacent l02 l01)
    (adjacent l02 l03) (adjacent l03 l02)
    
    (adjacent l10 l11) (adjacent l11 l10)
    (adjacent l11 l12) (adjacent l12 l11)
    (adjacent l12 l13) (adjacent l13 l12)
    
    (adjacent l20 l21) (adjacent l21 l20)
    (adjacent l21 l22) (adjacent l22 l21)
    (adjacent l22 l23) (adjacent l23 l22)
    
    (adjacent l30 l31) (adjacent l31 l30)
    (adjacent l31 l32) (adjacent l32 l31)
    (adjacent l32 l33) (adjacent l33 l32)
    
    ;; vertical adjacencies
    (adjacent l00 l10) (adjacent l10 l00)
    (adjacent l01 l11) (adjacent l11 l01)
    (adjacent l02 l12) (adjacent l12 l02)
    (adjacent l03 l13) (adjacent l13 l03)
    
    (adjacent l10 l20) (adjacent l20 l10)
    (adjacent l11 l21) (adjacent l21 l11)
    (adjacent l12 l22) (adjacent l22 l12)
    (adjacent l13 l23) (adjacent l23 l13)
    
    (adjacent l20 l30) (adjacent l30 l20)
    (adjacent l21 l31) (adjacent l31 l21)
    (adjacent l22 l32) (adjacent l32 l22)
    (adjacent l23 l33) (adjacent l33 l23)
    )
    (:goal (and (rescued p1) (rescued p2) (rescued p3)))
)