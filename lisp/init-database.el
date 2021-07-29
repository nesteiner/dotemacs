(with-eval-after-load 'sql-mysql
  (setq-default sql-user "steiner"
		sql-password "whoamisteiner3044"
		sql-database "mydb"
		sql-server "localhost"))

(provide 'init-database)