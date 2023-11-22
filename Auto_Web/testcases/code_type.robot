*** Settings ***
Resource            ../keywords/common.robot
Library             DateTime
Test Setup          Setup
Test Teardown       Tear Down


*** Test Cases ***
### Link to Test Cases  https://docs.google.com/spreadsheets/d/1DbP64bT7QpASuE3NeiIVDdeHpdrKQon3HqF9rsUzbFU/edit#gid=1966815245     ###

### Check the User Interface of the Code-type page ###
CO_01 Verify that navigating to the right "Code-Type" page
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
   Login to admin
   When Click "QUẢN LÝ DANH MỤC" menu
   When Click "Danh mục" sub menu to "/code-type"
   When Confirm locating exactly in "Danh mục" page
   Then Webpage should contain the list data from database
   Then Webpage should contain the search function
   Then Webpage should contain "Thêm mới" button

CO_02_01 Verify the function changing the number of data show in "Nhóm thủ thuật" list 
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    When Click on "second" selection to change the number of data show in list and check
    When Click on "third" selection to change the number of data show in list and check
    When Click on "fourth" selection to change the number of data show in list and check
    When Click on "fifth" selection to change the number of data show in list and check

CO_02_02 Verify the function changing the number of data show in "Độ khó" list  
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    When Click on "second" selection to change the number of data show in list and check
    When Click on "third" selection to change the number of data show in list and check
    When Click on "fourth" selection to change the number of data show in list and check
    When Click on "fifth" selection to change the number of data show in list and check

CO_02_03 Verify the function changing the number of data show in "Bằng cấp chuyên môn" list
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    When Click on "second" selection to change the number of data show in list and check
    When Click on "third" selection to change the number of data show in list and check
    When Click on "fourth" selection to change the number of data show in list and check
    When Click on "fifth" selection to change the number of data show in list and check

CO_02_04 Verify the function changing the number of data show in "Số răng" list
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Số răng" item line
    When Click on "second" selection to change the number of data show in list and check
    When Click on "third" selection to change the number of data show in list and check
    When Click on "fourth" selection to change the number of data show in list and check
    When Click on "fifth" selection to change the number of data show in list and check

CO_03_01 Verify the function navigating to other pages in the list of "Nhóm thủ thuật"
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Then Check the amount of page list
    ${Last_name}=                                                                                 Get data in the last row
    When Create a test data of "Nhóm thủ thuật" category
    When Move to the "next" page
    ${First_name}=                                                                                Get data in the first row
    Then Should Be Equal                                                                          ${First_name}                                ${Last_name}   
    When Move to the "previous" page
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then Move to the last page and check

CO_03_02 Verify the function navigating to other pages in the list of "Độ khó"
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Then Check the amount of page list
    ${Last_name}=                                                                                 Get data in the last row
    When Create a test data of "Độ khó" category
    When Move to the "next" page
    ${First_name}=                                                                                Get data in the first row
    Then Should Be Equal                                                                          ${First_name}                                ${Last_name}   
    When Move to the "previous" page
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then Move to the last page and check

CO_03_02 Verify the function navigating to other pages in the list of "Bằng cấp chuyên môn"
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Then Check the amount of page list
    ${Last_name}=                                                                                 Get data in the last row
    When Create a test data of "Bằng cấp chuyên môn" category
    When Move to the "next" page
    ${First_name}=                                                                                Get data in the first row
    Then Should Be Equal                                                                          ${First_name}                                ${Last_name}   
    When Move to the "previous" page
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then Move to the last page and check

CO_03_02 Verify the function navigating to other pages in the list of "Số răng"
    [Tags]                                                                                        MainPage                                     UI                                          Smoketest
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Then Check the amount of page list
    ${Last_name}=                                                                                 Get data in the last row
    When Create a test data of "Số răng" category
    When Move to the "next" page
    ${First_name}=                                                                                Get data in the first row
    Then Should Be Equal    ${First_name}   ${Last_name}   
    When Move to the "previous" page
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then Move to the last page and check

CO_04_01 Verify the highlight table line funtion in "Nhóm thủ thuật" after operated
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then "_@Tiêu đề@_" table line should be highlighted
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_04_01 Verify the highlight table line funtion in "Độ khó" after operated
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then "_@Tiêu đề@_" table line should be highlighted
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_04_01 Verify the highlight table line funtion in "Bằng cấp chuyên môn" after operated
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then "_@Tiêu đề@_" table line should be highlighted
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_04_04 Verify the highlight table line funtion in "Số răng" after operated
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then "_@Tiêu đề@_" table line should be highlighted
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_05 Verify the change category function
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    ${Name1}=                                                                                     Get data in the first row
    When Select on the "Độ khó" item line
    ${Name2}=                                                                                     Get data in the first row
    Then Should Be True    '${Name1}'  != '${Name2}'
    When Select on the "Bằng cấp chuyên môn" item line
    ${Name3}=                                                                                     Get data in the first row
    Then Should Be True    '${Name1}'  != '${Name3}'
    Then Should Be True    '${Name2}'  != '${Name3}'

CO_06 Verify the hightlight category line function after selected
    [Tags]                                                                                        MainPage                                     UI
    Go to "Danh mục" page
    When Select on the "Độ khó" item line
    Then "Độ khó" item line should be highlighted 
    When Select on the "Bằng cấp chuyên môn" item line
    Then "Bằng cấp chuyên môn" item line should be highlighted

### Verify the correct design in detail information's Code-Type page ###
CO_07_01 Verify that navigating to the right "edit code-type" page of "Nhóm thủ thuật" category
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Heading should contain "Chỉnh sửa Nhóm thủ thuật" inner Text
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_07_02 Verify that navigating to the right "edit code-type" page of "Độ khó" category
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Heading should contain "Chỉnh sửa Độ khó" inner Text
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_07_03 Verify that navigating to the right "edit code-type" page of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Heading should contain "Chỉnh sửa Bằng cấp chuyên môn" inner Text
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_07_04 Verify that navigating to the right "edit code-type" page of "Số răng" category
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Heading should contain "Chỉnh sửa Số răng" inner Text
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_08_01 Check data information after created data in "Nhóm thủ thuật"
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Data's information in "Tiêu đề" should be equal "_@Tiêu đề@_"
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    Then Data's information in "Mã" should be equal "_@Mã@_"
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_08_02 Check data information after created data in "Độ khó"
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Độ khó" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Data's information in "Tiêu đề" should be equal "_@Tiêu đề@_"
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    Then Data's information in "Mã" should be equal "_@Mã@_"
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_08_03 Check data information after created data in "Bằng cấp chuyên môn"
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Data's information in "Tiêu đề" should be equal "_@Tiêu đề@_"
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    Then Data's information in "Mã" should be equal "_@Mã@_"
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_08_04 Check data information after created data in "Số răng"
    [Tags]                                                                                        DetailedInfo
    Create a test data of "Số răng" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    Then Data's information in "Tiêu đề" should be equal "_@Tiêu đề@_"
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    Then Data's information in "Mã" should be equal "_@Mã@_"
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Trở lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_09_01 Verify the "Đóng lại" button in detail data information of "Nhóm thủ thuật" category
    [Tags]                                                                                        DetailedInfo                               Button
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_09_02 Verify the "Đóng lại" button in detail data information of "Độ khó" category
    [Tags]                                                                                        DetailedInfo                               Button
    Create a test data of "Độ khó" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_09_03 Verify the "Đóng lại" button in detail data information of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        DetailedInfo                               Button
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_09_04 Verify the "Đóng lại" button in detail data information of "Số răng" category
    [Tags]                                                                                        DetailedInfo                               Button
    Create a test data of "Số răng" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_10_01 Verify the "Đóng lại" button in detail data information of "Nhóm thủ thuật" category
    [Tags]                                                                                        DetailedInfo                                 Button
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_10_02 Verify the "Đóng lại" button in detail data information of "Độ khó" category
    [Tags]                                                                                        DetailedInfo                                 Button
    Create a test data of "Độ khó" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_10_03 Verify the "Đóng lại" button in detail data information of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        DetailedInfo                                 Button
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_10_04 Verify the "Đóng lại" button in detail data information of "Số răng" category
    [Tags]                                                                                        DetailedInfo                                 Button
    Create a test data of "Số răng" category
    When Click on the "Chi tiết" button in the "_@Tiêu đề@_" table line
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

### Verify the search function ###
CO_11_01 Verify the search function when enter the existed name in "Nhóm thủ thuật" category
    [Tags]                                                                                        Search                                       Smoketest
    Create a test data of "Nhóm thủ thuật" category
    When Enter "test name" in "Tìm kiếm" with "_@Tiêu đề@_"
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_11_02 Verify the search function when enter the existed name in "Độ khó" category
    [Tags]                                                                                        Search                                       Smoketest
    Create a test data of "Nhóm thủ thuật" category
    When Enter "test name" in "Tìm kiếm" with "_@Tiêu đề@_"
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_11_03 Verify the search function when enter the existed name in "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Search                                       Smoketest
    Create a test data of "Nhóm thủ thuật" category
    When Enter "test name" in "Tìm kiếm" with "_@Tiêu đề@_"
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
CO_11_04 Verify the search function when enter the existed name in "Số răng" category
    [Tags]                                                                                        Search                                       Smoketest
    Create a test data of "Nhóm thủ thuật" category
    When Enter "test name" in "Tìm kiếm" with "_@Tiêu đề@_"
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_12_01 Verify the search function in "Nhóm thủ thuật" category when enter the name was not existed
    [Tags]                                                                                        Search
    Create a test data of "Nhóm thủ thuật" category
    When Enter "text" in "Tìm kiếm" with "_RANDOM_"
    When Click on magnifier icon in search box
    Then Table line should show empty
    When Enter "test name" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_12_02 Verify the search function in "Độ khó" category when enter the name was not existed
    [Tags]                                                                                        Search
    Create a test data of "Độ khó" category
    When Enter "text" in "Tìm kiếm" with "_RANDOM_"
    When Click on magnifier icon in search box
    Then Table line should show empty
    When Enter "test name" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_12_03 Verify the search function in "Bằng cấp chuyên môn" category when enter the name was not existed
    [Tags]                                                                                        Search
    Create a test data of "Bằng cấp chuyên môn" category
    When Enter "text" in "Tìm kiếm" with "_RANDOM_"
    When Click on magnifier icon in search box
    Then Table line should show empty
    When Enter "test name" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_12_04 Verify the search function in "Số răng" category when enter the name was not existed
    [Tags]                                                                                        Search
    Create a test data of "Số răng" category
    When Enter "text" in "Tìm kiếm" with "_RANDOM_"
    When Click on magnifier icon in search box
    Then Table line should show empty
    When Enter "test name" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_13_01 Check the update of data list after cancel the search action (in "Nhóm thủ thuật" category)
    [Tags]                                                                                        Search
    ${Code1}=                                                                                     Create a test data of "Nhóm thủ thuật" category
    Create a test data of "Nhóm thủ thuật" category
    When Enter "text" in "Tìm kiếm" with "${Code1}"
    When Click on magnifier icon in search box
    Then "${Code1}" should be visible in table line
    Then "_@Tiêu đề@_" should not be visible in table line
    When Enter "text" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_13_01 Check the update of data list after cancel the search action (in "Nhóm thủ thuật" category)
    [Tags]                                                                                        Search
    ${Code1}=                                                                                     Create a test data of "Nhóm thủ thuật" category
    Create a test data of "Nhóm thủ thuật" category
    When Enter "text" in "Tìm kiếm" with "${Code1}"
    When Click on magnifier icon in search box
    Then "${Code1}" should be visible in table line
    Then "_@Tiêu đề@_" should not be visible in table line
    When Enter "text" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_13_02 Check the update of data list after cancel the search action (in "Độ khó" category)
    [Tags]                                                                                        Search
    ${Code1}=                                                                                     Create a test data of "Độ khó" category
    Create a test data of "Độ khó" category
    When Enter "text" in "Tìm kiếm" with "${Code1}"
    When Click on magnifier icon in search box
    Then "${Code1}" should be visible in table line
    Then "_@Tiêu đề@_" should not be visible in table line
    When Enter "text" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_13_03 Check the update of data list after cancel the search action (in "Bằng cấp chuyên môn" category)
    [Tags]                                                                                        Search
    ${Code1}=                                                                                     Create a test data of "Bằng cấp chuyên môn" category
    Create a test data of "Bằng cấp chuyên môn" category
    When Enter "text" in "Tìm kiếm" with "${Code1}"
    When Click on magnifier icon in search box
    Then "${Code1}" should be visible in table line
    Then "_@Tiêu đề@_" should not be visible in table line
    When Enter "text" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_13_04 Check the update of data list after cancel the search action (in "Số răng" category)
    [Tags]                                                                                        Search
    ${Code1}=                                                                                     Create a test data of "Số răng" category
    Create a test data of "Số răng" category
    When Enter "text" in "Tìm kiếm" with "${Code1}"
    When Click on magnifier icon in search box
    Then "${Code1}" should be visible in table line
    Then "_@Tiêu đề@_" should not be visible in table line
    When Enter "text" in "Tìm kiếm" with ""
    When Click on magnifier icon in search box
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

### Verify the creating data function ###
CO_14_01 Verify "Thêm mới" button function in "Nhóm thủ thuật" category
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    When Click "Thêm mới" button
    Then Heading should contain "Thêm mới Nhóm thủ thuật" inner Text
    Then Confirm adding "/code-types/MEDICAL_PROCEDURE_GROUP" page
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon

CO_14_02 Verify "Thêm mới" button function in "Độ khó" category
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    When Click "Thêm mới" button
    Then Heading should contain "Thêm mới Độ khó" inner Text
    Then Confirm adding "/code-types/MEDICAL_PROCEDURE_DIFFICULTY" page
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon

CO_14_03 Verify "Thêm mới" button function in "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    When Click "Thêm mới" button
    Then Heading should contain "Thêm mới Bằng cấp chuyên môn" inner Text
    Then Confirm adding "/code-types/MEDICAL_DEGREE" page
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon

CO_14_04 Verify "Thêm mới" button function in "Số răng" category
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Số răng" item line
    When Click "Thêm mới" button
    Then Heading should contain "Thêm mới Số răng" inner Text
    Then Confirm adding "/code-types/NUMBER_OF_TEETH" page
    Then Webpage should contain "Tiêu đề" input field
    Then Webpage should contain "Thứ tự" input field
    Then Webpage should contain "Mã" input field
    Then Webpage should contain "Mô tả" input field
    Then Webpage should contain "Lưu lại" button
    Then Webpage should contain "Đóng lại" button
    Then Webpage should contain left arrow icon

CO_15_01 Create new data of "Nhóm thủ thuật" category with the valid data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_15_02 Create new data of "Độ khó" category with the valid data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_15_03 Create new data of "Bằng cấp chuyên môn" category with the valid data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_15_04 Create new data of "Số răng" category with the valid data
    [Tags]                                                                                        Create                                       Smoketest
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_16_01 Create a new data of "Nhóm thủ thuật" category with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_16_02 Create a new data of "Độ khó" category with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_16_01 Create a new data of "Bằng cấp chuyên môn" category with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_16_01 Create a new data of "Số răng" category with all blank fields
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_17_01 Create a new data of "Nhóm thủ thuật" category when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CO_17_02 Create a new data of "Độ khó" category when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CO_17_03 Create a new data of "Bằng cấp chuyên môn" category when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CO_17_04 Create a new data of "Số răng" category when leaving "Tiêu đề" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field

CO_18_01 Create a new data of "Nhóm thủ thuật" category when leaving "Thứ tự" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_18_02 Create a new data of "Độ khó" category when leaving "Thứ tự" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_18_03 Create a new data of "Bằng cấp chuyên môn" category when leaving "Thứ tự" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_18_04 Create a new data of "Số răng" category when leaving "Thứ tự" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_19_01 Create a new data of "Nhóm thủ thuật" category when leaving "Mã" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_19_01 Create a new data of "Độ khó" category when leaving "Mã" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_19_01 Create a new data of "Bằng cấp chuyên môn" category when leaving "Mã" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_19_04 Create a new data of "Số răng" category when leaving "Mã" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập mã" displayed under "Mã" field

CO_20_01 Create a new data of "Nhóm thủ thuật" category when leaving "Mô tả" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_20_02 Create a new data of "Độ khó" category when leaving "Mô tả" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_20_03 Create a new data of "Bằng cấp chuyên môn" category when leaving "Mô tả" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_20_04 Create a new data of "Số răng" category when leaving "Mô tả" field blank
    [Tags]                                                                                        Create                                       BlankField
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

### Create new data with invalid data ###
CO_21_01 Verify that CAN NOT create a new data of "Nhóm thủ thuật" category when entering an existent data in "Tiêu đề"
    [Tags]                                                                                        Create                                       Invalid
    Create a test data of "Nhóm thủ thuật" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_21_02 Verify that CAN NOT create a new data of "Độ khó" category when entering an existent data in "Tiêu đề"
    [Tags]                                                                                        Create                                       Invalid
    Create a test data of "Độ khó" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_21_03 Verify that CAN NOT create a new data of "Bằng cấp chuyên môn" category when entering an existent data in "Tiêu đề"
    [Tags]                                                                                        Create                                       Invalid
    Create a test data of "Bằng cấp chuyên môn" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_21_04 Verify that CAN NOT create a new data of "Số răng" category when entering an existent data in "Tiêu đề"
    [Tags]                                                                                        Create                                       Invalid
    Create a test data of "Số răng" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_22_01 Verify that CAN NOT create a new data of "Nhóm thủ thuật" category when entering an existent data in "Mã"
    [Tags]                                                                                        Create                                       Invalid
    ${Code1}=                                                                                     Create a test data of "Nhóm thủ thuật" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_@Mã@_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_22_02 Verify that CAN NOT create a new data of "Độ khó" category when entering an existent data in "Mã"
    [Tags]                                                                                        Create                                       Invalid
    ${Code1}=                                                                                     Create a test data of "Độ khó" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_@Mã@_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_22_03 Verify that CAN NOT create a new data of "Bằng cấp chuyên môn" category when entering an existent data in "Mã"
    [Tags]                                                                                        Create                                       Invalid
    ${Code1}=                                                                                     Create a test data of "Bằng cấp chuyên môn" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_@Mã@_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_22_04 Verify that CAN NOT create a new data of "Số răng" category when entering an existent data in "Mã"
    [Tags]                                                                                        Create                                       Invalid
    ${Code1}=                                                                                     Create a test data of "Số răng" category
    When Click "Thêm mới" button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_@Mã@_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

### Verify the go back button in the create a new code type page ###
CO_23_01 Verify the "Đóng lại" button in create new data of "Nhóm thủ thuật" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_02 Verify the "Đóng lại" button in create new data of "Độ khó" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_03 Verify the "Đóng lại" button in create new data of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_04 Verify the "Đóng lại" button in create new data of "Số răng" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Click "Đóng lại" button
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_24_01 Verify the "left-arrow" button in create new data of "Nhóm thủ thuật" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Nhóm thủ thuật" item line
    Click "Thêm mới" button
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_02 Verify the "left-arrow" button in create new data of "Độ khó" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Độ khó" item line
    Click "Thêm mới" button
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_03 Verify the "left-arrow" button in create new data of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Bằng cấp chuyên môn" item line
    Click "Thêm mới" button
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

CO_23_04 Verify the "left-arrow" button in create new data of "Số răng" category
    [Tags]                                                                                        Create                                       Button
    Go to "Danh mục" page
    Select on the "Số răng" item line
    Click "Thêm mới" button
    When Click on the left arrow icon
    Then Confirm locating exactly in "Danh mục" page
    Then Webpage should contain "Thêm mới" button
    Then Webpage should contain the list data from database

### Verify the funtion of changing data information ###
CO_25_01 Verify that CAN change "Tiêu đề" of the created data of "Nhóm thủ thuật" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_25_02 Verify that CAN change "Tiêu đề" of the created data of "Độ khó" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_25_03 Verify that CAN change "Tiêu đề" of the created data of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_25_04 Verify that CAN change "Tiêu đề" of the created data of "Số răng" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_26_01 Verify that CAN change "Thứ tự" of the created data of "Nhóm thủ thuật" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_26_02 Verify that CAN change "Thứ tự" of the created data of "Độ khó" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_26_03 Verify that CAN change "Thứ tự" of the created data of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_26_04 Verify that CAN change "Thứ tự" of the created data of "Số răng" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Thứ tự" should be equal "_@Thứ tự@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_27_01 Verify that CAN change "Mô tả" of the created data of "Nhóm thủ thuật" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_27_02 Verify that CAN change "Mô tả" of the created data of "Độ khó" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_27_03 Verify that CAN change "Mô tả" of the created data of "Bằng cấp chuyên môn" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_27_04 Verify that CAN change "Mô tả" of the created data of "Số răng" category
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mô tả" should be equal "_@Mô tả@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_28_01 Verify that CAN change "Mã" of created data of "Nhóm thủ thuật" field
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mã" should be equal "_@Mã@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_28_02 Verify that CAN change "Mã" of created data of "Độ khó" field
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mã" should be equal "_@Mã@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_28_03 Verify that CAN change "Mã" of created data of "Bằng cấp chuyên môn" field
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mã" should be equal "_@Mã@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_28_04 Verify that CAN change "Mã" of created data of "Số răng" field
    [Tags]                                                                                        ChangeInfo
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Enter "text" in "Mã" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the "Sửa" button in the "_@Tiêu đều@_" table line
    Then Data's information in "Mã" should be equal "_@Mã@_"
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

### Verify the changing data's code information by entering the invalid data ###
CO_29_01 Verify that CAN NOT change the code's information of "Nhóm thủ thuật" category in "Tiêu đề" by entering the existent "Tiêu đề"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Nhóm thủ thuật" category
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_29_02 Verify that CAN NOT change the code's information of "Độ khó" category in "Tiêu đề" by entering the existent "Tiêu đề"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Độ khó" category
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_29_03 Verify that CAN NOT change the code's information of "Bằng cấp chuyên môn" category in "Tiêu đề" by entering the existent "Tiêu đề"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Bằng cấp chuyên môn" category
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_29_04 Verify that CAN NOT change the code's information of "Số răng" category in "Tiêu đề" by entering the existent "Tiêu đề"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Số răng" category
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_30_01 Verify that CAN NOT change the code's information of "Nhóm thủ thuật" category in "Mã" by entering the existent "Mã"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Nhóm thủ thuật" category
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "text" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_30_02 Verify that CAN NOT change the code's information of "Độ khó" category in "Mã" by entering the existent "Mã"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Độ khó" category
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "text" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_30_03 Verify that CAN NOT change the code's information of "Bằng cấp chuyên môn" category in "Mã" by entering the existent "Mã"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Bằng cấp chuyên môn" category
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "text" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

CO_30_04 Verify that CAN NOT change the code's information of "Số răng" category in "Mã" by entering the existent "Mã"
    [Tags]                                                                                        ChangeInfo                                  Invalid
    ${Code1}=                                                                                     Create a test data of "Số răng" category
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "${Code1}" table line
    When Enter "text" in "Mã" with "_@Mã@_"
    When Click "Lưu lại" button
    Then User look message "Code đã tồn tại" popup
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    When Click on the "Xóa" button in the "${Code1}" table line

### Verify the changing data's code information by leaving a blank field ###
CO_31_01 Verify that CAN NOT leave a blank field in "Tiêu đề" when change the code's information of "Nhóm thủ thuật"
    [Tags]                                                                                        ChangeInfo                                  BlankField
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Clear data in "Tiêu đề" field
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_31_02 Verify that CAN NOT leave a blank field in "Tiêu đề" when change the code's information of "Độ khó"
    [Tags]                                                                                        ChangeInfo                                  BlankField
    Create a test data of "Độ khó" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Clear data in "Tiêu đề" field
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_31_03 Verify that CAN NOT leave a blank field in "Tiêu đề" when change the code's information of "Bằng cấp chuyên môn"
    [Tags]                                                                                        ChangeInfo                                  BlankField
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Clear data in "Tiêu đề" field
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_31_04 Verify that CAN NOT leave a blank field in "Tiêu đề" when change the code's information of "Số răng"
    [Tags]                                                                                        ChangeInfo                                  BlankField
    Create a test data of "Số răng" category
    When Click on the "Sửa" button in the "_@Tiêu đề@_" table line
    When Clear data in "Tiêu đề" field
    When Click "Lưu lại" button
    Then Required message "Xin vui lòng nhập tiêu đề" displayed under "Tiêu đề" field
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

### Verify the delete data function ###
CO_32_01 Verify the delete data function in "Nhóm thủ thuật" category
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then User look message "Đã xóa thành công" popup
    Then "_@Tiêu đề@_" should not be visible in table line

CO_32_02 Verify the delete data function in "Độ khó" category
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test data of "Độ khó" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then User look message "Đã xóa thành công" popup
    Then "_@Tiêu đề@_" should not be visible in table line

CO_32_03 Verify the delete data function in "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then User look message "Đã xóa thành công" popup
    Then "_@Tiêu đề@_" should not be visible in table line

CO_32_04 Verify the delete data function in "Số răng" category
    [Tags]                                                                                        Delete                                       Smoketest
    Create a test data of "Số răng" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line
    Then User look message "Đã xóa thành công" popup
    Then "_@Tiêu đề@_" should not be visible in table line

CO_33_01 Verify the cancel action button when delete data in "Nhóm thủ thuật" category
    [Tags]                                                                                        Delete
    Create a test data of "Nhóm thủ thuật" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line with cancel
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_33_02 Verify the cancel action button when delete data in "Độ khó" category
    [Tags]                                                                                        Delete
    Create a test data of "Độ khó" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line with cancel
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_33_03 Verify the cancel action button when delete data in "Bằng cấp chuyên môn" category
    [Tags]                                                                                        Delete
    Create a test data of "Bằng cấp chuyên môn" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line with cancel
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

CO_33_04 Verify the cancel action button when delete data in "Số răng" category
    [Tags]                                                                                        Delete
    Create a test data of "Số răng" category
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line with cancel
    Then "_@Tiêu đề@_" should be visible in table line
    When Click on the "Xóa" button in the "_@Tiêu đề@_" table line

*** Keywords ***
Go to "Danh mục" page
    Login to admin
    Click "QUẢN LÝ DANH MỤC" menu
    Click "Danh mục" sub menu to "/code-types"

Go to page create data "${name}" with "${url}"
  Login to admin
  Click "QUẢN LÝ DANH MỤC" menu
  Click "${name}" sub menu to "${url}"
  Click "Thêm mới" button

Create a test data of "${category}" category
  ${condition}=          Run Keyword And Return Status                 Confirm locating exactly in "Danh mục" page
  IF    '${condition}' == 'True'
    Select on the "${category}" item line
    Click "Thêm mới" button
  ELSE
    Go to "Danh mục" page
    Select on the "${category}" item line
    Click "Thêm mới" button
  END
  Enter "test name" in "Tiêu đề" with "_RANDOM_"
  Enter "number" in "Thứ tự" with "_RANDOM_"
  Enter "text" in "Mã" with "_RANDOM_"
    ${text}=             Check Text              _@Tiêu đề@_
    ${name}=             Set Variable            ${text}
    [Return]             ${name}
  Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
  Click "Lưu lại" button
  User look message "Success" popup


