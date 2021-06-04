#lang racket
;up-down game
;1) pick a random number, using (random) procedure,
;2) get input from user, and prints out up/down for the number
;3) if the user gives the correct value, prints 'correct' and quit 
;4) if the given numb is smaller than the computer-chosen number,
;   prints the msg for retry with larger number.
;5) if the number is larger, prints the msg retry with smaller numb.

(define game (random 100)) ;the number user should guessed

(define (loop x) 
  (cond [(< x game)
         (display "try again with higher number:")
         (loop (read))];if user guess's is too low
        [(> x game)
         (display "try again with smaller number:")
         (loop (read))] ;if user guess's is too high
        [else "correct"] ;if user guessed right, correct signal
      ))

(display "type your guess: ");start instruction
(loop (read)) ;start input