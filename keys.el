;; Leader
(evil-set-leader '(normal visual) (kbd "<SPC>"))
;; Disable return
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "RET") nil))
;; Core - Buffer handling
(evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>ff") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader>bb") 'switch-to-buffer)
;; Core - Eval
(evil-define-key 'normal 'global (kbd "<leader>e") 'eval-defun)
(evil-define-key 'normal 'global (kbd "<leader>SPC") 'execute-extended-command)
(evil-define-key 'normal 'global (kbd "s-x") 'execute-extended-command)
;; Files
(evil-define-key 'normal 'global (kbd "<leader>fi") (lambda () (interactive) (find-file "~/.emacs_conf/init.el")))
(evil-define-key 'normal 'global (kbd "<leader>fc") (lambda () (interactive) (find-file "~/.emacs_conf/config.el")))
(evil-define-key 'normal 'global (kbd "<leader>fm") (lambda () (interactive) (find-file "~/.emacs_conf/modules.el")))
(evil-define-key 'normal 'global (kbd "<leader>fk") (lambda () (interactive) (find-file "~/.emacs_conf/keys.el")))
;; Navigation
(evil-define-key 'normal 'global (kbd "C-u") 'evil-scroll-up)
;; Navigation - quitting
(evil-define-key 'normal 'global (kbd "<leader>wq") 'evil-quit)
(evil-define-key 'normal 'global (kbd "<leader>ww") 'save-and-quit)
(evil-define-key 'normal 'global (kbd "<leader>qf") 'evil-quit-all)
;; Naviation - windows
(evil-define-key 'normal 'global (kbd "<leader>wh") 'evil-window-left)
(evil-define-key 'normal 'global (kbd "<leader>wl") 'evil-window-right)
(evil-define-key 'normal 'global (kbd "<leader>wj") 'evil-window-down)
(evil-define-key 'normal 'global (kbd "<leader>wk") 'evil-window-up)
(evil-define-key 'normal 'global (kbd "<leader>wv") 'evil-window-vsplit)
(evil-define-key 'normal 'global (kbd "<leader>ws") 'evil-window-split)
;; Comments
(evil-define-key '(normal visual) 'global (kbd "<leader>ac") 'comment-line)
;; Undo
(evil-define-key 'normal 'global (kbd "u") 'undo-tree-undo)
(evil-define-key 'normal 'global (kbd "C-r") 'undo-tree-redo)
;; Projectile
(evil-define-key 'normal 'projectile-mode-map (kbd "<leader>p") 'projectile-command-map)
;; Magit
(evil-define-key 'normal 'global (kbd "<leader>gg") 'magit)
;; Avy
(evil-define-key 'normal 'global (kbd "C-;") 'avy-goto-char)
