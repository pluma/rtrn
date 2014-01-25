LICENSE_COMMENT="/*! rtrn 0.2.0 Original author Alan Plum <me@pluma.io>. Released into the Public Domain under the UNLICENSE. @preserve */"

cover: lint dist
	@./node_modules/.bin/istanbul cover -x "**/spec/**" \
		./node_modules/mocha/bin/_mocha --report lcov spec/ -- -R spec

coveralls:
	@rm -rf ./coverage
	@./node_modules/.bin/istanbul cover -x "**/spec/**" \
		./node_modules/mocha/bin/_mocha --report lcovonly spec/ -- -R spec && \
		cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js
	@rm -rf ./coverage

test: lint dist
	@./node_modules/.bin/mocha \
		--growl \
		--reporter spec \
		spec/*.spec.js

clean:
	@rm -f 	dist/*

dist/rtrn.js:
	@echo $(LICENSE_COMMENT) > dist/rtrn.js
	@cat src/rtrn.js >> dist/rtrn.js

dist/rtrn.globals.js:
	@echo $(LICENSE_COMMENT) > dist/rtrn.globals.js
	@echo "(function(root){\
	var require=function(key){return root[key];},\
	module={};" >> dist/rtrn.globals.js
	@cat src/rtrn.js >> dist/rtrn.globals.js
	@echo "root.rtrn = module.exports;\
	}(this));" >> dist/rtrn.globals.js

dist/rtrn.amd.js:
	@echo $(LICENSE_COMMENT) > dist/rtrn.amd.js
	@echo "define(function(require, exports, module) {" >> dist/rtrn.amd.js
	@cat src/rtrn.js >> dist/rtrn.amd.js
	@echo "return module.exports;});" >> dist/rtrn.amd.js

dist/rtrn.min.js: dist/rtrn.js
	@./node_modules/.bin/uglifyjs dist/rtrn.js --comments -m > dist/rtrn.min.js

dist/rtrn.globals.min.js: dist/rtrn.globals.js
	@./node_modules/.bin/uglifyjs dist/rtrn.globals.js --comments -m > dist/rtrn.globals.min.js

dist/rtrn.amd.min.js: dist/rtrn.amd.js
	@./node_modules/.bin/uglifyjs dist/rtrn.amd.js --comments > dist/rtrn.amd.min.js

dist: clean dist/rtrn.min.js dist/rtrn.globals.min.js dist/rtrn.amd.min.js

lint:
	@./node_modules/.bin/jshint src/rtrn.js spec
