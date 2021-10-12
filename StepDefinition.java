package steps;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.And;
import io.cucumber.java.en.But;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class StepDefinition  {
	public ChromeDriver driver;
	public List<String> allhandles;
	public List<String> allhandles2;

	@Given("Open the chromebrowser")
	public void openBrowser() {
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();

		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));

	}

	@And("Load the application Url as {string}")
	public void loadUrl(String url) {
		driver.get(url);
	}

	@And("Enter the username as {string}")
	public void enterUsername(String uname) {
		driver.findElement(By.id("username")).sendKeys(uname);

	}

	@And("Enter the password as {string}")
	public void enterPassword(String pwd) {
		driver.findElement(By.id("password")).sendKeys(pwd);

	}

	@When("Click the login button")
	public void clickLogin() {
		driver.findElement(By.className("decorativeSubmit")).click();

	}

	@Then("Homepage should be displayed")
	public void displayHomePage() {

		boolean displayed = driver.findElement(By.linkText("CRM/SFA")).isDisplayed();
		if (displayed) {
			System.out.println("Homepage is displayed");
		} else {
			System.out.println("Homepage is not displayed");
		}

	}

	@But("Error message should be displayed")
	public void displayError() {
		System.out.println("Error message is displayed");

	}

	@Given("Enter the company name as {string}")
	public void companyName(String compName) {
		driver.findElement(By.id("createLeadForm_companyName")).sendKeys(compName);

	}
	
	@And ("Enter the first name as {string}")
	public void firstName(String fName) {
		driver.findElement(By.id("createLeadForm_firstName")).sendKeys(fName);

	}
	
	@Given ("Enter the First name as {string}")
	public void firstNameEditLead(String fName) {
		//driver.findElement(By.id("createLeadForm_firstName")).sendKeys(fName);
		driver.findElement(By.xpath( "(//input[@name='firstName'])[3]")).sendKeys(fName);
	}
	
	@Given ("Enter the first name field as {string}")
	public void firstNameMergeLead(String firstName) {
		driver.findElement(By.xpath("//input[@name='firstName']")).sendKeys(firstName);
	}
	@And ("Enter the last name as {string}")
	public void lastName(String lName) {
		driver.findElement(By.id("createLeadForm_lastName")).sendKeys(lName);

	}
	@When ("Click the Create Lead button")
	public void buttonClick() {
		driver.findElement(By.name("submitButton")).click();

	}
	
	@When ("Click the Find Leads button")
	public void buttonClickEditLead() {
		 driver.findElement(By.xpath( "//button[text()='Find Leads']")).click();

	}
	
	@When ("Click the Update button")
	public void buttonUpdate() {
		// driver.findElement(By.xpath( "//button[text()='Find Leads']")).click();
		driver.findElement(By.xpath("//input[@value = 'Update']")).click();
	}
	
	@Then ("New lead should be created")
	public void createLead() {
		System.out.println("New lead is created successfully");

	}
	
	
	
	@When("Click the {string} link")
	public void clickLink(String link) {
		driver.findElement(By.xpath("//a[contains(text(),'" + link + "')]")).click();
	}

	@Then("{string} page should be displayed")
	public void verifyPage(String page) {
		System.out.println("The page " + page + " is displayed");

	}
	
	@When ("Click the first name link in the first name column") 
	public void clickLeadList() throws InterruptedException {
		Thread.sleep(1000);
		driver.findElement(By.xpath("//div[@class='x-grid3-cell-inner x-grid3-col-firstName']/a")).click();

	}
	
	
	  @Given ("Enter the Company name as {string}") 
	  public void companyNameUpdate(String compName) {
	  driver.findElement(By.id("updateLeadForm_companyName")).clear();
	  driver.findElement(By.id("updateLeadForm_companyName")).sendKeys(compName);
	  
	  }
	 
	  @When ("Click the Icon in the From lead text box")
	  public void clickFromIcon() {
		  driver.findElement(By.xpath("//img[@alt='Lookup']")).click();
			Set<String> allWindows = driver.getWindowHandles();
			allhandles = new ArrayList<String>(allWindows);
			driver.switchTo().window(allhandles.get(1));

	}
	  @When ("Click the Icon in the To lead text box")
	  public void clickToIcon() {
		
		  driver.switchTo().window(allhandles.get(0));
		  
		  driver.findElement(By.xpath("(//img[@alt='Lookup'])[2]")).click();
		  Set<String> allWindows2 = driver.getWindowHandles(); 
		  allhandles2 = new ArrayList<String>(allWindows2);
		  driver.switchTo().window(allhandles2.get(1));
	}
	  @When ("Click the Merge button")
	  public void mergeClick() {
			driver.switchTo().window(allhandles2.get(0));
			driver.findElement(By.xpath("//a[text()='Merge']")).click();
			driver.switchTo().alert().accept();

		}
	 
	 
}
