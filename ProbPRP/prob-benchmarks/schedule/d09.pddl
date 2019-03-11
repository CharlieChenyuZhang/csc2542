(define (domain schedule)
 (:requirements :adl :probabilistic-effects)
 (:types packet class timestep phase packetstatus)
 (:constants C0 C1 C2 C3 - class U0 U1 U2 U3 U4 U5 - timestep
 Arrivals-and-updating Cleanup-and-service - phase
 Available Queued - packetstatus)
 (:predicates
   (current-phase ?s - phase)
   (packetclass ?p - packet ?c - class)
   (timetolive ?p - packet ?t - timestep)
   (status ?p - packet ?i - packetstatus)
   (processed-arrivals ?c - class)
   (need-to-process-arrivals ?c - class)
   (dropped ?p - packet)
   (not-dropped ?p - packet)
   (served ?c - class)
   (alive)
 )
 (:action process-arrivals
  :parameters (?arriving-packet - packet ?c - class)
  :precondition (and
                    (current-phase Arrivals-and-updating)
                    (status ?arriving-packet Available)
                    (need-to-process-arrivals ?c))
  :effect (and
             (processed-arrivals ?c)
             (not (need-to-process-arrivals ?c))
             (probabilistic 6/1000
                            (when (= ?c C0)
                              (and (status ?arriving-packet Queued)
                                   (not (status ?arriving-packet Available))
                                   (packetclass ?arriving-packet ?c)
                                   (timetolive ?arriving-packet U5))))
             (probabilistic 110/300
                            (when (not (= ?c C0))
                              (and (status ?arriving-packet Queued)
                                   (not (status ?arriving-packet Available))
                                   (packetclass ?arriving-packet ?c)
                                   (timetolive ?arriving-packet U5))))))
(:action time-update
 :precondition (and
                   (current-phase Arrivals-and-updating)
                   (forall (?c - class) (processed-arrivals ?c)))
 :effect (and 
            (not (current-phase Arrivals-and-updating))
            (current-phase Cleanup-and-service)
            (forall (?p - packet)
                    (when (timetolive ?p U0)
                          (and (dropped ?p) (not (not-dropped ?p)))))
            (forall (?p - packet)
                    (when (timetolive ?p U1)
                          (timetolive ?p U0)))
            (forall (?p - packet)
                    (when (timetolive ?p U2)
                          (timetolive ?p U1)))
            (forall (?p - packet)
                    (when (timetolive ?p U3)
                          (timetolive ?p U2)))
            (forall (?p - packet)
                    (when (timetolive ?p U4)
                          (timetolive ?p U3)))
            (forall (?p - packet)
                    (when (timetolive ?p U5)
                          (timetolive ?p U4)))
                          
 ))
(:action reclaim-packet
  :parameters (?p - packet ?c - class)
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (packetclass ?p ?c))
  :effect (and
              (not (dropped ?p))
              (not-dropped ?p)
              (forall (?u - timestep) (not (timetolive ?p ?u)))
              (not (packetclass ?p ?c))
              (status ?p Available)
              (not (status ?p Queued))
               (probabilistic 10/2000 (when (= ?c C3) (not (alive))))
               (probabilistic 20/2000 (when (= ?c C2) (not (alive))))
               (probabilistic 40/2000 (when (= ?c C1) (not (alive))))
               (probabilistic 70/100 (when (= ?c C0) (not (alive))))
))
(:action packet-serve
  :parameters (?p - packet ?c - class)
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (forall (?p1 - packet) (not-dropped ?p1))
                    (packetclass ?p ?c))
  :effect (and
            (forall (?c1 - class) (not (processed-arrivals ?c1)))
            (forall (?c1 - class) (need-to-process-arrivals ?c1))
            (not (current-phase Cleanup-and-service))
            (current-phase Arrivals-and-updating)
            (served ?c)
            (not (packetclass ?p ?c))
            (forall (?u - timestep) (not (timetolive ?p ?u)))
            (not (status ?p Queued))
            (status ?p Available)))
(:action serve-nothing
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (forall (?p1 - packet) (not-dropped ?p1)))
  :effect (and    
              (forall (?c1 - class) (not (processed-arrivals ?c1)))
              (forall (?c1 - class) (need-to-process-arrivals ?c1))
              (not (current-phase Cleanup-and-service))
              (current-phase Arrivals-and-updating))))