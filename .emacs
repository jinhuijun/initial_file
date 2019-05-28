;;设置编码模式
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;; 根据不同操作系统进行设置
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (custom-set-faces
     '(default ((t (:family "微软雅黑" :foundry "outline" :slant normal :weight normal :height 107 :width normal)))))
    ;;设置窗口
    (add-to-list 'default-frame-alist '(left . 690))
    (add-to-list 'default-frame-alist '(top . 0))
    (add-to-list 'default-frame-alist '(height . 35))
    (add-to-list 'default-frame-alist '(width . 80))
    ;;设置目录
    (setenv "HOME" "D:/emacs/")
    (setenv "PATH" "D:/emacs/")
    (setq default-directory "~/")
    (add-to-list 'exec-path "~/plugin/")
    ))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (package-initialize)
    (set-default-font "Menlo-15")
    (add-to-list 'default-frame-alist '(left . 5))
    (add-to-list 'default-frame-alist '(top . 32))
    (add-to-list 'default-frame-alist '(height . 40))
    (add-to-list 'default-frame-alist '(width . 120))
    (setenv "PATH"
	    (concat
	     "/usr/local/bin:"
	     (getenv "PATH")))

    ;;加载自动补全
    (require 'auto-complete-config)
    (ac-config-default)
    (auto-complete-mode t)
    (custom-set-variables
     '(package-selected-packages (quote (slime auto-complete evil monokai-theme))))
    (custom-set-faces)))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux"))))


;;加载 package插件
(require 'package)
(add-to-list 'package-archives 
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa=stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;M-x package-refresh-contents [RET]

(require 'rainbow-delimiters)
(require 'cider)

(global-set-key [f6] 'rainbow-delimiters-mode)
(global-set-key [f8] 'speedbar)
(global-set-key [f7] 'evil-mode)

;;markdown
;;(setq markdown-command "D:/pandoc/pandoc.exe")
;;(setq markdown-command "D:/MultiMarkdown/bin/multimarkdown.exe")

;;加载theme
(load-theme 'monokai t)

;;页面初始化
(setq inhibit-splash-screen t)
(tool-bar-mode 0)
;;(scroll-bar-mode 0)
(global-linum-mode 1)
(setq linum-format "%d ┃")
