*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
SampleLoginTest2
    Create Webdriver    Chrome    executable_path=D:/Downloads/chromedriver.exe
    Go To    ${URL}
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Click Element    xpath=//span[text()='Log in']    
    Input Text    name=Email    @{CREDENTIALS}[0]
    Input Password    name=Password    &{LOGINDATA}[password]
    LoginKW
    Close Browser
    Log    Test Completed  
    Log    This test is conducted by %{username} on %{os} operating system         


*** Variables ***
# Scalar Variables       
${URL}    https://www.sathya.in/

# List Variables
@{CREDENTIALS}    vinodh682@gmail.com    vinodeepa 

# Dictionary Variables   
&{LOGINDATA}    username=vinodh682@gmail.com    password=vinodeepa


*** Keywords ***
LoginKW
    
    Click Button    xpath=//button[@type='submit' and @class='btn btn-primary btn-lg btn-block btn-login']    
    Click Element    xpath=//a[@class='menubar-link' and @href='/Customer/Info']    
    Click Element    xpath=//span[text()='Log out']
    
