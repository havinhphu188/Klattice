package com.sampleweb.framework;

import com.sampleweb.pages.Page;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.RemoteWebDriver;

public class PageNavigator {

    private String xpathGiftCard = "//li//a[contains(text(), 'Gift Cards')]";
    private String xpathChristmasGiftCards = "//li//a[contains(text(), 'Christmas Gift Cards')]";

    public <T extends Page> T navigateToBabyProductsPage(RemoteWebDriver driver, Class<T> clazz) throws Exception {
        driver.findElement(By.xpath("//span[contains(text(), 'Department')]")).click();
        driver.findElement(By.xpath("//li//a[text()='Baby']")).click();
        return PageFactory.newPage(driver, clazz);
    }

    public <T extends Page> T navigateToGiftCardsPage(RemoteWebDriver driver, Class<T> clazz) throws Exception {
        driver.findElementByXPath(xpathGiftCard).click();
        driver.findElementByXPath(xpathChristmasGiftCards).click();
        return PageFactory.newPage(driver, clazz);
    }

}
