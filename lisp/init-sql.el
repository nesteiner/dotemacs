(setq sql-mysql-login-params
      '((user :default "steiner")
	(database :default "runoob")
	(server :default "localhost")
	(password :default "mysql30449030")
	(port :default 3306)
	))

(setq sql-connection-alist
      '((mysql-prod (sql-product 'mysql)
		    (sql-password "mysql30449030")
		    (sql-port 3306))))

(add-hook 'sql-interactive-mode-hook
	  (lambda ()
	    (toggle-truncate-lines t)))

(provide 'init-sql)
