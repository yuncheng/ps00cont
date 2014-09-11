;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-30) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; EX 30
; neg-list: ListOfBooleans -> ListOfBooleans
; GIVEN: a list of booleans
; RETURNS: a list with each boolean reversed 
; Examples:
; (bool-list-true empty) => not sure if it's ok to return true?
; (bool-list-true (list true true)) => (list false false)
; (bool-list-true (list true false)) => (list false true)
; (bool-list-true (list false false)) => (list true true)

(define (neg-list lst)
  (cond 
    ; When done with lst, return empty list that gets acted upon by cons recursively
    [(empty? lst) empty]
    ; If any boolean in list is false, return false and recurse on rest of list
    [(not (first lst)) (cons true (neg-list (rest lst)))] 
    ; If the boolean is true, switch it to false and recurse on rest of list
    [else (cons false (neg-list (rest lst)))]
    )
  )

; Tests:
(neg-list empty)
(neg-list (list true true))
(neg-list (list true false))
(neg-list (list false false))
