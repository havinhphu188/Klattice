package com.sampleweb.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.FindBy;

public class HomePage extends Page {

    private RemoteWebDriver driver;
    private static String HOME_PAGE_TITLE = "Pet Supplies at zooplus Online Pet Shop, Pet Food & Pet Accessories";
    @FindBy (name="miniSearchBox")
    private WebElement searchField;


    public HomePage(RemoteWebDriver driver) {
        super(driver);
        this.driver = driver;
    }

    public boolean isSearchFieldVisible(){
        return isElementVisible(By.name("miniSearchBox"));
    }

    public boolean isTitleCorrect() throws Exception {
        return verifyTitle(driver.getTitle(), HOME_PAGE_TITLE);
    }
}
