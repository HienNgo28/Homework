*** Settings ***
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Documentation]    Tìm kiếm và mua sản phẩm thứ 4 nồi chiên
    [Tags]    TC_01
    Truy cập trang Tiki.vn 
    Sleep    2s
    Nhập vào ô tìm kiếm "nồi chiên" 
    Sleep    2s
    Click vào nồi chiên không dầu
    Sleep    2s
    Click vào sản phẩm thứ 4
    Sleep    2s
    Click button Chọn mua
    Sleep    2s
    Verify popup có chứa Xin chào
    Sleep    2s





*** Keywords ***
Truy cập trang Tiki.vn
    Open Browser    https://tiki.vn/    chrome
Nhập vào ô tìm kiếm "nồi chiên"
    Input Text    //input[@data-view-id="main_search_form_input"]    nồi c    hiên
Click vào nồi chiên không dầu
    Wait Until Element Is Visible    //div[text()="nồi chiên không dầu"]    5s
    Click Element    //div[text()="nồi chiên không dầu"]
Click vào sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[4]    5s
    Click Element    //div[@data-view-id="product_list_container"]/div[4]
Click button Chọn mua
    Click Button    //button[text()='Chọn mua']
Verify popup có chứa Xin chào
    Wait Until Element Is Visible    //h4[contains(text(),"Xin chào")]


