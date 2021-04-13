;;
;; Copyright (C) 1996-2017 Hirotsugu Kakugawa. 
;; All rights reserved.
;;
;; License: GPLv3 and FreeType Project License (FTL)
;;

(defun map-mjk-ttf (cp)
  (let ((g (/ cp (* 94 60)))
	(c (mod cp (* 94 60))))
    (if (= c 0)
	(progn
	  (setq g (+ g 100)) 
	  (setq c (* 94 60)))
	(setq g (+ g 101)))
    (let ((c1 (/ (- c 1) 94))
	  (c2 (mod (- c 1) 94)))
      (if (< c1 30)
	  (setq c1 (+ c1 16))
	  (setq c1 (+ c1 18)))
      (list (- g 101)
	    (format "0x%x" (+ (* (+ c1 32) 256) c2 33)) ))))
(map-mjk-ttf 1)
(map-mjk-ttf 2)
(map-mjk-ttf 10)
(map-mjk-ttf 2820)
(map-mjk-ttf 2900)
(map-mjk-ttf 5639)
(map-mjk-ttf 5640)
(map-mjk-ttf 5641)
(map-mjk-ttf 102144)


(defun map-mjk-type1 (cp)
  (let ((g (/ cp (* 94 60)))
	(c (mod cp (* 94 60))))
    (if (= c 0)
	(progn
	  (setq g (+ g 100)) 
	  (setq c (* 94 60)))
	(setq g (+ g 101)))
    (if (> c 2820)
	(setq c (+ c 380)) 
	(setq c (+ c 192)))
    (list (- g 101) (/ c 256) (format "0x%x" (mod c 256)))))
(map-mjk-type1 1)
(map-mjk-type1 2)
(map-mjk-type1 63)
(map-mjk-type1 64)
(map-mjk-type1 65)
(map-mjk-type1 319)
(map-mjk-type1 320)
(map-mjk-type1 2820)
(map-mjk-type1 2821)
(map-mjk-type1 5639)
(map-mjk-type1 5640)
(map-mjk-type1 5641)
(map-mjk-type1 5642)
(map-mjk-type1 5643)
(map-mjk-type1 (+ (* 7 16) 5888 12))
(map-mjk-type1 (+ (* 7 16) 5888 13))
(map-mjk-type1 (+ (* 7 16) 5888 14))
(map-mjk-type1 (+ (* 7 16) 5888 15))
(map-mjk-type1 (+ (* 7 16) 5888 16))