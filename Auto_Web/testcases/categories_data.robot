*** Settings ***
Resource            ../keywords/common.robot
Library             DateTime
Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
### Link to Test Cases    https://docs.google.com/spreadsheets/d/1DbP64bT7QpASuE3NeiIVDdeHpdrKQon3HqF9rsUzbFU/edit#gid=1675324371 ###

### Check the User Interface of the Categories Data page ###
CA_DA_01 Verify that navigating to the right "Categories Data" page
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
   Login to admin
   When Click "QUẢN LÝ DANH MỤC" menu
   When Click "Quản lý dữ liệu" sub menu to "/data"
   Then Confirm locating exactly in "Quản lý dữ liệu" page
   Then Webpage should contain the list data from database
   Then Webpage should contain "Tạo mới" button

### Verify the creating data function ###
CA_DA_02 Verify "Tạo mới" button function
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Quản lý dữ liệu" page
    When Click "Tạo mới" button
    Then Confirm adding "/data/type" page
    Then Heading should contain "Thêm mới chuyên mục" inner Text
    Then Webpage should contain "Tên loại" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon

CA_DA_03 Create new data with the valid data
    [Tags]                                                                                        Create                                      Smoketest
    Go to page create category "Quản lý dữ liệu" with "/data"
    When Enter "test name" in "Tên loại" with "_RANDOM_"
    When Enter "number" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tên loại@_" item line

CA_DA_04 Check the update of data list after creating a new data
    [Tags]                                                                                        Create                                       Smoketest
    Go to page create category "Quản lý dữ liệu" with "/data"
    When Enter "test name" in "Tên loại" with "_RANDOM_"
    When Enter "number" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tên loại@_" should be visible in item line
    When Click on the "Xóa" button in the "_@Tên loại@_" item line

CA_DA_05 Create a new data with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to page create category "Quản lý dữ liệu" with "/data"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên loại" displayed under "Tên loại" field
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CA_DA_06 Create a new data when leaving "Tên loại" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to page create category "Quản lý dữ liệu" with "/data"
    When Enter "number" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên loại" displayed under "Tên loại" field

CA_DA_07 Create a new data when leaving "Mã" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to page create category "Quản lý dữ liệu" with "/data"
    When Enter "test name" in "Tên loại" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

### Create new data with invalid data ###
CA_DA_08 Create a new data with the existence of "Tên loại"
    [Tags]                                                                                        Create                                      Invalid
    Create a test category
    When Click "Tạo mới" button
    When Enter "test name" in "Tên loại" with "_@Tên loại@_"
    When Enter "number" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tên danh mục đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tên loại@_" item line

CA_DA_09 Create a new data with the invalid "Mã"
    [Tags]                                                                                        Create                                      Invalid
    ${Cate1}=                                                                                     Create a test category
    When Click "Tạo mới" button
    When Enter "test name" in "Tên loại" with "_RANDOM_"
    When Enter "number" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "${Cate1}" item line

### Verify the funtion of changing data information ###
CA_DA_10 Verify the changing "Tên loại" field
    [Tags]                                                                                        ChangeInfo
    Create a test category 
    When Click on the "Sửa" button in the "_@Tên loại@_" item line
    When Enter "test name" in "Tên loại" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tên loại@_" should be visible in item line
    When Click on the "Xóa" button in the "_@Tên loại@_" item line

CA_DA_11 Verify the changing "Mã" field
    [Tags]                                                                                        ChangeInfo
    Create a test category
    When Click on the "Sửa" button in the "_@Tên loại@_" item line
    When Enter "number" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tên loại@_" item line
    Then Data's information in "Mã" should be equal "_@Mã@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tên loại@_" item line

CA_DA_12 Verify the changing with the existed "Tên loại"
    [Tags]                                                                                        ChangeInfo
    ${Cate1}=                                                                                     Create a test category
    Create a test category
    When Click on the "Sửa" button in the "${Cate1}" item line
    When Enter "test name" in "Tên loại" with "_@Tên loại@_"
    When Click "Lưu lại" button
    Then User look message "Tên danh mục đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tên loại@_" item line
    When Click on the "Xóa" button in the "${Cate1}" item line

CA_DA_13 Verify the changing with the existed "Mã"
    [Tags]                                                                                        ChangeInfo
    ${Cate1}=                                                                                     Create a test category
    Create a test category
    When Click on the "Sửa" button in the "${Cate1}" item line
    When Enter "number" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tên loại@_" item line
    When Click on the "Xóa" button in the "${Cate1}" item line

### Verify the delete data function ###
CA_DA_14 Verify the delete data function
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test category
    When Click on the "Xóa" button in the "_@Tên loại@_" item line
    Then User look message "Success" popup
    Then "_@Tên loại@_" should not be visible in item line

CA_DA_15 Verify the cancel action button when delete data
    [Tags]                                                                                        Delete
    Create a test category
    When Click on the "Xóa" button in the "_@Tên loại@_" item line with cancel
    Then "_@Tên loại@_" should be visible in item line
    When Click on the "Xóa" button in the "_@Tên loại@_" item line
    Then User look message "Success" popup

*** Keywords ***
Go to "Quản lý dữ liệu" page
    Login to admin
    Click "QUẢN LÝ DANH MỤC" menu
    Click "Quản lý dữ liệu" sub menu to "/data"

Go to page create category "${name}" with "${url}"
    Login to admin
    Click "QUẢN LÝ DANH MỤC" menu
    Click "${name}" sub menu to "${url}"
    Click "Tạo mới" button

Create a test category
  ${condition}=          Run Keyword And Return Status                Confirm locating exactly in "Quản lý dữ liệu" page
  IF    '${condition}' == 'True'
    Click "Tạo mới" button
  ELSE
    Go to "Quản lý dữ liệu" page
    Click "Tạo mới" button  
  END
  Enter "test name" in "Tên loại" with "_RANDOM_"
  Enter "number" in "Mã" with "_RANDOM_"
  ${text}=            Check Text                _@Tên loại@_
  ${name}=            Set Variable              ${text}
  [Return]            ${name}
  Click "Lưu lại" button
  User look message "Success" popup
