package com.sampleweb.framework;

import org.openqa.selenium.remote.RemoteWebDriver;

public class PageNavigator {

    private RemoteWebDriver driver;

    public void setDriver(RemoteWebDriver driver) {
        this.driver = driver;
    }

    public RemoteWebDriver getDriver() {
        return driver;
    }

//    public <T extends Page> T navigateToPage(Class<T> clazz) throws IOException {
//        return PageFactory.newPage(driver, clazz);
//    }
}
