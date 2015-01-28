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
  

;; enable ido-mode
(ido-mode 1)


;; enable haskell-mode
(add-to-list 'load-path "~/.emacs.d/haskell-mode/")
(load "haskell-mode-autoloads.el") ; might need to make this file
                                   ;   make EMACS=/path/to/emacs
(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)
     (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)))
