;;;; handlers.lisp
(in-package :easy-time-tracker)

;; Static directory
(push (hunchentoot:create-folder-dispatcher-and-handler "/static/" "/app/static/")
	 hunchentoot:*dispatch-table*)

;; Root handler
(hunchentoot:define-easy-handler (hello-sbcl :uri "/") ()
  (cl-who:with-html-output-to-string (s)
    (:html
     (:head
      (:title "Easy Time Tracker"))
     (:body
      (:h1 "Easy Time Tracker")
      (:h3 "Work in progress...")
      (:ul
       (:li (format s "~A ~A" (lisp-implementation-type) (lisp-implementation-version)))
       (:li (format s "Hunchentoot ~A" hunchentoot::*hunchentoot-version*))
       (:li (format s "CL-WHO")))
      (:div
       (:a :href "static/lisp-glossy.jpg" (:img :src "static/lisp-glossy.jpg" :width 100)))))))
      
