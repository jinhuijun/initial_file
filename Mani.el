;;Mani el V 0.1.3
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
	("执0" . ?0) ("执1" . ?1) ("执2" . ?2) ("执3" . ?3) ("执4" . ?4) ("执5" . ?5) ("激励" . ?6)
	(:endgroup . nil)))
