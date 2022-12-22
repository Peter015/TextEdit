(defsystem "textedit"
  :version "0.0.1"
  :author "Peter Zimmermann"
  :license "Apache 2.0"
	:description "A simple text editor written in C and Common Lisp"
  :depends-on (:sbcl)
  :components ((:module "src"
                :components
                ((:file "main")
								 (:file "core.c"))))
	:compile-op :all
	:test-op (:test-path "textedit/tests"))

(defsystem "textedit/tests"
  :author "Peter Zimmermann"
  :license "Apache 2.0"
  :depends-on ("textedit"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for textedit"
  :perform (test-op (op c) (symbol-call :rove :run c)))
