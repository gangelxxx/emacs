(setq show-paren-style 'expression)
(show-paren-mode 2)

(menu-bar-mode 1)
(tool-bar-mode -1)

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")

;Нумерация строк
;; http://code.google.com/p/dea/source/browse/trunk/my-lisps/linum%2B.el
(require 'linum+)
(setq linum-format "%d ")
(global-linum-mode 1)

;; built-in
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
 
;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
 
(global-set-key (kbd "<f2>") 'bs-show)

;; autocomplete
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete//ac-dict")
(ac-config-default)

;; http://www.emacswiki.org/emacs/SrSpeedbar
(add-to-list 'load-path "~/.emacs.d/plugins/sr-speedbar/")
(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

;; http://www.emacswiki.org/emacs/Yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

;; http://www.emacswiki.org/emacs/ColorTheme
;; Tools -> Color themes
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(color-theme-gnome2)

;; Options -> Set default font
(add-to-list 'default-frame-alist '(font . "Consolas-12"))
(set-default-font "Consolas-12")
