;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-27) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; EX 27
; draw-strings: ListOfStrings -> Image
; GIVEN: a list of strings
; RETURNS: an image of the combined strings separated by spaces

(define (draw-strings lst)
(cond
  [(empty? lst) (text "" 12 "Green")] ; when done with lst, print nothing
  ; append a space after each word and convert to image
  ; then recursively place images beside each other
  [else (beside (text (string-append (first lst) " ") 12 "Green") 
                (draw-strings (rest lst)))]
  ))

; Test:
(draw-strings (list "Hello" "World"))


; EX 27a
; draw-strings-a: ListOfStrings -> Image
; GIVEN: a list of strings
; RETURNS: an image of the combined strings separated by spaces

(define (draw-strings-a lst)
(cond
  [(empty? lst) (text lst 12 "Blue" )] ; when done with lst, print nothing
  ; append strings then convert to image
  [else (string-append (first lst) " " (draw-strings-a (rest lst)))]
  )
  )

; Test:
(draw-strings-a (list "Hello" "World"))