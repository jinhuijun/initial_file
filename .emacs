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
    (setenv "PATH" "D:/emacs/;D:/openjdk/jdk-11.0.2/bin;D:/leiningen/bin;d:/clojure")
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

;;w3m
;;(require 'w3m)
;;(setq w3m-home-page "http://www.baidu.com") ;设置主页 
;;(require 'mime-w3m)
;;(setq w3m-search-default-engine "http://www.baidu.com")
;;(add-to-list 'w3m-search-engine-alist
;;	     '("Baidu" "https://www.baidu.com"))
;;(defadvice w3m-search (after change-default activate)
;;  (let ((engine (nth 1 minibuffer-history)))
;;    (when (assoc engine w3m-search-engine-alist)
;;      (setq w3m-search-default-engine engine))))
;;(setq w3m-use-favicon nil)
;设置显示图片
;;(setq w3m-default-display-inline-images t)
;;(setq w3m-default-toggle-inline-images t)
;;显示图标  
;;(setq w3m-show-graphic-icons-in-header-line t) 
;;(setq w3m-show-graphic-icons-in-mode-line t)
;;启用cookie  
;;(setq w3m-use-cookies t)
;设定w3m运行的参数，分别为使用cookie和使用框架 
;;(setq w3m-command-arguments '("-cookie" "-F"))
