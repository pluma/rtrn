/*global describe, it */
var expect = require('expect.js'),
  rtrn = require('../');

describe('rtrn', function() {
  it('is a function', function() {
    expect(rtrn).to.be.a('function');
  });
  it('returns its input', function() {
    expect(rtrn(true)).to.equal(true);
    expect(rtrn(false)).to.equal(false);
    expect(rtrn('hello')).to.equal('hello');
    expect(rtrn('')).to.equal('');
    expect(rtrn(0)).to.equal(0);
    expect(rtrn(undefined)).to.equal(undefined);
  });
});
