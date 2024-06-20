#!/bin/bash

if [ "$1" = "0" ]; then
	# 还原实验环境
	echo "restore lab env"
	./backup-lab.sh restore
elif [ "$1" = "1" ]; then
	echo "task1"
	cp codes/task1-index.html /var/www/CSRF/Attacker/index.html
elif [ "$1" = "2" ]; then
	echo "task2"
	cp codes/task2-index.html /var/www/CSRF/Attacker/index.html
elif [ "$1" = "3" ]; then
	echo "task3"
	cp codes/task3-index.html /var/www/CSRF/Attacker/index.html
elif [ "$1" = "4" ]; then
	echo "task4"
	cp codes/task4-ActionsService.php /var/www/CSRF/Elgg/vendor/elgg/elgg/engine/classes/Elgg/ActionsService.php
elif [ "$1" = "5" ]; then
	echo "task5"
	mysql -uelgg_admin -pseedubuntu elgg_xss < codes/task5-elgg_xss.sql
elif [ "$1" = "6" ]; then
	echo "task6"
	mysql -uelgg_admin -pseedubuntu elgg_xss < codes/task6-elgg_xss.sql
elif [ "$1" = "7" ]; then
	echo "task7"
	mysql -uelgg_admin -pseedubuntu elgg_xss < codes/task7-elgg_xss.sql
elif [ "$1" = "8.1" ]; then
	echo "task8"
	mysql -uelgg_admin -pseedubuntu elgg_xss < codes/task8.1-elgg_xss.sql
elif [ "$1" = "8.2" ]; then
	echo "task8"
	cp codes/task8.2-text.php /var/www/XSS/Elgg/vendor/elgg/elgg/views/default/output/text.php
	cp codes/task8.2-url.php /var/www/XSS/Elgg/vendor/elgg/elgg/views/default/output/url.php
	cp codes/task8.2-dropdown.php /var/www/XSS/Elgg/vendor/elgg/elgg/views/default/output/dropdown.php
	cp codes/task8.2-email.php /var/www/XSS/Elgg/vendor/elgg/elgg/views/default/output/email.php
fi
