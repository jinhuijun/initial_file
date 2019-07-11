(setq org-todo-keywords
      '((sequence "显化目标：(t)" "反显化目标：(v)" "抉择：(d)" "充能：(c)" "显化：(i)" "反显化：(a)" "|" "已完成：(o)" "已取消：(x@/!)")
	(sequence " TODO(T)" "-------->WAITING，(W)" "-------->DEFER，(F)" "|" "DONE(D!)" "CANCELED(C@/!)")))

(setq org-tag-alist
      '((:startgroup . nil)
	("显化" . ?m) ("反显化" . ?a)
	(:endgroup . nil)
	(:startgroup . nil)
	("想象" . ?i) ("可视化" . ?v) ("情感" . ?e) ("呼请" .?p)
	(:endgroup . nil)
	(:startgroup . nil)
	("执0" . ?0) ("执1" . ?1) ("执2" . ?2) ("执3" . ?3) ("执4" . ?4) ("执5" . ?5) ("激励" . ?6)
	(:endgroup . nil)))
