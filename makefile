all:
	jekyll build
	rsync -r ./_site/* /var/www/jnardiello/
