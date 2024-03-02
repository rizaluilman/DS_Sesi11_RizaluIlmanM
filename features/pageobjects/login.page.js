const { $, expect } = require('@wdio/globals')
const Page = require('./page');

const elements = {
    fieldUsername : $('#user-name'),
    fieldPassword : $('#password'),
    buttonLogin : $('#login-button'),
    errorUser : (dynamicMessage) => $(`//h3[text()="${dynamicMessage}"]`)
}

class LoginPage extends Page {
    // NOTE: elements collection

    async login (username) {
        await elements.fieldUsername.waitForDisplayed({ timeout: 2500 });
        await elements.fieldUsername.setValue(username);
        await elements.fieldPassword.setValue(process.env.PASSWORD_SAUCEDEMO);
        await elements.buttonLogin.click();
    }

    async blankPassword(username){
        await elements.fieldUsername.waitForDisplayed({ timeout: 2500 });
        await elements.fieldUsername.setValue(username);
        await elements.fieldPassword.setValue('');
        await elements.buttonLogin.click();
    }

    async validateLockedOutUserError (dynamicMessage) {
        await elements.errorUser(dynamicMessage).waitForDisplayed({ timeout: 2500 });
        await expect(elements.errorUser(dynamicMessage)).toBeDisplayed()
    }

    open () {
        return super.open('/'); // NOTE: will open https://www.saucedemo.com/
    }
}

module.exports = new LoginPage();