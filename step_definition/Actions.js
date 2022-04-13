const { When, Then, Given } = require('@cucumber/cucumber');
const { po } = require('@cucumber-e2e/po2');
const memory = require('@cucumber-e2e/memory2');

Given(/open '(.+)' url/, async function(url) {
    const parsedUrl = memory.getValue(url);
    await browser.url(parsedUrl);
});

When(/type '(.+)' to '(.+)'/, async function (value, alias) {
    const parsedValue = memory.getValue(value);
    const element = await po.getElement(alias);
    await element.setValue(parsedValue);
});

When(/click '(.+)'/, async function(alias) {
    const element = await po.getElement(alias);
    await element.waitForClickable()
    await element.click();
});

When(/wait '(.+)' sec/, async function(sec) {
    await browser.pause(sec * 1000);
});

When(/select '(.+)' from list '(.+)'/, async function(select, list) {
    const selectElement  = await po.getElement(select);
    await selectElement.waitForClickable()
    await selectElement.click();
    const option = await po.getElement(list);   
    await option.waitForDisplayed();
    await option.waitForClickable();
    await option.click();
})

