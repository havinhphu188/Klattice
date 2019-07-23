package com.sampleweb.journey;

import com.sampleweb.BaseTest;
import org.openqa.selenium.remote.DriverCommand;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class GiftCards extends BaseTest {

    private static final String regression = "regression";
    //div[@id='nav-xshop']//a[contains(text(), 'Gift Cards')] -- header gift car link note only works for full screen
    private String xpathGiftCard = "//li//a[contains(text(), 'Gift Cards')]";
    private String xpathChristmasGiftCards = "//li//a[contains(text(), 'Christmas Gift Cards')]";

//    @Test (groups = regression)
//    public void areAllItemsOnFirstPageFourOrAbove(){
//        openChristmasGiftCards();
//        clickPrimeOption();
//        String xpathCountAllItems = "//div[@class='s-result-list s-search-results sg-row']//div[@data-asin]//span[@class='a-icon-alt']";
//        String xpathCountAllItemsFourAndAbove="//div[@class='s-result-list s-search-results sg-row']//div[@data-asin]//span[@class='a-icon-alt'][contains(text(), '4.') or contains(text(), '5.')]";
//        int totalNumberOfItems = driver.findElementsByXPath(xpathCountAllItemsFourAndAbove).size();
//        int numberOfItemsFourRatingAndAbove = driver.findElementsByXPath(xpathCountAllItems).size();
//        assertThat(numberOfItemsFourRatingAndAbove, is(totalNumberOfItems));
//    }

    @Test(groups = regression)
    public void areAllCategroiesDisplayed_True() {
        String xpathCountAllFields = "//div[@class=\"card\"]";
        int numberOfItemsDisplayed = driver.findElementsByXPath(xpathCountAllFields).size();
        int totalNumberOfItems = 11;
        assertThat(numberOfItemsDisplayed, is(totalNumberOfItems));
    }

    @Test(groups = regression)
    public void canClickOnAllButtons() {
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
        String xpathSignOutBtn = "//button[contains(text(), ' Sign out ')]";
        driver.findElementByXPath(xpathSignOutBtn).click();
        String xpathLogin = "//h3[contains(text(), \"Login\")]";
        assertThat(driver.findElementByXPath(xpathLogin), is(true));
    }




//    @Test (groups = regression)
//    public void isPrimeCheckboxDisplayed_True(){
//        String xpathPrimeIcon="//li[@id='p_76/419158031']//i[@class='a-icon a-icon-prime a-icon-medium']";
//        openChristmasGiftCards();
//        assertThat(driver.findElementByXPath(xpathPrimeIcon).isDisplayed(), is(true));
//    }

//    @Test (groups = regression)
//    public void isPrimeCheckBoxClickable_True(){
//        String xpathPrimeCheckBox = "//li[@id='p_76/419158031']//span//a[@class='a-link-normal s-navigation-item']//div[@class='a-checkbox a-checkbox-fancy s-navigation-checkbox aok-float-left']//label//input";
//        openChristmasGiftCards();
//        clickPrimeOption();
//        assertThat(driver.findElementByXPath(xpathPrimeCheckBox).isSelected(),is(true));
//    }

//    @Test (groups = regression)
//    public void isFirstItemPrime_True() {
//        String xpathFirstItemPrime = "//div[@data-asin='B00TE2ENJ4']//div//div//div//div//div//div[@class='sg-col-inner']//i[@aria-label='Amazon Prime']";
//        openChristmasGiftCards();
//        clickPrimeOption();
//        assertThat(driver.findElementByXPath(xpathFirstItemPrime).isDisplayed(), is(true));
//    }
//
//    @Test (groups = regression)
//    public void isCustomerReviewSectionDisplayed_True(){
//        openChristmasGiftCards();
//        clickPrimeOption();
//        assertThat(driver.findElementByXPath("//div[@id='reviewsRefinements']").isDisplayed(),is(true));
//    }

//    private void openChristmasGiftCards(){
//        driver.findElementByXPath(xpathGiftCard).click();
//        driver.findElementByXPath(xpathChristmasGiftCards).click();
//    }
//
//    private void clickPrimeOption(){
//        String xpathPrimeCheckBoxSelectableItem = "//li[@id='p_76/419158031']//span//a[@class='a-link-normal s-navigation-item']//div[@class='a-checkbox a-checkbox-fancy s-navigation-checkbox aok-float-left']//label//i";
//        driver.findElementByXPath(xpathPrimeCheckBoxSelectableItem).click();
//    }

}
