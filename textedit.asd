(defsystem "textedit"
  :version "0.0.1"
  :author "Peter Zimmermann"
  :license "Apache 2.0"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "textedit/tests"))))

(defsystem "textedit/tests"
  :author ""
  :license ""
  :depends-on ("textedit"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for textedit"
  :perform (test-op (op c) (symbol-call :rove :run c)))
