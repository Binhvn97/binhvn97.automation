*** Settings ***
Resource                ../keywords/common.robot
Test Setup              Setup
Test Teardown           Tear Down

*** Test Cases ***
### Link to Testcases: https://docs.google.com/spreadsheets/d/1DbP64bT7QpASuE3NeiIVDdeHpdrKQon3HqF9rsUzbFU/edit#gid=1999164743 ###

### Verify the User Interface of the Login Page ###
LO_02 Verify showing password when click on eye icon in "Mật khẩu" field
  [Tags]                                                                                            Login                            UI
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Click on eye icon in "Mật khẩu" field
  Then The hidden password in "Mật khẩu" field should be visibled as "_@Mật khẩu@_"

LO_03 Verify that Đăng nhập successfully with valid Email and Mật khẩu
  [Tags]                                                                                            Login                            Valid                            Smoketest
  When Enter "email" in "Email" with "admin@gmail.com"
  When Enter "password" in "Mật khẩu" with "123123"
  When Click "Đăng nhập" button
  Then User look message "Success" popup

LO_03 Verify that log in with leaving the blank field in "Email"
  [Tags]                                                                                            Login                            BlankField                       Smoketest
  When Enter "text" in "Mật khẩu" with "123123"
  When Click "Đăng nhập" button
  Then Required message "Xin vui lòng nhập email" displayed under "Email" field

LO_04 Verify that log in with leaving the blank field in "Mật khẩu"
  [Tags]                                                                                            Login                            BlankField                       Smoketest
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Click "Đăng nhập" button
  Then Required message "Xin vui lòng nhập mật khẩu" displayed under "Mật khẩu" field

DN-07 Verify that Đăng nhập unsuccessfully because no enter Email and Mật khẩu
  [Tags]                @smoketest               @regression
  When Click "Đăng nhập" button
  Then Required message "Email" displayed under "Xin vui lòng nhập email" field
  Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field

DN-05 Verify that Đăng nhập unsuccessfully because no enter Email
  [Tags]                @smoketest               @regression
  When Enter "text" in "Mật khẩu" with "123123"
  When Click "Đăng nhập" button
  Then Required message "Email" displayed under "Xin vui lòng nhập email" field

DN-06 Verify that Đăng nhập unsuccessfully because no enter Password
  [Tags]                @smoketest               @regression
  When Enter "email" in "Email" with "admin@gmail.com"
  When Click "Đăng nhập" button
  Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
