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
    (add-to-list 'default-frame-alist '(left . 390))
    (add-to-list 'default-frame-alist '(top . 0))
    (add-to-list 'default-frame-alist '(height . 35))
    (add-to-list 'default-frame-alist '(width . 150))
    ;;设置目录
    (setenv "HOME" "D:/emacs/")
    (setenv "PATH" "D:/emacs/;D:/graphviz/bin;D:/openjdk/bin;D:/leiningen")
    (setenv "LEIN_JAR" "d:/leiningen")
    (setenv "JAVA_HOME" "D:/openjdk")
    (setq default-directory "~/")
    (add-to-list 'exec-path "~/plugin/")))
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
(require 'evil)
(evil-mode 1)
;;加载自动补全
(require 'auto-complete-config)
(ac-config-default)
(auto-complete-mode t)


(global-set-key [f6] 'rainbow-delimiters-mode)
(global-set-key [f8] 'speedbar)
(global-set-key [f7] 'evil-mode)

;;加载theme
(load-theme 'monokai t)


;;页面初始化
(setq inhibit-splash-screen t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode 1)
(setq linum-format "%d ┃")
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;; emacs平滑滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(setq scroll-step            1
      scroll-conservatively  10000)


;; load Mani org Ver 0.13
;; ============================
(setq org-todo-keywords
      '((sequence "显化目标：(t)" "抉择：(d)" "充能：(c)" "行动：(i)" "实相过滤：(f)" "|" "已完成：(o)" "已取消：(x@/!)")
	(sequence "TODO(T)" "-------->WAITING，(W)" "-------->DEFER，(F)" "|" "DONE(D!)" "CANCELED(C@/!)")))

(setq org-tag-alist
      '((:startgroup . nil)
	("显化" . ?m) ("反显化" . ?a)
	(:endgroup . nil)
	(:startgroup . nil)
	("想象" . ?i) ("可视化" . ?v) ("热情奉献" . ?e) ("呼请祈愿" .?p) ("深入细节" . ?d) ("实相塑造" . ?b)
	(:endgroup . nil)
	(:startgroup . nil)
	("重要" . ?w) ("不重要" . ?r)
	(:endgroup . nil)
	(:startgroup . nil)
	("紧急" . ?s) ("不紧急" .?f)
	(:endgroup . nil)
	(:startgroup . nil)
	("执0" . ?0) ("执1" . ?1) ("执2" . ?2) ("执3" . ?3) ("执4" . ?4) ("执5" . ?5) ("激励" . ?6)
	(:endgroup . nil)))
;;============================

