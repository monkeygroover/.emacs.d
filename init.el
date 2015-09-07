
;; Enable IDO mode
(require 'ido)
(ido-mode t)

(electric-indent-mode nil)

; always use spaces, not tabs, when indenting
(setq indent-tabs-mode nil)

; ignore case when searching
(setq case-fold-search t)

; require final newlines in files when they are saved
(setq require-final-newline t)

(setq vc-handled-backends ())

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq make-backup-files nil)

(setq auto-save-default nil)

(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t))
    backup-directory-alist `((".*" . ,temporary-file-directory)))

(push "/usr/local/bin" exec-path)

;; Imports
;;--------------------------------------------------------------------------------;

(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/ui.el")

;; Modes
(load "~/.emacs.d/modes/clojure.el")
(load "~/.emacs.d/modes/javascript.el")


;; Mode initializers (used to associate file types with emacs modes)

(add-to-list 'auto-mode-alist '("\\.less\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

(electric-indent-mode -1)

;; Auto complete mode
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; YA SNIP
;;(require 'yasnippet)
;;(yas-global-mode 1)
