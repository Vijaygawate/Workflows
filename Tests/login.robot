*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

Suite Setup    Open Browser    https://dev.weav.ai/    Chrome
#Suite Teardown    Close Browser

*** Variables ***
${GS_PASSWORD}			noway

*** Test Cases ***

Login Test
    Set Window Size    1920    1080   # Set custom width and height for the browser window
    ${connector_name} =  Generate Random String  8  [NUMBERS]
    [Documentation]    Test logging into dev.weav.ai

    Wait Until Element Is Visible  id:outlined-error  timeout=60

    Input Text    id=outlined-error    test@email.com
    Input Password   xpath=/html/body/div/div[2]/main/div/div/div[2]/div/div/form/div[1]/div[2]/div/div/input    ${GS_PASSWORD}
    Capture Page Screenshot    screenshot.png
    Click Button    xpath=/html/body/div/div[2]/main/div/div/div[2]/div/div/form/div[2]/button

    Wait Until Element Is Visible  xpath=/html/body/div[1]/div[2]/main/div/main/div[2]/div[1]/div/div[1]/div/input    timeout=20s

#    Input Text  xpath=/html/body/div[1]/div[2]/main/div/main/div[2]/div[1]/div/div[1]/div/input  iquan
#    Click Button  xpath=//*[@id="root"]/div[2]/main/div/header/div/header/div/button[5]
#    Click Button  xpath=//*[@id="primary-search-account-menu"]/div[3]/ul/li[2]/button
#    Capture Page Screenshot    screenshot2.png

# Click Start button
    Click Button  xpath=/html/body/div[1]/div[2]/main/div/main/div[2]/div[2]/div/button
    Capture Page Screenshot    screenshot3.png

# Click create dataset box
    Click Element  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div/div[2]/div/div/div/div/div/div/div/div[1]/div
    Capture Page Screenshot    screenshot4.png

# Click Add from external source
    Click Element  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div/div[2]/div/div/div/div/div/div[2]/div/div[2]/div/div/h6

    Wait Until Element Is Visible  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[2]/div[2]/div/div/div/div/div/div[2]/div/div[5]/div/div[2]/h5    timeout=10s
    Capture Page Screenshot    screenshot5.png

# CLick on file connector
    Click Element  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[2]/div[2]/div/div/div/div/div/div[2]/div/div[5]
    Capture Page Screenshot    screenshot6.png
    sleep  10s

# CLick on NO if reusable screen comes
    Click Element  xpath=/html/body/div[3]/div[3]/div/div[2]/button[2]

# Input connector name
    Input Text    xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[3]/div[2]/div/div/div/div[1]/div/div/div/div/input    ${connector_name}
    Capture Page Screenshot    screenshot7.png

# Input connector url
    Input Text    xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[3]/div[2]/div/div/div/div[3]/div/div[2]/div[1]/div[1]/div/div/div[1]/div/div/input    https://drive.google.com/uc?export=download&id=1AxTQG5yAkXvuTrS3gDv_9hhoxgXxkJGS
    Capture Page Screenshot    screenshot8.png
    sleep  5s

# Click on Test Connection button
    Click Button    xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[3]/div[2]/div/div/div/div[3]/div/div[2]/div[1]/div[2]/div[1]/button
    Capture Page Screenshot    screenshot9.png

# Wait for Next button to appear
    Wait Until Element Is Visible  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[3]/div[2]/div/div/div/div[3]/div/div[2]/div[1]/div[2]/div[2]/div/button    timeout=90s
    Capture Page Screenshot    screenshot10.png

# CLick the Next button
    Click Button    xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div/div[3]/div[2]/div/div/div/div[3]/div/div[2]/div[1]/div[2]/div[2]/div/button
    Capture Page Screenshot    screenshot11.png

# Wait for next page to appear
    Wait Until Element Is Visible  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div/div/div/div[2]/div/div[1]/div/div[2]/div[2]/p[2]
    Capture Page Screenshot    screenshot12.png

# Click on Select workspace button
    Click Button    xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/div/button
    Capture Page Screenshot    screenshot13.png

# Wait for the Element to appear
    Wait Until Element Is Visible  xpath=/html/body/div[4]/div[3]/div/div/h2/p
    Capture Page Screenshot    screenshot14.png

# Click on Drop down
    Click Element  xpath=/html/body/div[4]/div[3]/div/div/div/div/div/div/div
    Capture Page Screenshot    screenshot15.png

# click on create workspace button
    Click Element  xpath=/html/body/div[5]/div[3]/ul/li[1]/button
    sleep  2s

# Input the new workspace name
    Input Text  xpath=/html/body/div[4]/div[3]/div/div/div/div[2]/div/div[1]/div/div/input    ${connector_name}
    sleep  2s
    Capture Page Screenshot    screenshot16.png
    Click Button  xpath=/html/body/div[4]/div[3]/div/div/div/div[2]/div/button
    Capture Page Screenshot    screenshot17.png

# Click on start download
    Click Button  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div/div/span/button

# Wait for the View Data browser button to enable
    Wait Until Element is Enabled  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div[3]/div/div/div[1]/button    timeout=300s
    Capture Page Screenshot    screenshot18.png
    Click Button  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div[3]/div/div/div[1]/button
    sleep  5s

# Click on ready for model trainign button
    Click Button  xpath=/html/body/div[3]/div[3]/div/div/div/div[5]/button
    Wait Until Element Is Visible  xpath=/html/body/div[1]/div[2]/main/div/main/div[3]/div[2]/div[2]/div/div/div/table/thead/tr/th[1]/p
    Capture Page Screenshot    screenshot19.png
