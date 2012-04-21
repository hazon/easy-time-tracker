(asdf:defsystem #:easy-time-tracker
  :serial t
  :description "Easy Time Tracker"
  :depends-on (#:hunchentoot
	       #:cl-who)
  :components ((:file "package")
	       (:module :src
			:serial t      
			:components ((:file "heroku-utils")
				     (:file "handlers")))))
