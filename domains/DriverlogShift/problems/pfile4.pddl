(define (problem DLOG-3-3-3-3-03092014122955)
  (:domain driverlogshift)
  (:objects d0 d1 d2 - driver t0 t1 t2 - truck p0 p1 p2 - obj l0 l1 l2 p0-1 p1-2 - location)
  (:init 
	(at d0 l2) 
	(rested d0) 
	(at d1 l2) 
	(rested d1) 
	(at d2 l2) 
	(rested d2) 
	(at t0 l0) 
	(empty t0) 
	(at t1 l0) 
	(empty t1) 
	(at t2 l0) 
	(empty t2) 
	(at p0 l0) 
	(at p1 l0) 
	(at p2 l0) 
	(link l0 l1)
	(link l0 l2)
	(link l1 l0)
	(link l1 l2)
	(link l2 l0)
	(link l2 l1)
	(path l0 p0-1)
	(path p0-1 l0)
	(path l1 p0-1)
	(path p0-1 l1)
	(path l1 p1-2)
	(path p1-2 l1)
	(path l2 p1-2)
	(path p1-2 l2)
)
  (:goal (and (at d0 l2) (at d1 l2) (at d2 l2) (at t0 l2) (at t1 l2) (at t2 l2) (at p0 l2) (at p1 l2) (at p2 l2) )))