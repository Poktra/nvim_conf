;; package add melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; simple way to move between windows (S + arrow)
(windmove-default-keybindings)

;; eldoc box
(require 'eldoc-box)

;; eglot setup
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t)

(defun eglot-format-buffer-on-save ()
  (add-hook 'before-save-hook 'eglot-format-buffer))

;; company setup
(require 'company)

;; ivy setup
(require 'ivy)

;; projectile setup
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-indexing-method 'hybrid)


;; emacs ide setup
(defun my-cpp-setup ()
  (eglot-ensure)
  (company-mode)
  (ivy-mode)
  (display-line-numbers-mode)
  (eglot-format-buffer-on-save))

(add-hook 'c++-mode-hook #'my-cpp-setup)
(add-hook 'c-mode-hook #'my-cpp-setup)
