;;; MIT License
;;;
;;; Copyright (c) 2026-2027 Mass Collaboration Labs
;;; Copyright (c) 2026-2027 Adam Faiz
;;;
;;; Permission is hereby granted, free of charge, to any person obtaining a copy
;;; of this software and associated documentation files (the "Software"), to deal
;;; in the Software without restriction, including without limitation the rights
;;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;;; copies of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be included in all
;;; copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;;; SOFTWARE.

(define-syntax-rule (for all args expr expr* ...)
  (for-each (lambda args expr expr* ...) all))

(define* (solve x y z #:optional (range 10))
  (let ((digits (iota range))
	(min (inf))
	(best #f))
    (for digits (a)
      (for digits (b)
	(for digits (c)
	  (when (not (or (= c a) (= c b)))
	    (let ((val (+ (* x a) (* y b) (* z c))))
	      (when (< val min)
		(format #t "~a < ~a ~a~%" val min (list a b c))
		(set! min val)
		(set! best (list a b c))))))))
    (apply format (cons* #t "Min value: ~a, a=~a, b=~a, c=~a~%" min best))))

(solve 1 -2 3)
