;;; @stack.el --- stack prototype written in @

(require '@)

(defvar @stack (@extend :head ())
  "A stack with access provided only to the top of the stack.")

(def@ @stack :emptyp ()
  "Return t if the stack is empty."
  (null @:head))

(def@ @stack :push (element)
  "Push ELEMENT onto the stack, returning the stack."
  (prog1 @@
      (push element @:head)))

(def@ @stack :pop ()
  "Pop the top element from this stack, returning it."
  (pop @:head))

(def@ @stack :peek ()
  "Return the first element of this stack without removing it."
  (car @:head))

(def@ @stack :to-list ()
  "Return this entire stack as a list."
  (copy-list @:head))

(provide '@stack)

;;; @stack.el ends here
