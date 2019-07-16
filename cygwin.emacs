;; use in cygwin
;;设置编码模式
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(custom-set-faces
 '(default ((t (:family "微软雅黑" :foundry "outline" :slant normal :weight normal :height 107 :width normal)))))

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

;;页面初始化
;;(setq inhibit-splash-screen t)
(menu-bar-mode 0)
;;(tool-bar-mode 0)
;;(scroll-bar-mode 0)
;;(global-linum-mode 1)
(setq linum-format "%d ┃")
