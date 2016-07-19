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


;; hate the beeping.  hAAAAte.  But visible-bell is broken on
;; El Capitan.  Replace with just flashing the mode line
(setq ring-bell-function
      (lambda ()
        (invert-face 'mode-line)
        (run-with-timer 0.05 nil 'invert-face 'mode-line)))


;; rust mode
(add-to-list 'load-path "~/.emacs.d/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


;; multiple-cursors
(add-to-list 'load-path "~/.emacs.d/multiple-cursors.el")
(require 'multiple-cursors)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "s-SPC")       'set-rectangular-region-anchor)
(global-set-key (kbd "H-SPC")       'set-rectangular-region-anchor)
