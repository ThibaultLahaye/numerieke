(TeX-add-style-hook
 "assignment_1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12")
   (LaTeX-add-bibliographies
    "main"))
 :latex)

