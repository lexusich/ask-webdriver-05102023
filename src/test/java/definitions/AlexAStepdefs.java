package definitions;

import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class AlexAStepdefs {
    @Then("AlexA navigate to {string}")
    public void alexaNavigateTo(String sURL) {
        //getDriver().get("https://skryabin.com/market/quote.html");

        switch (sURL){
            case "Quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                break;
            case "ask-int":
                getDriver().get("http://ask-int.portnov.com/");
                break;
            case "portnov.com":
                getDriver().get("https://www.portnov.com/");
                break;
            case "Google.com":
                getDriver().get("https://www.google.com/");
                break;
            default:
                System.out.println("No URL found");
        }
    }
}
