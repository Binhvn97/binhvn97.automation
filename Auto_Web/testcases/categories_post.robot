*** Settings ***
Resource            ../keywords/common.robot
Library             DateTime
Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
### Link to Test Cases    https://docs.google.com/spreadsheets/d/1DbP64bT7QpASuE3NeiIVDdeHpdrKQon3HqF9rsUzbFU/edit#gid=574716846 ###

### Check the User Interface of the Data page ###
CA_PO_01 Verify that navigating to the right "Categories Post" page
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Login to admin
    When Click "QUẢN LÝ DANH MỤC" menu
    When Click "Post" sub menu to "/post"
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button

CA_PO_02 Verify that highlight category line after clicking on it
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Post" page
    When Click "Tạo mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "paragraph" in "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    When Select on the "_@Tiêu đề@_" item line
    Then "_@Tiêu đề@_" item line should be highlighted 
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

### Verify the creating data function ###
CA_PO_03 Verify "Tạo mới" button function
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Post" page
    When Click "Tạo mới" button
    Then Confirm adding "/post/categories" page
    Then Heading should contain "Thêm mới chuyên mục" inner Text
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Slug" input field
    Then Webpage should contain "Giới thiệu" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button

CA_PO_04 Create new data with the valid post
    [Tags]                                                                                        Create                                       Smoketest
    Go to page create data "Post" with "/post"
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Thêm mới danh mục bài viết thành công" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_05 Check the update of data list after creating a new data
    [Tags]                                                                                        Create                                       Smoketest
    Go to page create data "Post" with "/post"
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Thêm mới danh mục bài viết thành công" popup
    Then "_@Tiêu đề@_" should be visible in item line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_06 Create a new data with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Post" with "/post"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CA_DA_07 Create a new data when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Post" with "/post"
    When Enter "text" in "Slug" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CA_DA_08 Create a new data when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to page create data "Post" with "/post"
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Thêm mới danh mục bài viết thành công" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_09 Create a new data with the invalid "Tiêu đề"
    [Tags]                                                                                        Create                                    Invalid
    Create a test category
    When Click "Tạo mới" button
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_10 Check the "Đóng lại" button
    [Tags]                                                                                        Create                                    Button
    Go to page create data "Post" with "/post"
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button

CA_PO_11_01 Check the left arrow icon ("Trở lại" button)
    [Tags]                                                                                        Create                                    Button
    Go to page create data "Post" with "/post"
    When Click on the left arrow icon
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button

CA_PO_11_01 Check the (left arrow icon) "Trở lại" button
    [Tags]                                                                                        Create                                    Button
    Go to page create data "Post" with "/post"
    When Click "Trở lại" button
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button

### Verify the funtion of changing data information ###
CA_PO_12 Verify the changing "Tiêu đề" field
    [Tags]                                                                                        ChangeInfo
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Cập nhật bài viết thành công" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

# CA_PO_12_02 Verify the changing "Tiêu đề" field with existence "Tiêu đề"
#     [Tags]                                                                                        ChangeInfo
#     ${Cate1}=                                                                                     Create a test category
#     Create a test category
#     When Click on the "Sửa" button in the "${Cate1}" item line
#     When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
#     When Click "Lưu lại" button
#     Then User look message "Tiêu đề đã tồn tại" popup
#     When Click "Đóng lại" button
#     When Click on the "Xóa" button in the "_@Tiêu đề@_" item line
#     When Click on the "Xóa" button in the "${Cate1}" item line

CA_PO_13 Verify the changing "Slug" field
    [Tags]                                                                                        ChangeInfo
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Enter "text" in "Slug" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Cập nhật bài viết thành công" popup
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    Then Data's information in "Slug" should be equal "_@Slug@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_14 Verify the changing "Giới thiệu" field
    [Tags]                                                                                        ChangeInfo
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    Wait Until Network Is Idle
    When Click "Lưu lại" button
    Then User look message "Cập nhật bài viết thành công" popup
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    Then Data's information in "Giới thiệu" should be equal "_@Giới thiệu@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_15 Check the "Đóng lại" button
    [Tags]                                                                                        ChangeInfo                                  Button
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_16_01 Check the left arrow icon ("Trở lại" button)
    [Tags]                                                                                        ChangeInfo                                  Button
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Click on the left arrow icon
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_16_02 Check the (left arrow icon) "Trở lại" button
    [Tags]                                                                                        ChangeInfo                                  Button
    Create a test category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" item line
    When Click "Trở lại" button
    Then Confirm locating exactly in "Post" page
    Then Webpage should contain the list data from database
    Then Webpage should contain "Tạo mới" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

### Verify the delete data function ###
CA_PO_17 Verify the delete data function
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line
    Then User look message "Đã xóa thành công" popup
    Then "_@Tiêu đề@_" should not be visible in item line

CA_PO_18 Verify the cancel action button when delete data
    [Tags]                                                                                        Delete
    Create a test category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line with cancel
    Then "_@Tiêu đề@_" should be visible in item line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" item line

CA_PO_19 Verify the delete data function
    [Tags]                                                                                        Delete                                       Smoketest
    ${Cate1}=                                                                                     Create a test category
    When Click "Tạo mới bài viết" button
    When Click radio "Loại editor" in line "Block"
    When Click select "Chuyên mục" with "_@Tiêu đề@_"
    When Select file in "Ảnh cover" with "image.jpg"
    When Select file in "Ảnh thumbnail" with "image.jpg"
    When Click radio "Định dạng bài viết" in line "Longform"
    When Enter "color" in "Background Color" with "_RANDOM_"
    When Enter "color" in "Title Fore Color" with "_RANDOM_"
    When Click switch "Show Title" to change button status
    When Click switch "Ghim" to change button status
    When Enter "text" in "Custom Class" with "text-blue-600"
    When Enter "text" in textarea "Custom CSS" with "{color:1px;}"
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Lưu lại" button
    When Click on the "Xóa" button in the "${Cate1}" item line
    Then User look message "Không thể xóa danh mục đang có bài viết" popup
    When Select on the "${Cate1}" item line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Cate1}" item line

*** Keywords ***
Go to "Post" page
    Login to admin
    Click "QUẢN LÝ DANH MỤC" menu
    Click "Post" sub menu to "/post"

Go to page create data "${name}" with "${url}"
  Login to admin
  Click "QUẢN LÝ DANH MỤC" menu
  Click "${name}" sub menu to "${url}"
  Click "Tạo mới" button

Create a test category
  ${condition}=          Run Keyword And Return Status                Confirm locating exactly in "Post" page
  IF    '${condition}' == 'True'
    Click "Tạo mới" button
  ELSE
    Go to "Post" page
    Click "Tạo mới" button  
  END
  Enter "test name" in "Tiêu đề" with "_RANDOM_"
  Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
  ${text}=               Check Text                                   _@Tiêu đề@_
  ${name}=               Set Variable                                 ${text}
  [Return]               ${name}
  Click "Lưu lại" button
  User look message "Thêm mới danh mục bài viết thành công" popup

