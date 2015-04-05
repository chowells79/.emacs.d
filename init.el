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
     (add-hook 'haskell-mode-hook
               (lambda ()
                 (turn-on-haskell-indentation)
                 (setq tab-width 8
                       haskell-indentation-layout-offset 4
                       haskell-indentation-left-offset 4
                       haskell-indentation-ifte-offset 4)))))


;; kill whole line
(setq kill-whole-line 1)


;; don't use tabs to indent
(setq-default indent-tabs-mode nil)


;; show trailing whitespace
(setq-default show-trailing-whitespace 1)


;; desktop-save-mode
(desktop-save-mode 1)
(setq desktop-restore-eager 10)


;; remove toolbar
(tool-bar-mode -1)
