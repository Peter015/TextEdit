#!/bin/sh
# installs the dependencies in the asd file
sbcl --eval "(ql:quickload 'quicklisp)" --eval "(asdf:load-system 'textedit')" --eval "(asdf:load-system 'textedit/tests')"
