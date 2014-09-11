;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-16) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

; EX 16 Play around with some image functions

(define my-image (bitmap "Cute-puppy.jpg"))
(above my-image my-image my-image)
(beside my-image my-image my-image)

(rectangle 40 60 "outline" "Green")
(circle 50 "solid" "Blue")
(text "This is some text" 12 "Red")
(empty-scene 50 50)
(place-image my-image 200 200 my-image)

(string-append "Hello " "World!")