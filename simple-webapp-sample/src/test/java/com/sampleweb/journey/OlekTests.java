package com.sampleweb.journey;

import com.sampleweb.BaseTest;
import com.sampleweb.framework.PageNavigator;
import com.sampleweb.pages.BabyProductsPage;
import com.sampleweb.pages.GiftCardPage;
import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class OlekTests extends BaseTest {

    PageNavigator navigator = new PageNavigator();

    @Test (groups = "regression")
    public void babyProductsNavigationPageTest() throws Exception {
        BabyProductsPage babyProductsPage = navigator.navigateToBabyProductsPage(driver, BabyProductsPage.class);
        assertThat(babyProductsPage.isLoaded(), is(true));
    }

    @Test (groups = "regression")
    public void giftCardsNavigationPageTest() throws Exception {
        GiftCardPage giftCardPage = navigator.navigateToGiftCardsPage(driver, GiftCardPage.class);
        assertThat(giftCardPage.isLoaded(), is(true));
    }
}
