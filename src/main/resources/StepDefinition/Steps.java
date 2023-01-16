package StepDefinition;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Steps {
WebDriver driver;
	
@Given("Abrir Chrome")
public void abrir_Chrome() {
	System.out.println("En este paso abre el navegador google Chrome");
	System.setProperty("webdriver.chrome.driver", "C:\\Users\\lorca\\Downloads\\chromedriver.exe");
	driver = new ChromeDriver();
	driver.manage().window().maximize();
	driver.get("http://localhost:8081/ReservaHora/index.jsp");
}

@When("ingresa Username {string} y Password {string}")
public void ingresa_Username_y_Password(String string, String string2) {
	System.out.println("En este paso ingresa las credenciales de usuario");
	System.out.println("En este paso ingresa el nomre de usuario y contraseña en la página");
	driver.findElement(By.name("username")).sendKeys(string);
	driver.findElement(By.name("password")).sendKeys(string2);
}

@Then("inicia sesion")
public void inicia_sesion() {
	System.out.println("En este paso inicia sesion con los datos ingresados desde el archivo MyTest.feature");
	driver.findElement(By.id("logbtn")).click();
}
	
}