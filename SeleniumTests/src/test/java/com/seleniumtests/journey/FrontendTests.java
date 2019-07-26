package com.seleniumtests.journey;

import com.seleniumtests.BaseTest;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class FrontendTests extends BaseTest {

    private static final String regression = "regression";

    @Test(groups = regression)
    public void canlogIn() {
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
        logoutOfApp();
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
        logoutOfApp();
    }

    @Test(groups = regression)
    public void signOutIsClickable() {
        logInToApplication();
        logoutOfApp();
        String currentURL = driver.getCurrentUrl();
        assertThat(currentURL, is("http://localhost:4200/"));
    }

    @Test(groups = regression)
    public void filterRoles() {
        logInToApplication();
        clickRole();
        String family = "//select[@name=\"filter_family_id\"]/option[contains(text(), \"Technical\")]";
        driver.findElementByXPath(family).click();

        String capability = "//select[@name=\"filter_capability_id\"]/option[contains(text(), \"Software Engineering\")]";
        driver.findElementByXPath(capability).click();

        String band = "//select[@name=\"filter_band_id\"]/option[contains(text(), \"Consultant\")]";
        driver.findElementByXPath(band).click();


        Boolean technical = driver.findElementByXPath("//span[contains(text(), \"Technical\")]").isDisplayed();
        Boolean softwareEngineering = driver.findElementByXPath("//span[contains(text(), \"Software Engineering\")]").isDisplayed();
        Boolean leadSoftwareEngineering = driver.findElementByXPath("//td[contains(text(), \" Lead Software Engineer \")]").isDisplayed();
        Boolean consultant = driver.findElementByXPath("//span[contains(text(), \"Consultant\")]").isDisplayed();
        Boolean areDisplayed = false;
        if(technical && softwareEngineering && leadSoftwareEngineering && consultant == true) {
            areDisplayed = true;
        }

        assertThat(areDisplayed, is(true));

        logoutOfApp();
    }

    private void logInToApplication(){
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

    private void clickRole() {
        String roleBtn = "//div/app-sidebar/nav/div/ul/li[9]/a";
        driver.findElementByXPath(roleBtn).click();
    }
}
