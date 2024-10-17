(define (domain drone)
(:requirements :strips :equality :negative-preconditions :numeric-fluents)
(:predicates 
(drone-location ?d)
(person-location ?p ?d)
(obstacle ?d)
(safe-zone ?d)
(safe-zone-capacity ?m)
(rescued-count ?n)
(adjacent ?d1 ?d2)
(rescued ?p)
(drone-empty)
)
(:action move
    :parameters (?d1 ?d2)
    :precondition (and (drone-location ?d1) (adjacent ?d1 ?d2) (not (obstacle ?d2)))
    :effect (and (drone-location ?d2) (not (drone-location ?d1)))
)
(:action pick-up
    :parameters (?p ?d)
    :precondition (and (person-location ?p ?d) (drone-location ?d) (drone-empty) (not (obstacle ?d)) (not (rescued ?p)))
    :effect (and (not (drone-empty)) (drone-location ?d))
)
(:action drop-off
    :parameters (?p ?d ?n ?m)
    :precondition (and (drone-location ?d) (safe-zone ?d) (not (drone-empty)) (not (obstacle ?d)) (<= (rescued-count ?n) (- (safe-zone-capacity ?m) 1)))
    :effect (and (drone-empty) (rescued ?p) (increase (rescued-count ?n) 1))
)
)
