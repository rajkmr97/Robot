*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    Iam inside in TestSuite Setup
Suite Teardown    Log    Iam inside in TestSuite Teardown    
Test Setup    Log    Iam inside in Test Setup    
Test Teardown    Log    Iam inside in Test Teardown                

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    Log    HelloWorld...
    [Tags]    smoke
    
    
MySecondTest
    Log    HelloWorld...
    Set Tags    regression1
    Remove Tags    regression1    

MyThirdTest
    Log    HelloWorld...

FirstSeleniumTest
    Create Webdriver    Chrome    executable_path=D:/Downloads/chromedriver.exe
    Go To    https://www.google.com
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Input Text    name=q    Automation step by step
    Press Keys    name=q    ENTER
    # Click Button    name=btnK    
    Sleep    4    
    Close Browser
    Log    Test Completed  
    


SampleLoginTest
    Create Webdriver    Chrome    executable_path=D:/Downloads/chromedriver.exe
    Go To    https://www.sathya.in/
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Click Element    xpath=//span[text()='Log in']    
    Input Text    name=Email    vinodh682@gmail.com
    Input Password    name=Password    vinodeepa
    Click Button    xpath=//button[@type='submit' and @class='btn btn-primary btn-lg btn-block btn-login']    
    Click Element    xpath=//a[@class='menubar-link' and @href='/Customer/Info']    
    Click Element    xpath=//span[text()='Log out']
    Close Browser
    Log    Test Completed 
    


SampleLoginTest1
    Create Webdriver    Chrome    executable_path=D:/Downloads/chromedriver.exe
    # Open Browser    ${URL}    gc
    Go To    ${URL}
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Click Element    xpath=//span[text()='Log in']    
    Input Text    name=Email    @{CREDENTIALS}[0]
    Input Password    name=Password    &{LOGINDATA}[password]
    Click Button    xpath=//button[@type='submit' and @class='btn btn-primary btn-lg btn-block btn-login']    
    Click Element    xpath=//a[@class='menubar-link' and @href='/Customer/Info']    
    Click Element    xpath=//span[text()='Log out']
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

# Environment Variables: In-build commands
# %{username}    %{os}    ...

# Built-in Variables: Refer "https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variables"





    