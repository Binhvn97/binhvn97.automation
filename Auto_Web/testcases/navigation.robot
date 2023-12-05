*** Settings ***
Resource            ../keywords/common.robot
Library             DateTime
Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
### Link to Test Cases    https://docs.google.com/spreadsheets/d/1DbP64bT7QpASuE3NeiIVDdeHpdrKQon3HqF9rsUzbFU/edit#gid=496273627   ###

### Check the User Interface of the Navigation page ###
DH_01 Verify that navigating to the right "Navigation" page
    [Tags]                                                                                        MainPage                                    UI                                          Smoketest
    Login to admin
    When Click "SUPERADMIN" menu
    When Click "Phân quyền điều hướng" sub menu to "/navigation"
    Then Confirm locating exactly in "Phân quyền điều hướng" page
    Then Heading should contain "ĐIỀU HƯỚNG" inner Text
    Then Webpage should contain the search function
    Then Webpage should contain "Tạo mới" button

### Verify the creating data function ###
DH_02 Verify "Tạo mới" button function
    [Tags]                                                                                        Create
    Go to "Điều hướng" page
    When Click "Tạo mới" button
    Then Heading of separated group should contain "Thông tin" inner Text
    Then Webpage should contain "Tên điều hướng" input field
    Then Webpage should contain "Mã điều hướng" input field
    Then Webpage should contain "Link" input field
    Then Webpage should contain "Số thứ tự" input field
    Then Webpage should contain "Biểu tượng" input field
    Then Webpage should contain "Điều hướng cha" select field
    Then Webpage should contain "Tham số truy vấn" input field
    Then Webpage should contain "Kích hoạt" switch button
    Then Webpage should contain "Gán nhóm" assign list
    Then Webpage should contain "Lưu lại" button

DH_03 Verify that CAN create new data with the valid navigation
    [Tags]                                                                                        Create
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Enter "word" in "Mã điều hướng" with "_RANDOM_"
    When Enter "word" in "Link" with "/_@Mã điều hướng@_"
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_04 Check the update of data list after creating a new data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Điều hướng" page
    When Create a test data
    Then "_@Tên điều hướng@_" should be visible in the tree line
    When Click on the "_@Tên điều hướng@_" tree to delete

### Create new data with blank field ###
DH_05 Verify that CAN NOT create a new code data by leaving all blank field
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên điều hướng" displayed under "Tên điều hướng" field
    Then Required message "Xin vui lòng nhập mã điều hướng" displayed under "Mã điều hướng" field
    Then Required message "Xin vui lòng nhập link" displayed under "Link" field
    Then Required message "Xin vui lòng nhập số thứ tự" displayed under "Số thứ tự" field

DH_06 Verify that CAN NOT create a new code data by leaving a blank field in "Tên điều hướng"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Enter "word" in "Mã điều hướng" with "_RANDOM_"
    When Enter "word" in "Link" with "/_@Mã điều hướng@_"
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên điều hướng" displayed under "Tên điều hướng" field

DH_07 Verify that CAN NOT create a new code data by leaving a blank field in "Mã điều hướng"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Enter "word" in "Link" with "/_@Mã điều hướng@_"
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã điều hướng" displayed under "Mã điều hướng" field

DH_08 Verify that CAN NOT create a new code data by leaving a blank field in "Link"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Enter "word" in "Mã điều hướng" with "_RANDOM_"
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập link" displayed under "Link" field

DH_09 Verify that CAN NOT create a new code data by leaving a blank field in "Số thứ tự"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Phân quyền điều hướng" with "/navigation"
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Enter "word" in "Mã điều hướng" with "_RANDOM_"
    When Enter "word" in "Link" with "/_@Mã điều hướng@_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập số thứ tự" displayed under "Số thứ tự" field

### Verify the create data function when enter the invalid data  ###
# DH_10 Verify that CAN NOT create a new code by entering invalid data in "Tên điều hướng"
#     [Tags]                                                                                        Create                                       Invalid
#     ${Code1}=                                                                                     Create a test data 
#     When Click "Tạo mới" button
#     When Enter "test name" in "Tên điều hướng" with "_@Tên điều hướng@_"
#     When Enter "word" in "Mã điều hướng" with "_RANDOM_"
#     When Enter "word" in "Link" with "/_@Mã điều hướng@_"
#     When Enter "number" in "Số thứ tự" with "_RANDOM_"
#     When Enter "text" in "Biểu tượng" with "las la-folder-minus"
#     When Click tree select "Điều hướng cha" with "DASHBOARD"
#     When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
#     When Click switch "Kích hoạt" to change button status
#     When Click assign list "Order Side, Farmer Side"
#     When Click "Lưu lại" button
#     Then User look message "Tên điều hướng đã tồn tại" popup
#     When Click on the "${Code1}" tree to delete

DH_11 Verify that CAN NOT create a code data by enter the invalid data in "Mã điều hướng"
    [Tags]                                                                                        Create                                       Invalid
    ${Code1}=                                                                                     Create a test data 
    When Click "Tạo mới" button
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Enter "word" in "Mã điều hướng" with "_@Mã điều hướng@_"
    When Enter "word" in "Link" with "/_RANDOM_"
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Enter "text" in "Biểu tượng" with "las la-folder-minus"
    When Click tree select "Điều hướng cha" with "DASHBOARD"
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click switch "Kích hoạt" to change button status
    When Click assign list "Order Side, Farmer Side"
    When Click "Lưu lại" button
    Then User look message "Mã: _@Mã điều hướng@_ đã tồn tại" popup
    When Click on the "${Code1}" tree to delete

# DH_12 Verify that CAN NOT create a code data by enter the invalid data in "Link"
#     [Tags]                                                                                        Create                                       Invalid
#     ${Code1}=                                                                                     Create a test data 
#     When Click "Tạo mới" button
#     When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
#     When Enter "word" in "Mã điều hướng" with "_RANDOM_"
#     When Enter "word" in "Link" with "/_@Link@_"
#     When Enter "number" in "Số thứ tự" with "_RANDOM_"
#     When Enter "text" in "Biểu tượng" with "las la-folder-minus"
#     When Click tree select "Điều hướng cha" with "DASHBOARD"
#     When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
#     When Click switch "Kích hoạt" to change button status
#     When Click assign list "Order Side, Farmer Side"
#     When Click "Lưu lại" button
#     Then User look message "Link đã tồn tại" popup
#     When Click on the "${Code1}" tree to delete

# DH_13 Verify that CAN NOT create a code data by enter the invalid data in "Số thứ tự"
#     [Tags]                                                                                        Create                                       Invalid
#     ${Code1}=                                                                                     Create a test data 
#     When Click "Tạo mới" button
#     When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
#     When Enter "word" in "Mã điều hướng" with "_RANDOM_"
#     When Enter "word" in "Link" with "/_@Link@_"
#     When Enter "number" in "Số thứ tự" with "_@Số thứ tự@_"
#     When Enter "text" in "Biểu tượng" with "las la-folder-minus"
#     When Click tree select "Điều hướng cha" with "DASHBOARD"
#     When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
#     When Click switch "Kích hoạt" to change button status
#     When Click assign list "Order Side, Farmer Side"
#     When Click "Lưu lại" button
#     Then User look message "Số thứ tự đã được sử dụng" popup
#     When Click on the "${Code1}" tree to delete

### Verify the funtion of changing data information ###
DH_14 Verify that CAN change the code's information in "Tên điều hướng" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tên điều hướng@_" should be visible in the tree line
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_15 Verify that CAN change the code's information in "Mã điều hướng" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "word" in "Mã điều hướng" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Mã điều hướng" should be equal "_@Mã điều hướng@_"
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_16 Verify that CAN change the code's information in "Link" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "word" in "Link" with "/_@Mã điều hướng@_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Link" should be equal "_@Link@_"
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_17 Verify that CAN change the code's information in "Số thứ tự" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "number" in "Số thứ tự" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Số thứ tự" should be equal "_@Số thứ tự@_"
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_18 Verify that CAN change the code's information in "Biểu tượng" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "text" in "Biểu tượng" with "las la-blind"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Biểu tượng" should be equal "_@Biểu tượng@_"
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_19 Verify that CAN change the code's information in "Điều hướng cha" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Click tree select "Điều hướng cha" with "QUẢN LÝ DANH MỤC"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Điều hướng cha" should be equal "_@Điều hướng cha@_"
    When Click on the "_@Tên điều hướng@_" tree to delete
DH_20 Verify that CAN change the code's information in "Tham số truy vấn" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Enter "text" in "Tham số truy vấn" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then Data's information in "Tham số truy vấn" should be equal "_@Tham số truy vấn@_"
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_21 Verify that CAN change the code's information in "Kích hoạt" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Click switch "Kích hoạt" to change button status
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then The status of "Kích hoạt" switch button should not be activated
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_22 Verify that CAN change the code's information in "Gán nhóm" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to edit
    When Click unassign list "Farmer Side"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên điều hướng@_" tree to edit
    Then The assign list in "Nhóm đã chọn" should not contain "Famer Side"
    When Click on the "_@Tên điều hướng@_" tree to delete

# DH_23 Verify that CAN NOT change the code information by entering the existed "Tên điều hướng"
#     [Tags]                                                                                        ChangeInfo                                Invalid
#     ${Code1}=                                                                                     Create a test data
#     Create a test data
#     When Click on the "${Code1}" tree to edit
#     When Enter "test name" in "Tên điều hướng" with "_@Tên điều hướng@_"
#     When Click "Lưu lại" button
#     Then User look message "Tên điều hướng đã tồn tại" popup
#     When Click on the "_@Tên điều hướng@_" tree to delete
#     When Click on the "${Code1}" tree to delete

DH_24 Verify that CAN NOT change the code information by entering the existed "Mã điều hướng"
    [Tags]                                                                                        ChangeInfo                                Invalid
    ${Code1}=                                                                                     Create a test data 
    Create a test data
    When Click on the "${Code1}" tree to edit
    When Enter "word" in "Mã điều hướng" with "_@Mã điều hướng@_"
    When Click "Lưu lại" button
    Then User look message "Mã: _@Mã điều hướng@_ đã tồn tại" popup
    When Click on the "_@Tên điều hướng@_" tree to delete
    When Click on the "${Code1}" tree to delete

# DH_25 Verify that CAN NOT change the code information by entering the existed "Link"
#     [Tags]                                                                                        ChangeInfo                                Invalid
#     ${Code1}=                                                                                     Create a test data 
#     Create a test data
#     When Click on the "${Code1}" tree to edit
#     When Enter "word" in "Link" with "_@Link@_"
#     When Click "Lưu lại" button
#     Then User look message "Link đã tồn tại" popup
#     When Click on the "_@Tên điều hướng@_" tree to delete
#     When Click on the "${Code1}" tree to delete

# DH_26 Verify that CAN NOT change the code information by entering the existed "Số thứ tự"
#     [Tags]                                                                                        ChangeInfo                                Invalid
#     ${Code1}=                                                                                     Create a test data 
#     Create a test data
#     When Click on the "${Code1}" tree to edit
#     When Enter "number" in "Thứ tự" with "_@Thứ tự@_"
#     When Click "Lưu lại" button
#     Then User look message "Thứ tự đã tồn tại" popup
#     When Click on the "_@Tên điều hướng@_" tree to delete
#     When Click on the "${Code1}" tree to delete

### Verify the search function ###
DH_27 Verify the search function when enter the existed name
    [Tags]                                                                                        Search
    Create a test data
    When Enter "test name" in placeholder "Nhập để tìm kiếm" with "_@Tên điều hướng@_"
    Then "_@Tên điều hướng@_" should be visible in the tree line
    When Click on the "_@Tên điều hướng@_" tree to delete

DH_28 Verify the search function when enter the name was not existed
    [Tags]                                                                                        Search
    Create a test data
    When Enter "text" in placeholder "Nhập để tìm kiếm" with "_RANDOM_"
    Then "_@Tên điều hướng@_" should not be visible in the tree line
    When Enter "test name" in placeholder "Nhập để tìm kiếm" with ""
    When Click tree select "DASHBOARD" to show data
    Then "_@Tên điều hướng@_" should be visible in the tree line
    When Click on the "_@Tên điều hướng@_" tree to delete

### Verify the delete data function ###
DH_29 Verify the delete data function
    [Tags]                                                                                        Delete
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to delete
    Then User look message "Success" popup
    Then "_@Tên điều hướng@_" should not be visible in the tree line


DH_30 Verify the cancel action button when delete data
    [Tags]                                                                                        Delete
    Create a test data
    When Click on the "_@Tên điều hướng@_" tree to delete with cancel
    Then "_@Tên điều hướng@_" should be visible in the tree line
    When Click on the "_@Tên điều hướng@_" tree to delete


*** Keywords ***
Go to "Điều hướng" page
    Login to admin
    Click "SUPERADMIN" menu
    Click "Phân quyền điều hướng" sub menu to "/navigation"

Go to page create data "${name}" with "${url}"
  Login to admin
  Click "SUPERADMIN" menu
  Click "${name}" sub menu to "${url}"
  Click "Tạo mới" button

Create a test data
  ${condition}=             Run Keyword And Return Status                 Confirm locating exactly in "Phân quyền điều hướng" page
  IF    '${condition}' == 'True'
    Click "Tạo mới" button
  ELSE
    Go to "Điều hướng" page
    Click "Tạo mới" button
  END
  Enter "test name" in "Tên điều hướng" with "_RANDOM_"
    ${text}=                Check Text                                    _@Tên điều hướng@_
    ${name}=                Set Variable                                  ${text}
    [Return]                ${name} 
  Enter "word" in "Mã điều hướng" with "_RANDOM_"
  Enter "word" in "Link" with "/_@Mã điều hướng@_"
  Enter "number" in "Số thứ tự" with "_RANDOM_"
  Enter "text" in "Biểu tượng" with "las la-folder-minus"
  Click tree select "Điều hướng cha" with "DASHBOARD"
  Enter "text" in "Tham số truy vấn" with "_RANDOM_"
  Click switch "Kích hoạt" to change button status
  Click assign list "Order Side, Farmer Side"
  Click "Lưu lại" button
  User look message "Success" popup


