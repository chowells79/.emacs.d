;; to use, put the following line into .emacs, uncommented
;;  (load-file "~/.emacs.d/init.el")


;; set colors
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-dark-laptop)

     ;; Highlight current line
     (global-hl-line-mode 1)
     (set-face-background 'hl-line "#111100")))


;; column numbers
(setq column-number-mode 1)
  
