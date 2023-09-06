*** Settings ***
Resource    ..//Keyword/Google_keyword.robot
Library       SeleniumLibrary

*** Test Cases ***
[AU_01] - Tìm kiếm từ khóa MSB
    [Documentation]    Tìm kiếm từ khóa MSB
    [Tags]    TC_01
    Truy cập trang google.com
    
    Nhập vào ô tìm kiếm "MSB"
    
    Click vào gợi ý đầu tiên
    Click vào kết quả đầu tiên
    
    Tắt popup
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    


# *** Keywords ***
# Truy cập trang google.com
#     Open Browser    https://google.com    chrome
#     Maximize Browser Window


# Nhập vào ô tìm kiếm "MSB"
#     Input Text    //textarea[@name="q"]    MSB

# Click vào gợi ý đầu tiên
#     Click Element    //div[@id="jZ2SBf"]

# Click vào kết quả đầu tiên
#     Wait Until Element Is Visible    //div[@id="rso"]/div[1]//a/*[text()="MSB"]    10s
#     Click Element    //div[@id="rso"]/div[1]//a/*[text()="MSB"]
# Tắt popup
#     Wait Until Element Is Visible    //*[@id="fragment-34902-chcv"]/div/div/div/span    5s
#     Click Element    //div[@id="fragment-34202-joci"]/div/div/div/span
# Verify trang có chứa "Chọn thẻ phù hợp với bạn"
#     Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')]    10s