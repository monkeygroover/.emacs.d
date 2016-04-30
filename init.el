(require 'package)

(add-to-list 'package-archives '("elpa" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(setq inhibit-startup-message t)

(setq inhibit-startup-echo-area-message t)

(setq show-trailing-whitespace t)

(cua-mode)

(setq exec-path (append exec-path '("/usr/local/bin/")))

(add-hook 'after-init-hook 'my-after-init-hook)
(defun my-after-init-hook ()
  (require 'edts-start))
