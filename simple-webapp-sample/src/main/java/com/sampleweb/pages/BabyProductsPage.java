package com.sampleweb.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.remote.RemoteWebDriver;

public class BabyProductsPage extends Page{

    public String title = "Baby products";
    public String pageTitle = "//span[text()='Baby Products']";

    public BabyProductsPage(RemoteWebDriver driver) {
        super(driver);
    }

    public boolean isLoaded() {
        return driver.findElement(By.xpath(pageTitle)).isDisplayed();
    }
}
