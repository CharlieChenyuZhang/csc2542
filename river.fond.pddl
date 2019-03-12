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
                        ; I removed the (and) and added (on-near-bank) so that strong cyclic solutions exist
                        ; A strong cyclic solutions are plans that guarentee to reach the goal state which
                        ; can potentially result in an infinite sequence of states.
                        ; For a strong solution, we need to be able to achieve the goal in spite of nondeterminism. 
                        ; This is not a strong solution because we may reach the state (not (alive)). Once we reach this state,
                        ; we would never reach the goal state.
                        (on-near-bank)
                       (on-far-bank))))
  (:action swim-island :parameters ()
           :precondition (and (on-island))
           :effect (and (not (on-island))
                        (on-far-bank)
                        )))