(in-package :cl-user)

(print ">>> Building system....")

(load (make-pathname :directory *build-dir* :defaults "easy-time-tracker.asd"))

(ql:quickload :easy-time-tracker)

;; change heroku-toplevel here

(print ">>> Done building system")
