(define (domain river)
  (:requirements :typing :strips :probabilistic-effects)
  (:predicates (on-near-bank) (on-far-bank) (on-island) (alive))
  (:action traverse-rocks :parameters ()
           :precondition (and (on-near-bank))
           :effect (and (not (on-near-bank))
                        (probabilistic
                          0.01 (on-far-bank) ; x
                          0.01 (not (alive)) ; y
                          0.98 (on-island)))) ; x
  (:action swim-river :parameters ()
           :precondition (and (on-near-bank))
           :effect (and (not (on-near-bank))
                        (probabilistic 0.5 (on-far-bank))))
  (:action swim-island :parameters ()
           :precondition (and (on-island))
           :effect (and (not (on-island))
                        (probabilistic
                          0.8 (on-far-bank)
                          0.2 (not (alive))))))