(define (domain river)
  (:requirements :typing :strips :non-deterministic)
  (:predicates (on-near-bank) (on-far-bank) (on-island) (alive))
  (:action traverse-rocks :parameters ()
           :precondition (and (on-near-bank))
           :effect (and (not (on-near-bank))
                        (oneof
                          (on-far-bank)
                          (not (alive))
                          (on-island))))
  (:action swim-river :parameters ()
           :precondition (and (on-near-bank))
           :effect (and
                     (not (on-near-bank))
                     (oneof
                        ; I removed the (and) from the PDDL file so that strong cyclic solutions exist
                        (on-island)
                       (on-far-bank))))
  (:action swim-island :parameters ()
           :precondition (and (on-island))
           :effect (and (not (on-island))
                        (on-far-bank)
                        )))