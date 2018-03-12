.PHONY: all clean

REVEAL_VERSION=3.6.0

all: js/reveal.js

${REVEAL_VERSION}.tar.gz:
	wget https://github.com/hakimel/reveal.js/archive/${REVEAL_VERSION}.tar.gz


js/reveal.js: ${REVEAL_VERSION}.tar.gz
	tar zxf $<
	rm -f reveal.js-${REVEAL_VERSION}/index.html
	rsync -a reveal.js-${REVEAL_VERSION}/ .
	touch js/reveal.js

clean:
	rm -rf .gitignore .travis.yml ${REVEAL_VERSION}.tar.gz bower.json CONTRIBUTING.md \
		css demo.html getreveal.sh Gruntfile.js js lib LICENSE \
		node_modules package.json package-lock.json plugin README.md \
		reveal.js-${REVEAL_VERSION} test
