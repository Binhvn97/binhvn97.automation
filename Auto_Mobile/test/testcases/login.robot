*** Settings ***
Resource                ../keywords/common.robot
Test Setup              Setup
Test Teardown           Tear Down

*** Test Cases ***
### Link to Testcase: https://docs.google.com/spreadsheets/d/1H_V3v-RlGi4eEbaqJZkYyn53YFttH02SiLPTOh0C0CU/edit#gid=195442452 ###
LC_01 Check the correct design of Sign Up page
  [Tags]                                                                SignUp                    UI                    Smoketest
  Open "Uberental" app
  When Click "Đăng ký" button
  Then Heading should contain "Đăng ký" inner text
  Then Display should contain "Địa chỉ Email" field
  Then Display should contain "Mật khẩu" field
  Then Display should contain "Nhập lại mật khẩu" field
  Then Display should contain "Loại tài khoản" field
  Then Display should contain "Đăng ký" button
  Then Display should contain "Quay lại" button

LG_02 Verify the showing password function when click on "eye" icon in "Mật khẩu" field
  [Tags]                                                                SignUp                    UI
  Open "Uberental" app                                                           
  Click "Đăng ký" button
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Click on eye icon in "Mật khẩu" field
  Then The hidden password in "Mật khẩu" field should be visibled as "_@Mật khẩu@_"

LG_03 Verify the showing password function when click on "eye" icon in "Nhập lại mật khẩu" field
  [Tags]                                                                SignUp                    UI
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click on eye icon in "Nhập lại mật khẩu" field
  Then The hidden password in "Nhập lại mật khẩu" field should be visibled as "_@Nhập lại mật khẩu@_"

LG_04_01 Verify the sign up new account when enter the valid data (Farmer Side)
  [Tags]                                                                SignUp                    Valid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Order Side"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Đăng kí tài khoản thành công. Vui lòng kiểm tra email để xác thực tài khoản" pop up
  When Delete the test account under admin's authority

LG_04_02 Verify the sign up new account when enter the valid data (Farmer Side)
  [Tags]                                                                SignUp                    Valid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Đăng kí tài khoản thành công. Vui lòng kiểm tra email để xác thực tài khoản" pop up
  When Delete the test account under admin's authority

LG_05_01 Verify that creating a new account with invalid email
  [Tags]                                                                SignUp                    Invalid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "abc123.gmail.com"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Email không hợp lệ" pop up

LG_05_02 Verify that creating a new account with invalid email
  [Tags]                                                                SignUp                    Invalid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "abc123@.gmail.com"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Email không hợp lệ" pop up

LG_05_03 Verify that creating a new account with invalid email
  [Tags]                                                                SignUp                    Invalid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "abc123@gmailcom"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Email không hợp lệ" pop up

LG_06 Verify that creating a new account with invalid phone number
  [Tags]                                                                SignUp                    Invalid
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then User look message "Số điện thoại phải gồm 10 số" pop up

LG_07 Verify that creating new account with blank field in "Địa chỉ Email" 
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_@Mật khẩu@_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng nhập địa chỉ email" displayed under "Địa chỉ Email" field

LG_08 Verify that creating new account with blank field in "Mật khẩu"
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng nhập mật khẩu" displayed under "Mật khẩu" field

LG_09 Verify that creating new account with blank field in "Nhập lại Mật khẩu" 
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng nhập nhập lại mật khẩu" displayed under "Nhập lại mật khẩu" field

LG_10 Verify that creating new account with blank field in "Loại tài khoản"  
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng chọn loại tài khoản" displayed under "Loại tài khoản" field

LG_11 Verify that creating new account with blank field in "Bằng cấp chuyên môn" (Farmer Side)
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng chọn bằng cấp chuyên môn" displayed under "Bằng cấp chuyên môn" field

LG_12 Verify that creating new account with blank field in "Họ và tên" 
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Click select "Giới tính" with "Nam"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng nhập họ và tên" displayed under "Họ và tên" field

LG_13 Verify that creating new account with blank field in "Giới tính" 
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Enter "phone" in "Số điện thoại" with "_RANDOM_"
  When Click "Đăng ký" button
  Then Required message "Vui lòng chọn giới tính" displayed under "Giới tính" field

LG_14 Verify that creating new account with blank field in "Giới tính" 
  [Tags]                                                                SignUp                    BlankField
  Open "Uberental" app
  Click "Đăng ký" button
  When Enter "email" in "Địa chỉ Email" with "_RANDOM_"
  When Enter "password" in "Mật khẩu" with "_RANDOM_"
  When Enter "password" in "Nhập lại mật khẩu" with "_RANDOM_"
  When Click select "Loại tài khoản" with "Farmer Side"
  When Click select "Bằng cấp chuyên môn" with "Chuyên khoa II"
  When Enter "test name" in "Họ và tên" with "_RANDOM_"
  When Click select "Giới tính" with "Nam"
  When Click "Đăng ký" button
  Then Required message "Vui lòng nhập số điện thoại" displayed under "Số điện thoại" field

LG_000 Test 
  Delete the test account under admin's authority
*** Keywords ***
Open "Uberental" app
  Click "Bỏ qua" button
  Click "Bắt đầu" button

Delete the test account under admin's authority
  #Close Application
  Open "Uberental" app
  Enter "email" in "Địa chỉ Email" with "admin@gmail.com"
  Enter "password" in "Mật khẩu" with "123123"
  Click "Đăng nhập" button
  Click "Quản lý tài khoản" menu
  Click "Tài khoản người dùng" sub menu under "Quản lý tài khoản"
  Click on the "Xóa" button in the "LG_04_02 Distinctio ullam." line