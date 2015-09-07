;; Helpers
;;--------------------------------------------------------------------------------;

(defun reconfigure ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

;; Clear the shell
(defun my-clear ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))

(defun my-shell-hook ()
  (local-set-key "\C-cl" 'my-clear))
