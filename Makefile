.PHONY: all clean

all: js/reveal.js

3.5.0.tar.gz:
	wget https://github.com/hakimel/reveal.js/archive/3.5.0.tar.gz


js/reveal.js: 3.5.0.tar.gz
	tar zxf $<
	rm -f reveal.js-3.5.0/index.html
	rsync -a reveal.js-3.5.0/ .
	touch js/reveal.js

clean:
	rm -rf .gitignore .travis.yml 3.5.0.tar.gz bower.json CONTRIBUTING.md \
		css demo.html getreveal.sh Gruntfile.js js lib LICENSE \
		node_modules package.json package-lock.json plugin README.md \
		reveal.js-3.5.0 test
