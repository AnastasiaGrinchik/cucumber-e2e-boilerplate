const { Then } = require('@cucumber/cucumber');
const memory = require('@cucumber-e2e/memory2');
const { po }  = require('@cucumber-e2e/po2');
const { expect } = require('chai');
const { $, $$ } = require('@cucumber-e2e/po2');

Then(/url should be '(.+)'/, async function(expected) {
    const expectedValue = memory.getValue(expected);
    expect(await browser.getUrl()).to.equal(expectedValue)
})

Then(/field '(.+)' contains '(.+)'/, async function(field, text) {
    const expectedValue = memory.getValue(text);      
    const element = await po.getElement(field); 
    expect(await element.getText()).to.include(expectedValue);
}) 