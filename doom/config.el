;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-rose-pine-moon)

(setq doom-font (font-spec :family "Source Code Pro" :size 15)
      doom-big-font (font-spec :family "Source Code Pro" :size 24)
      doom-variable-pitch-font (font-spec :family "Rubik" :size 15))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Corfu + Cape
(use-package corfu
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  (corfu-preselect 'prompt)
  :bind
  (:map corfu-map
        ("TAB" . corfu-next)
        ([tab] . corfu-next)
        ("S-TAB" . corfu-previous)
        ([backtab] . corfu-previous))
  :init
  (global-corfu-mode))
  ;;(use-package cape
  ;;  :bind (("C-c a f" . cape-file))
  ;;  :init
  ;;  (add-to-list 'completion-at-point-functions # 'cape-file)))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file))

(use-package emacs
  :init
  (setq completion-cycle-threshold 3)
  (setq tab-always-indent 'complete))

;; Beacon
(beacon-mode 1)

;; Clippy
(map! :leader
      (:prefix ("c h" . "Help info from Clippy")
       :desc "Clippy describes function under point" "f" #'clippy-describe-function
       :desc "Clippy describes variable under point" "v" #'clippy-describe-variable))
;; Org
(setq org-hide-emphasis-markers t)

(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package mixed-pitch
  :hook
  (text-mode . mixed-pitch-mode))
(add-hook 'org-mode-hook (lambda ()
                                 (dolist
                                     (face
                                      '((org-level-1 1.7 "#82aaff" ultra-bold)
                                        (org-level-2 1.6 "#c792ea" extra-bold)
                                        (org-level-3 1.5 "#c3e88d" bold)
                                        (org-level-4 1.4 "#ffcb6b" semi-bold)
                                        (org-level-5 1.3 "#a3f7ff" normal)
                                        (org-level-6 1.2 "#e1acff" normal)
                                        (org-level-7 1.1 "#f07178" normal)
                                        (org-level-8 1.0 "#ddffa7" normal)))
                                   (set-face-attribute (nth 0 face) nil :weight (nth 3 face) :height (nth 1 face) :foreground (nth 2 face)))))

;; Guess language
(use-package guess-language
  :ensure t
  :defer t
  :init (add-hook 'text-mode-hook #'guess-language-mode)
  :config
  (setq guess-language-langcodes '((en . ("en_US" "English"))
                                   (ru . ("ru_RU" "Russian")))
        guess-language-languages '(en ru)
        guess-language-min-paragraph-length 45)
  :diminish guess-language-mode)

;; Auto tangle
(use-package org-auto-tangle
  :load-path "site-lisp/org-auto-tangle/"    ;; this line is necessary only if you cloned the repo in your site-lisp directory
  :defer t
  :hook (org-mode . org-auto-tangle-mode))

;; dired
(evil-define-key 'normal dired-mode-map
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file)

;; popups
(set-popup-rule! "*doom:vterm-popup:*" :size 0.25 :vslot -4 :select t :quit nil :ttl 0)

;; Smooth scrolling
(good-scroll-mode 1)

;; Highlight tabs
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

;; Fish
(add-hook 'fish-mode-hook (lambda ()
                            (add-hook 'before-save-hook 'fish_indent-before-save)))
