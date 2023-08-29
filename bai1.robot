*** Settings ***
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Đăng nhập vào Guru 99
    [Documentation]    Đăng nhập vào Guru 99
    [Tags]    TC_01
    Truy cập trang Guru 99
    Sleep    2s
    Nhập email address
    Nhập password
    Click button Sign in
    Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    #Sleep    5s





*** Keywords ***
Truy cập trang Guru 99
    Open Browser    https://demo.guru99.com/test/login.html    chrome

Nhập email address
    Input Text     //input[@id='email']    hiennt60
Nhập password
    Input Text    //input[@id='passwd']    demo123
Click button Sign in
    Click Button    //button[@id="SubmitLogin"]
Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Wait Until Element Is Visible    //h3[contains(text(),'Successfully Logged in...')]    10s