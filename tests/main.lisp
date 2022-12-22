(defpackage textedit/tests/main
  (:use :cl
        :textedit
        :rove))
(in-package :textedit/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :textedit)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
