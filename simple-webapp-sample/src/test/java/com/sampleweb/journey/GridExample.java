package com.sampleweb.journey;

import com.sampleweb.BaseTest;
import com.sampleweb.pages.HomePage;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class GridExample extends BaseTest {

    @Test(groups = "regression")
    public void firstTest() throws Exception {
        HomePage homePage = new HomePage(driver);
        assertThat(homePage.isTitleCorrect(), is(true));
    }

    @Test(groups = "regression")
    public void secondTest() throws Exception {
        HomePage homePage = new HomePage(driver);
        assertThat(homePage.isSearchFieldVisible(), is(true));
    }
}