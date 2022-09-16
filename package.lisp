;;;; package.lisp

(defpackage #:spinneret
  (:use #:cl)
  (:export #:with-html
           #:with-html-string
           #:html
           #:html-length
           #:get-html-path
           #:interpret-html-tree
           #:deftag
           #:dynamic-tag
           #:do-elements

           #:*html*
           #:*html-lang*
           #:*html-charset*
           #:*html-style*
           #:*suppress-inserted-spaces*
           #:*boolean-attributes*
           #:*unvalidated-attribute-prefixes*
           #:*fill-column*

           #:spinneret-error
           #:no-such-tag)
  (:import-from #:parenscript
                #:concat-constant-strings ;; unexported function
                #:define-ps-symbol-macro
                #:defpsmacro
                #:with-ps-gensyms)
  (:import-from #:trivia
                #:match)
  (:import-from #:global-vars
                #:define-global-parameter)
  (:import-from #:cl-ppcre
                #:split)
  (:import-from #:trivial-gray-streams
                #:fundamental-character-output-stream
                #:stream-write-char
                #:stream-write-string
                #:stream-terpri
                #:stream-fresh-line
                #:stream-start-line-p
                #:stream-finish-output
                #:stream-force-output
                #:stream-advance-to-column)
  (:import-from #:alexandria
                #:array-index
                #:clamp
                #:string-designator
                #:make-keyword
                #:parse-body
                #:parse-ordinary-lambda-list
                #:with-gensyms
                #:with-unique-names
                #:remove-from-plist
                #:starts-with-subseq
                #:when-let
                #:if-let
                #:assoc-value
                #:disjoin
                #:doplist
                #:once-only
                #:switch)
  (:import-from #:serapeum
                #:fmt
                #:eif
                #:econd
                #:define-do-macro
                #:defconst
                #:nlet
                #:nix
                #:assure
                #:find-keyword
                #:parse-leading-keywords
                #:->
                #:with-thunk
                #:and-let*
                #:op
                #:string-prefix-p
                #:memq
                #:local*
                #:bound-value
                #:string$=
                #:string^=
                #:escape
                #:defconst
                #:defconstructor
                #:string-replace-all
                #:defmethods
                #:fbind
                #:fbind*
                #:eval-if-constant))

(defpackage #:spinneret-user
  (:use #:cl #:parenscript #:spinneret))
