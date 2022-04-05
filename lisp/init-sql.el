(setq sql-mysql-login-params
      '((user :default "steiner")
	(database :default "runoob")
	(server :default "localhost")
	(port :default "3306")
	))

(setq sql-connection-alist
      '((mysql-prod (sql-product 'mysql)
		    (sql-password "whoamisteiner3044")
		    (sql-port 3306))))

(add-hook 'sql-interactive-mode-hook
	  (lambda ()
	    (toggle-truncate-lines t)))

(provide 'init-sql)