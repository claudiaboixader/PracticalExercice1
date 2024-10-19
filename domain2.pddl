(define (domain drone)
(:requirements :strips :equality :negative-preconditions)
(:predicates 
(drone-location ?d)
(person-location ?p ?d)
(obstacle ?d)
(safe-zone ?d)
(freespot ?d ?s)
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
    :precondition (and (person-location ?p ?d) (drone-location ?d) (drone-empty) (not (obstacle ?d)))
    :effect (and (not (drone-empty)) (drone-location ?d))
)
(:action drop-off
    :parameters (?p ?d ?s)
    :precondition (and (drone-location ?d) (safe-zone ?d) (not (drone-empty)) (not (obstacle ?d)) (freespot ?d ?s))
    :effect (and (drone-empty) (rescued ?p) (not (freespot ?d ?s)))
)
)
