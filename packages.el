(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(defvar my-packages `(
;; Clojure
  clojure-mode
  cider
  paredit
;; Haskell
  haskell-mode
;; OCaml
  tuareg
  utop
;; Javascript
  js2-mode
;; General
  auto-complete
  markdown-mode
  perspective
  projectile
;; Themes
  sublime-themes
  noctilux-theme
  monokai-theme
;; Swift
  swift-mode
;; Python
  python-mode
))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defun package-safe-install (package)
  (if (not (package-installed-p package))
	(package-install package)))

 (mapcar #'package-safe-install
   (append my-packages))
