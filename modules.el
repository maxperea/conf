(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode))

(use-package evil-escape
  :after evil
  :config
  (evil-escape-mode)
  (setq-default evil-escape-key-sequence "jk")
  (setq-default evil-escape-delay 0.2))

(use-package evil-collection
  :after evil
  :config
  (with-eval-after-load 'magit
    (evil-collection-magit-setup)))

(use-package undo-tree
  :config
  (setq undo-tree-auto-save-history t)
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
  (global-undo-tree-mode))

(use-package rg)

(use-package projectile
  :config
  (projectile-mode))

(use-package vertico
  :config
  (vertico-mode 1)
  :straight ( vertico :files (:defaults "extensions/*")
    :includes (vertico-directory)))

(use-package vertico-directory
	     :after vertico
	     :straight nil
  :ensure nil
  :bind (:map vertico-map
	      ("RET" . vertico-directory-enter)
	      ("DEL" . vertico-directory-delete-char)
	      ("M-DEL" . vertico-directory-delete-word))
  :hook (rfn-eshadow-update-overlay . vertico-directory-tidy))

(use-package orderless
  :config
  (setq completion-styles '(orderless)
	completion-category-defaults nil
	completion-category-overrides '((file (styles partial-completion)))))

(use-package savehist
  :config
  (savehist-mode))

(use-package marginalia
  :after vertico
  :config
  (setq marginalia-align 'right)
  (marginalia-mode))

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package doom-themes
  :config
  (setq doom-gruvbox-brighter-comments nil)
  (setq doom-gruvbox-dark-variant "medium")
  (load-theme 'doom-gruvbox t))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode))

(use-package doom-modeline
  :config
  (doom-modeline-mode 1))

(use-package org-bullets
  :config
  (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package which-key
  :config
  (which-key-mode))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package avy)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "<leader>l")
  :hook ((c++-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :config
  (setq lsp-headerline-breadcrumb-enable nil))

(use-package flycheck
  :hook (c++-mode . flycheck-mode))

(use-package git-gutter
  :hook (prog-mode . git-gutter-mode))

(use-package git-gutter-fringe
  :config
  (define-fringe-bitmap 'git-gutter-fr:added [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:modified [224] nil nil '(center repeated))
  (define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240] nil nil 'bottom))

(use-package magit)

;; Languages 
(use-package haskell-mode)

(use-package lsp-haskell)
