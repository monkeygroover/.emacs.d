;; Clojure
;;--------------------------------------------------------------------------------;

(eval-after-load "clojure-mode"
  '(progn
     (global-set-key (kbd "C-c C-j") 'cider-jack-in)))

;; rainbow delimiters
;; (global-rainbow-delimiters-mode)
