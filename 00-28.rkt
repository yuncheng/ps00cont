;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-28) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; EX 28
; draw-strings-lines: ListOfListsOfStrings -> Image
; GIVEN: a list of lists of strings
; RETURNS: an image of each of the lists of strings as a line

; make use of draw-strings function from EX 27
(define (draw-strings lst)
(cond
  [(empty? lst) (text "" 12 "Green")] ; when done with lst, print nothing
  ; append a space after each word and recursively place images beside each other
  [else (beside (text (string-append (first lst) " ") 12 "Green") 
                (draw-strings (rest lst)))]
  ))



(define (draw-strings-lines lst)
(cond
  [(empty? lst) (text "" 12 "Green")] ; when done with lst, print nothing
  ; call draw-strings on the first list 
  ; recursively place images above (i.e. below) each other
  [else (above (draw-strings (first lst)) 
                (draw-strings-lines (rest lst)))]
  ))  


; Test:
(define l1 (list "Hello" "World"))
(define l2 (list "Goodbye" "World")) 
(draw-strings-lines (list l1 l2))
