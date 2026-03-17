; a) plus operator
(define (sum a b)
(display "a) 10 + 25 = ")
(display (+ a b)))

(sum 10 25)
(newline)

; b) minus operator
(define (diff a b)
(display "b) 10 - 25 = ")
(display (- a b)))

(diff 10 25)
(newline)

; c) car function - return first item in a list
(display "c) car function on (1, 2, 3) = ")
(display (car '(1 2 3)))
(newline)

; d) cdr function - the rest of the list
(display "d) cdr function on (1, 2, 3) = ")
(display (cdr '(1 2 3)))
(newline)

;e) the length function
(display "e) length function on (1, 2, 3) = ")
(display (length '(1 2 3)))
(newline)

; f) the null? function
(display "f) null check on empty list = ")
(display (null? '()))
(newline)
(display "f) null check on non-empty list = ")
(display (null? '(1 2 3)))
(newline)

; g) memq function - search list for element (identity/pointer equality)
; return: "#f" if not found, or the sublist starting at first match
(display "d) memq search function for 'b' on (a b c) = ")
(display (memq 'b '(a b c)))
(newline)


; 2) Define and invoke a function that calculates the area of circle, if the
; radius is provided.
(define (area r)
(display "a) area = pi * 4^2 = ")
(display (* 3.14 (* r r))))

(area 4)
(newline)


; 3) Define and invoke a function called "myLength" that take a list as an 
; input and recursively calculates the length of the list. 
(define (my-length lst)
  (if (null? lst) ; base case returns null here
      0
      (+ 1 (my-length (cdr lst)))))


(display "a) length of array ( 1 2 3 4) = ")
(display (my-length '(1 2 3 4)))
(newline)
