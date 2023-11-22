*** Settings ***
Resource            ../keywords/common.robot
Library             DateTime
Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
### Link to Test Cases    https://docs.google.com/spreadsheets/d/1cZhQbeh2IJzFWzTHMdGR0A_KvpYyA5WOEok3p9CgtIg/edit#gid=775904758 ###

### Check the User Interface of the Parameter page ###
CH_01 Verify that navigating to the right "Parameter" page
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Login to admin
    When Click "SUPERADMIN" menu
    When Click "Cấu hình hệ thống" sub menu to "/parameter"
    Then Confirm locating exactly in "Cấu hình hệ thống" page
    Then Heading should contain "ĐIỀU HƯỚNG" inner Text
    Then Webpage should contain the search function
    Then Webpage should contain "Tạo mới" button

### Verify the creating data function ###
CH_02 Verify "Tạo mới" button function
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Cấu hình hệ thống" page
    When Click "Tạo mới" button
    Then Heading of separated group should contain "Thông tin" inner Text
    Then Webpage should contain "Tên tham số" input field
    Then Webpage should contain "Giá trị tham số" input field
    Then Webpage should contain "Nhóm" input field
    Then Webpage should contain "Ghi chú" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Hệ thống" switch button

CH_03 Create new data with the valid parameter
    [Tags]                                                                                        Create                                       Smoketest
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "word" in "Nhóm" with "_RANDOM_"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên tham số@_" tree to delete

CH_04 Check the update of data list after creating a new data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Cấu hình hệ thống" page
    When Create a test data
    Then "_@Tên tham số@_" should be visible in the tree line
    When Click on the "_@Tên tham số@_" tree to delete

### Create new data with the blank field ###
CH_05 Verify that CAN NOT create a new data by leaving all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên tham số" displayed under "Tên tham số" field
    Then Required message "Xin vui lòng nhập giá trị tham số" displayed under "Giá trị tham số" field

CH_06 Verify that CAN NOT create a new data by leaving a blank field in "Tên tham số"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "word" in "Nhóm" with "_RANDOM_"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tên tham số" displayed under "Tên tham số" field

CH_07 Verify that CAN NOT create a new data by leaving a blank field in "Giá trị tham số"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "word" in "Nhóm" with "_RANDOM_"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập giá trị tham số" displayed under "Giá trị tham số" field

CH_08 Verify that CAN create a new data by leaving a blank field in "Nhóm"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "null" should be visible in the tree line
    When Click on the "_@Tên tham số@_" tree to delete

CH_09 Verify that CAN create a new data by leaving a blank field in "Ghi chú"
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Cấu hình hệ thống" with "/parameter"
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "word" in "Nhóm" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên tham số@_" tree to delete

CH_10 Verify that CAN NOT create a new parameter in the same group with the existent data in "Tên tham số"
    [Tags]                                                                                        Create                                       Invalid
    Create a test data
    When Click "Tạo mới" button
    When Enter "test name" in "Tên tham số" with "_@Tên tham số@_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "word" in "Nhóm" with "_@Nhóm@_"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tên tham số đã tồn tại" pop up
    When Click on the "_@Tên tham số@_" tree to delete

### Verify the funtion of changing data information ###
CH_11 Verify that CAN change parameter's data in "Tên tham số" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên tham số@_" tree to edit
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tên tham số@_" should be visible in the tree line
    When Click on the "_@Tên tham số@_" tree to delete

CH_12 Verify that CAN change parameter's data in "Giá trị tham số" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên tham số@_" tree to edit
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên tham số@_" tree to edit
    Then Data's information in "Giá trị tham số" should be equal "_@Giá trị tham số@_" 
    When Click on the "_@Tên tham số@_" tree to delete

CH_13 Verify that CAN change parameter's data in "Nhóm" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên tham số@_" tree to edit
    When Enter "word" in "Nhóm" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên tham số@_" tree to edit
    Then Data's information in "Nhóm" should be equal "_@Nhóm@_" 
    When Click on the "_@Tên tham số@_" tree to delete

CH_14 Verify that CAN change parameter's data in "Ghi chú" field
    [Tags]                                                                                        ChangeInfo
    Create a test data
    When Click on the "_@Tên tham số@_" tree to edit
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "_@Tên tham số@_" tree to edit
    Then Data's information in "Ghi chú" should be equal "_@Ghi chú@_"
    When Click on the "_@Tên tham số@_" tree to delete

### Verify the search data function ###
CH_15 Verify the search function when enter the existed name
    [Tags]                                                                                        Search                                     Smoketest
    Create a test data
    When Enter "test name" in placeholder "Nhập để tìm kiếm" with "_@Tên tham số@_"
    Then "_@Tên tham số@_" should be visible in the tree line
    When Click on the "_@Tên tham số@_" tree to delete

CH_16 Verify the search function when enter the name was not existed
    [Tags]                                                                                        Search                                     Smoketest
    Create a test data
    When Enter "test name" in placeholder "Nhập để tìm kiếm" with "_RANDOM_"
    When Click on magnifier icon in search box
    Then "_@Tên tham số@_" should not be visible in the tree line
    When Click tree select "_@Nhóm@_" to show data
    When Click on the "_@Tên tham số@_" tree to delete

### Verify the delete data function ###
CH_17 Verify the delete data function
    [Tags]                                                                                        Delete                                     Smoketest
    Create a test data
    When Click on the "_@Tên tham số@_" tree to delete
    Then User look message "Success" popup
    Then "_@Tên tham số@_" should not be visible in the tree line

CH_16 Verify the cancel action button when delete data
    [Tags]                                                                                        Delete
    Create a test data
    When Click on the "_@Tên tham số@_" tree to delete with cancel
    Then "_@Tên tham số@_" should be visible in the tree line
    When Click on the "_@Tên tham số@_" tree to delete


*** Keywords ***
Go to "${page}" page
    Login to admin
    Click "SUPERADMIN" menu
    Click "Cấu hình hệ thống" sub menu to "/parameter"

Go to page create data "${name}" with "${url}"
  Login to admin
  Click "SUPERADMIN" menu
  Click "${name}" sub menu to "${url}"
  Click "Tạo mới" button

Create a test data
  ${condition}=          Run Keyword And Return Status                 Confirm locating exactly in "Cấu hình hệ thống" page
  IF    '${condition}' == 'True'
    Click "Tạo mới" button
  ELSE
    Go to "Cấu hình hệ thống" page
    Click "Tạo mới" button
  END
  Enter "test name" in "Tên tham số" with "_RANDOM_"
    ${text}=                Check Text                    _@Tên tham số@_
    ${name}=                Set Variable                  ${text}
    [Return]                ${name}
  Enter "text" in "Giá trị tham số" with "_RANDOM_"
  Enter "word" in "Nhóm" with "_RANDOM_"
  Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
  Click "Lưu lại" button
  User look message "Success" popup

