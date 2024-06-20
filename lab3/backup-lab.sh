#!/bin/bash

if [ "$1" = "backup" ]; then
	rm -rf backup
	mkdir -p backup
	# 备份elgg_csrf
	cp -r /var/www/CSRF backup/
	mysqldump -uelgg_admin -pseedubuntu elgg_csrf > backup/elgg_csrf.sql
	# 备份elgg_xss
	cp -r /var/www/XSS backup/
	mysqldump -uelgg_admin -pseedubuntu elgg_xss > backup/elgg_xss.sql
elif [ "$1" = "restore" ]; then
	# 还原elgg_csrf
	rm -rf /var/www/CSRF
	cp -r backup/CSRF /var/www/
	mysql -uelgg_admin -pseedubuntu elgg_csrf < backup/elgg_csrf.sql
	# 还原elgg_xss
	rm -rf /var/www/XSS
	cp -r backup/XSS /var/www/
	mysql -uelgg_admin -pseedubuntu elgg_xss < backup/elgg_xss.sql
else
	echo "usage: $0 backup/restore"
fi

