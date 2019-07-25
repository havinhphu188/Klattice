package com.sampleweb.journey;

import com.sampleweb.BaseTest;
import org.openqa.selenium.remote.DriverCommand;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class FrontendTests extends BaseTest {

    private static final String regression = "regression";

    @Test(groups = regression)
    public void logIn() {
        logInToApplication();
        assertThat(driver.findElementByXPath("//span[contains(text(), 'Hello, admin')]").isDisplayed(), is(true));
        logoutOfApp();
    }

    @Test(groups = regression)
    public void areAllCategroiesDisplayed_True() {
        logInToApplication();
        String xpathCountAllFields = "//div[@class=\"card\"]";
        int numberOfItemsDisplayed = driver.findElementsByXPath(xpathCountAllFields).size();
        int totalNumberOfItems = 11;
        assertThat(numberOfItemsDisplayed, is(totalNumberOfItems));
    }

    @Test(groups = regression)
    public void canClickOnAllButtons() {
        logInToApplication();
        for (int i = 0; i < 11; i++) {
            String xpathCountAllFields = "//button[@aria-controls=\"ngb-panel-" + i + "\"]";
            driver.findElementByXPath(xpathCountAllFields).click();
            String xpathCountAllDivFields = "//div[@class=\"roleName\"]";
            int totalDivDisplayed = driver.findElementsByXPath(xpathCountAllDivFields).size();
            boolean isgreater = false;
            driver.findElementByXPath(xpathCountAllFields).click();
            if (totalDivDisplayed > 0) {
                isgreater = true;


                assertThat(isgreater, is(true));
            }
        }
    }

    @Test(groups = regression)
    public void signOutIsClickable() {
        logInToApplication();
        String xpathSignOutBtn = "//button[contains(text(), ' Sign out ')]";
        driver.findElementByXPath(xpathSignOutBtn).click();
        String xpathLogin = "//h3[contains(text(), \"Login\")]";
        assertThat(driver.findElementByXPath(xpathLogin), is(true));
    }

    private void logInToApplication(){
        driver.get("http://localhost:4200/");
        String usernameFieldId = "//input[@name=\"username\"]";
        driver.findElementByXPath(usernameFieldId).sendKeys("admin");
        String passwordFieldId = "//input[@name=\"pwd\"]";
        driver.findElementByXPath(passwordFieldId).sendKeys("adminPass");
        String submitBtnId = "//input[@class=\"btnSubmit subBtn\"]";
        driver.findElementByXPath(submitBtnId).click();
    }

    private void logoutOfApp() {
        String xpathSignOutBtn = "//button[contains(text(), ' Sign out ')]";
        driver.findElementByXPath(xpathSignOutBtn).click();
    }
}
