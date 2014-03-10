# Synopsis

**rtrn** is a JavaScript function that returns its input (equivalent to the `I` [combinator](http://en.wikipedia.org/wiki/Combinatory_logic)).

[![stability 5 - locked](http://b.repl.ca/v1/stability-5_--_locked-blue.png)
](http://nodejs.org/api/documentation.html#documentation_stability_index) [![license - Unlicense](http://b.repl.ca/v1/license-Unlicense-lightgrey.png)](http://unlicense.org/) [![Flattr this](https://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=pluma&url=https://github.com/pluma/rtrn)

[![browser support](https://ci.testling.com/pluma/rtrn.png)](https://ci.testling.com/pluma/rtrn)

[![Build Status](https://travis-ci.org/pluma/rtrn.png?branch=master)](https://travis-ci.org/pluma/rtrn) [![Coverage Status](https://coveralls.io/repos/pluma/rtrn/badge.png?branch=master)](https://coveralls.io/r/pluma/rtrn?branch=master) [![Dependencies](https://david-dm.org/pluma/rtrn.png?theme=shields.io)](https://david-dm.org/pluma/rtrn)

# Why?

It's trivial to implement, but in order to keep code DRY (and avoid silly mistakes) it makes sense to define this function only once per project. This library is the logical consequence of that.

# Install

## Node.js

### With NPM

```sh
npm install rtrn
```

### From source

```sh
git clone https://github.com/pluma/rtrn.git
cd rtrn
npm install
make
```

## Browser

### With component

```sh
component install pluma/rtrn
```

[Learn more about component](https://github.com/component/component).

### With bower

```sh
bower install rtrn
```

[Learn more about bower](https://github.com/twitter/bower).

### With a CommonJS module loader

Download the [latest minified CommonJS release](https://raw.github.com/pluma/rtrn/master/dist/rtrn.min.js) and add it to your project.

[Learn more about CommonJS modules](http://wiki.commonjs.org/wiki/Modules/1.1).

### With an AMD module loader

Download the [latest minified AMD release](https://raw.github.com/pluma/rtrn/master/dist/rtrn.amd.min.js) and add it to your project.

[Learn more about AMD modules](http://requirejs.org/docs/whyamd.html).

### As a standalone library

Download the [latest minified standalone release](https://raw.github.com/pluma/rtrn/master/dist/rtrn.globals.min.js) and add it to your project.

```html
<script src="/your/js/path/rtrn.globals.min.js"></script>
```

This makes the `rtrn` function available in the global namespace.

# Basic usage example

```javascript
var rtrn = require('rtrn');

var hello = rtrn('hello');

console.log(hello); // 'hello'
```

# API

## rtrn(value):Function

Wraps the given value in a function.

# Unlicense

This is free and unencumbered public domain software. For more information, see http://unlicense.org/ or the accompanying [UNLICENSE](https://github.com/pluma/rtrn/blob/master/UNLICENSE) file.
