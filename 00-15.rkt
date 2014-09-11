;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 00-15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; EX 15
; A Student is a (make-student Number String String)
; It represents a student in a directory
; Interpretation:
; id = 8 digit ID number of the student
; name = name of student, in the format "last name,first name"
; major = student's declared major, in abbreviation