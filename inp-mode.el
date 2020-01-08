;; a simple major mode, mymath-mode

(setq inp-highlights
      '(("Sin\\|Cos\\|Sum" . font-lock-function-name-face)
        ("Pi\\|Infinity" . font-lock-constant-face)))

(define-derived-mode inp-mode fundamental-mode "inp"
  "major mode for abaqus inp."
    (setq font-lock-defaults '(inp-highlights)))
