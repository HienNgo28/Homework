*** Settings ***
Resource    ../Keyword/Login_guru_keyword.robot
Resource    ../Keyword/Common_keyword.robot
Library       SeleniumLibrary    

*** Test Cases ***
[AU_01] - Đăng nhập vào Guru 99
    [Documentation]    Đăng nhập vào Guru 99
    [Tags]    TC_01
    Truy cập trang Guru 99
    Nhập email address
    Nhập password
    Click button Sign in
    Verify màn hình có chứa dòng chữ "Successfully Logged in..."





