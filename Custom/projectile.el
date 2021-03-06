(use-package projectile 
             :ensure t
	     :init
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(require 'general)
(require 'helm-projectile)
(helm-projectile-on)
             :config
             (projectile-global-mode)
  (general-define-key
   :states '(normal visual insert emacs)
   :prefix "SPC"
   :non-normal-prefix "C-SPC"
    "pI"   '(projectile-invalidate-cache :which-key "Invalidate Cache")
    "pp"   '(helm-projectile-switch-project :which-key "Switch Project")
    "pf"   '(helm-projectile-find-file :which-key "Find file in Project")
    "pg"   '(helm-grep-do-git-grep :which-key "Find file from text using Git")
 ))

(add-to-list 'projectile-globally-ignored-directories "*node_modules")
(add-to-list 'projectile-globally-ignored-directories "*build")
(add-to-list 'projectile-globally-ignored-directories "*dist")
