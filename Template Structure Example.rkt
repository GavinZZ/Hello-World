;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Template Structure Example|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
;; Structure definition for undergrad
(define-struct undergrad (fname lname userid faculty type year))

;; Data definition for Undergrad
;; An Undergrad is a (make-undergrad Str Str Str Str Sym Nat)
;; Requires:
;;      fname is a non-empty string representing the first name of the student
;;      lname is a non-empty string representing the last name of the student
;;      userid has at most 8 characters and is unique to the student
;;      faculty is one of "Arts", "Engineering", "Mathematics", and "Science".
;;      type is one of 'regular or 'co-op
;;      year is in the range of 1 - 4 inclusive.

;; Template for Undergrad
;; my-undergrad-function: Undergrad  -> Any
(define (my-undergrad-fun astdent)
  (... (undergrad-fname astudent)...
       (undergrad-lname astudent)...
       (undergrad-userid astudnet)...
       (undergrad-faculty astudent)...
       (undergrad-type astudent)...
       (undergrad-year astudent)...))


;; Constant for testing
(define studentA (make-undergrad "Sandy" "Graham" "slgraham"
                               "Mathematics" 'co-op 4))

;; (undergrad->string astudent) produces a string version of the information about
;;       astudent using the format: Name: ..., Faculty: ..., Year: ...
;; undergrad->string: Undergrad  -> Str
;; Example:
(check-expect (undergrad-string studentA)
              "Name: Sandy Graham, Faculty: Mathematics, Year: 4")

(define (undergrad-string astudent)
  (string-append
   "Name: " (undergrad-fname astudent) " "
       (undergrad-lname astudent) 
       ", Faculty: "   (undergrad-faculty astudent)
       ", Year: "  (number->string (undergrad-year astudent))))


;; GRAD EXAMPLE:
;; Structure definition for grad
(define-struct grad (fname lname userid supervisor level))

;; Data Definition for Grad:
;; An Undergrad is a (make-grad Str Str Str Str Sym)
;; Requires:
;;      fname is a non-empty string representing the first name of the student
;;      lname is a non-empty string representing the last name of the student
;;      userid has at most 8 characters and is unique to the student
;;      supervisor is a non-empty string representing the name of the supervisor
;;      level is one of 'Masters or 'PhD

;; my-grad-function: Grad -> Any
(define (my-grad-fun astudent)
  (... (grad-fname astudent)...
       (grad-lname astudent)...
       (grad-userid astudent)...
       (grad-supervisor astudent)...
       (grad-level astudent)...))

;; Data Definition for Student
;; (with this, we can replace (anyof Undergrad Grad) in the contract below with simply Student)
;; A Student is either an Undergrad or a Grad\\

;; (check-userid? astudent) produces true if the userid of astudent starts with
;;     the first initial of the student's first name and is no more than 8 characters
;;     and produces false otherwise
;; check-userid?: Student -> Bool
;; Example:
;; (check-expect (check-userid studentA) true

(define (check-userid? astudent)
  ...)
;; Template for Student
;; my-student-fun: Student -> Any
(define (my-student-fun astudent)
  (cond
    [(undergrad? astudent) 
     (... (undergrad-fname astudent)...
       (undergrad-lname astudent)...
       (undergrad-userid astudnet)...
       (undergrad-faculty astudent)...
       (undergrad-type astudent)...
       (undergrad-year astudent)...)]
    [(grad? astudent) 
     (... (grad-fname astudent)...
       (grad-lname astudent)...
       (grad-userid astudent)...
       (grad-supervisor astudent)...
       (grad-level astudent)...)]))



