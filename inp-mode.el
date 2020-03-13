;; Emacs major mode for ABAQUS inp file, inp-mode

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inp-highlights
      '(("^\*[a-zA-Z].*[^a-zA-Z]" . font-lock-keyword-face)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar inp-mode-syntax-table nil "Syntax table for inp-mode.")
(setq inp-mode-syntax-table
      (let ((synTable (make-syntax-table)))
        ;; Define comment style: "**COMMENT"
        (modify-syntax-entry ?* ". 12b" synTable)
        (modify-syntax-entry ?\n "> b" synTable)
        synTable))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-derived-mode inp-mode fundamental-mode "inp"
  "Major mode for abaqus inp."
  (setq font-lock-defaults '(inp-highlights))
  (setq-local comment-start "**")
  (setq-local comment-end "")
  (set-syntax-table inp-mode-syntax-table))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'inp-mode)
