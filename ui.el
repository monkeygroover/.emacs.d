(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-message t)

(setq inhibit-startup-echo-area-message t)

(setq initial-scratch-message
  (concat "\nToday is: "
    (format-time-string "%A %d %B %Y at %T\n")))

(setq ring-bell-function 'ignore)

(display-time-mode)

(global-linum-mode)

(setq linum-format "%4d ")

(setq show-trailing-whitespace t)

(setq case-fold-search t)

;;--------------------------------------------------------------------------------;

(load-theme 'monokai t)
