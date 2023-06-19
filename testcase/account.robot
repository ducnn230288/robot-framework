*** Settings ***
Resource               ../keywords/common.robot
#Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
Verify when create successful
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu successfully
    IA_16 Verify when Create menu successfully              Tài khoản Nội bộ        /internal-account   CSKH
    CA_16 Verify when Create menu successfully              Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Edit menu successfully
    [Tags]          smoketest    @regression
    [Template]      Verify when Edit menu successfully
    IA_35 Verify when Edit menu successfully                Tài khoản Nội bộ        /internal-account   CSKH
    CA_35 Verify when Edit menu successfully                Tài khoản Khách hàng    /customer-account   Farmer Side

Verify success when Change password
    [Tags]          smoketest    @regression
    [Template]      Verify success when Change password
    IA_28 Verify success when Change password               Tài khoản Nội bộ        /internal-account   CSKH
    CA_28 Verify success when Change password               Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when delete Account successful
    [Tags]          smoketest    @regression
    [Template]      Verify when delete Account successful
    IA_39 Verify when delete Internal Account successful    Tài khoản Nội bộ        /internal-account   CSKH
    CA_39 Verify when delete Customer Account successful    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when lock Account successful
    [Tags]          smoketest    @regression
    [Template]      Verify when lock Account successful
    IA_47 Verify when lock Internal Account successful      Tài khoản Nội bộ        /internal-account   CSKH
    CA_47 Verify when lock Customer Account successful      Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when unlock Account successful
    [Tags]          smoketest    @regression
    [Template]      Verify when unlock Account successful
    IA_47 Verify when unlock Internal Account successful    Tài khoản Nội bộ        /internal-account   CSKH
    CA_47 Verify when unlock Customer Account successful    Tài khoản Khách hàng    /customer-account   Farmer Side


###  -----  Bad paths  -----  ###
Verify when Create menu unsuccessfully when leaving Họ và tên fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Họ và tên fields blank
    IA_18 Verify when Create menu unsuccessfully when leaving Họ và tên fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_18 Verify when Create menu unsuccessfully when leaving Họ và tên fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Email fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Email fields blank
    IA_19 Verify when Create menu unsuccessfully when leaving Email fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_19 Verify when Create menu unsuccessfully when leaving Email fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when create Customer Account unsuccessful because entered invalid email in Email field
    [Tags]          smoketest    @regression
    [Template]      Verify when create Customer Account unsuccessful because entered invalid email in Email field
    IA_20 Verify when create Customer Account unsuccessful because entered invalid email in Email field    Tài khoản Nội bộ        /internal-account   CSKH
    CA_20 Verify when create Customer Account unsuccessful because entered invalid email in Email field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Số điện thoại fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Số điện thoại fields blank
    IA_21 Verify when Create menu unsuccessfully when leaving Số điện thoại fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_21 Verify when Create menu unsuccessfully when leaving Số điện thoại fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Giới tính fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Giới tính fields blank
    IA_22 Verify when Create menu unsuccessfully when leaving Giới tính fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_22 Verify when Create menu unsuccessfully when leaving Giới tính fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Loại tài khoản fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Loại tài khoản fields blank
    IA_23 Verify when Create menu unsuccessfully when leaving Loại tài khoản fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_23 Verify when Create menu unsuccessfully when leaving Loại tài khoản fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Password fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Password fields blank
    IA_24 Verify when Create menu unsuccessfully when leaving Password fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_24 Verify when Create menu unsuccessfully when leaving Password fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create menu unsuccessfully when leaving Xác nhận mật khẩu fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create menu unsuccessfully when leaving Xác nhận mật khẩu fields blank
    IA_25 Verify when Create menu unsuccessfully when leaving Xác nhận mật khẩu fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_25 Verify when Create menu unsuccessfully when leaving Xác nhận mật khẩu fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verification failed when entering data Confirm Password does not match Password
    [Tags]          smoketest    @regression
    [Template]      Verification failed when entering data Confirm Password does not match Password
    IA_26 Verification failed when entering data Confirm Password does not match Password    Tài khoản Nội bộ        /internal-account   CSKH
    CA_26 Verification failed when entering data Confirm Password does not match Password    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when Create Account unsuccessfully when leaving all fields blank
    [Tags]          smoketest    @regression
    [Template]      Verify when Create Account unsuccessfully when leaving all fields blank
    IA_17 Verify when Create Internal Account unsuccessfully when leaving all fields blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_17 Verify when Create Customer Account unsuccessfully when leaving all fields blank    Tài khoản Khách hàng    /customer-account   Farmer Side

###  -----  Compare paths  -----  ###
Verify when change password Account unsuccessful because leaving Password field
    [Tags]          smoketest    @regression
    [Template]      Verify when change password Account unsuccessful because leaving Password field
    IA_36 Verify when change password Internal Account unsuccessful because leaving Password field    Tài khoản Nội bộ        /internal-account   CSKH
    CA_36 Verify when change password Customer Account unsuccessful because leaving Password field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when change password Account unsuccessful because leaving Confirm password field
    [Tags]          smoketest    @regression
    [Template]      Verify when change password Account unsuccessful because leaving Confirm password field
    IA_37 Verify when change password Internal Account unsuccessful because leaving Confirm password field    Tài khoản Nội bộ        /internal-account   CSKH
    CCA_37 Verify when change password Customer Account unsuccessful because leaving Confirm password field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when change password Account unsuccessful because leaving All field
    [Tags]          smoketest    @regression
    [Template]      Verify when change password Account unsuccessful because leaving All field
    IA_33 Verify when change password Internal Account unsuccessful because leaving All field    Tài khoản Nội bộ        /internal-account   CSKH
    CA_33 Verify when change password Customer Account unsuccessful because leaving All field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verification Change password failed when Confirm Password field was blank
    [Tags]          smoketest    @regression
    [Template]      Verification Change password failed when Confirm Password field was blank
    IA_31 Verification Change password failed when Confirm Password field was blank    Tài khoản Nội bộ        /internal-account   CSKH
    CA_31 Verification Change password failed when Confirm Password field was blank    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when change password Account unsuccessful because clear Customer name field
    [Tags]          smoketest    @regression
    [Template]      Verify when change password Account unsuccessful because clear Customer name field
    IA_42 Verify when change password Internal Account unsuccessful because clear Customer name field    Tài khoản Nội bộ        /internal-account   CSKH
    CA_42 Verify when change password Customer Account unsuccessful because clear Customer name field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when change password Account unsuccessful because clear Phone number field
    [Tags]          smoketest    @regression
    [Template]      Verify when change password Account unsuccessful because clear Phone number field
    IA_43 Verify when change password Internal Account unsuccessful because clear Phone number field    Tài khoản Nội bộ        /internal-account   CSKH
    CA_43 Verify when change password Customer Account unsuccessful because clear Phone number field    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when create Account unsuccessful because same Email
    [Tags]          smoketest    @regression
    [Template]      Verify when create Account unsuccessful because same Email
    IA_30 Verify when create Internal Account unsuccessful because same Email    Tài khoản Nội bộ        /internal-account   CSKH
    CA_30 Verify when create Customer Account unsuccessful because same Email    Tài khoản Khách hàng    /customer-account   Farmer Side

Verify when create Account unsuccessful because same Phone Number
    [Tags]          smoketest    @regression
    [Template]      Verify when create Account unsuccessful because same Phone Number
    IA_31 Verify when create Internal Account unsuccessful because same Phone Number    Tài khoản Nội bộ        /internal-account   CSKH
    CA_31 Verify when create Customer Account unsuccessful because same Phone Number    Tài khoản Khách hàng    /customer-account   Farmer Side

*** Keywords ***
Go to page create account ${name} with ${url}
    When Setup
    When Login to admin
    When Click "QUẢN LÝ TÀI KHOẢN" menu
    When Click "${name}" sub menu to "${url}"
    When Click "Tạo mới" button

Background ${type} Happy paths ${name} with ${url}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button

Verify when Create menu successfully
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when Edit menu successfully
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Sửa" button in the "Họ và tên" table line
    When Wait Until Element Spin
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Click select "Giới tính" with "Nam"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Chỉnh sửa tài khoản thành công" popup
    When Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify success when Change password
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Đổi mật khẩu" button in the "Họ và tên" table line
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then User look message "Đổi mật khẩu thành công" popup
    When Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when delete Account successful
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when lock Account successful
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Chi tiết" button in the "Họ và tên" table line
    When Click "Mở Khóa" button
    Then User look message "Khóa tài khoản người dùng thành công !" popup
    When Click "Trở lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when unlock Account successful
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Chi tiết" button in the "Họ và tên" table line
    When Click "Mở Khóa" button
    Then User look message "Khóa tài khoản người dùng thành công !" popup
    When Click "Khóa" button
    Then User look message "Mở khóa tài khoản người dùng thành công." popup
    When Click "Trở lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

###  -----  Bad paths  -----  ###
Verify when Create menu unsuccessfully when leaving Họ và tên fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Họ và tên" displayed under "Xin vui lòng nhập họ và tên" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Email fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Email" displayed under "Xin vui lòng nhập email" field
    When Tear Down

Verify when create Customer Account unsuccessful because entered invalid email in Email field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "text" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Email" displayed under "Xin vui lòng nhập địa chỉ email hợp lệ!" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Số điện thoại fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập số điện thoại" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Giới tính fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Giới tính" displayed under "Xin vui lòng chọn giới tính" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Loại tài khoản fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then Required message "Loại tài khoản" displayed under "Xin vui lòng chọn loại tài khoản" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Password fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Xác nhận mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
    When Tear Down

Verify when Create menu unsuccessfully when leaving Xác nhận mật khẩu fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xác nhận mật khẩu" displayed under "Xin vui lòng nhập xác nhận mật khẩu" field
    When Tear Down

Verification failed when entering data Confirm Password does not match Password
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Enter "test name" in "Họ và tên" with "_RANDOM_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xác nhận mật khẩu" displayed under "Mật khẩu và mật khẩu xác nhận không khớp" field
    When Tear Down

Verify when Create Account unsuccessfully when leaving all fields blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Go to page create account ${name} with ${url}
    When Click "Lưu lại" button
    Then Required message "Họ và tên" displayed under "Xin vui lòng nhập họ và tên" field
    Then Required message "Email" displayed under "Xin vui lòng nhập email" field
    Then Required message "Giới tính" displayed under "Xin vui lòng chọn giới tính" field
    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập số điện thoại" field
    Then Required message "Loại tài khoản" displayed under "Xin vui lòng chọn loại tài khoản" field
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
    When Tear Down

###  -----  Compare paths  -----  ###
Verify when change password Account unsuccessful because leaving Password field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    When Click on the "Đổi mật khẩu" button in the "Họ và tên" table line
    When Enter "text" in "Xác nhận mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
    Then Required message "Xác nhận mật khẩu" displayed under "Mật khẩu và mật khẩu xác nhận không khớp" field
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when change password Account unsuccessful because leaving Confirm password field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    When Click on the "Đổi mật khẩu" button in the "Họ và tên" table line
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xác nhận mật khẩu" displayed under "Xin vui lòng nhập xác nhận mật khẩu" field
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when change password Account unsuccessful because leaving All field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    When Click on the "Đổi mật khẩu" button in the "Họ và tên" table line
    When Click "Lưu lại" button
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
    Then Required message "Xác nhận mật khẩu" displayed under "Xin vui lòng nhập xác nhận mật khẩu" field
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verification Change password failed when Confirm Password field was blank
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    When Click on the "Đổi mật khẩu" button in the "Họ và tên" table line
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Xác nhận mật khẩu" displayed under "Mật khẩu và mật khẩu xác nhận không khớp" field
    When Click "Đóng lại" button
    When Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when change password Account unsuccessful because clear Customer name field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Sửa" button in the "Họ và tên" table line
    When Wait Until Element Spin
    When Enter "test name" in "Họ và tên" with ""
    When Click "Lưu lại" button
    Then Required message "Họ và tên" displayed under "Xin vui lòng nhập họ và tên" field
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when change password Account unsuccessful because clear Phone number field
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click on the "Sửa" button in the "Họ và tên" table line
    When Wait Until Element Spin
    When Enter "text" in "Số điện thoại" with ""
    When Click "Lưu lại" button
    Then Required message "Số điện thoại" displayed under "Xin vui lòng nhập số điện thoại" field
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when create Account unsuccessful because same Email
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click "Tạo mới" button
    When Enter "test name" in "Họ và tên" with "_@Họ và tên@_"
    When Enter "email" in "Email" with "_@Email@_"
    When Enter "phone" in "Số điện thoại" with "_RANDOM_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then User look message "Tên người dùng/Email đã được sử dụng." popup
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down

Verify when create Account unsuccessful because same Phone Number
    [Arguments]     ${code}     ${name}     ${url}      ${type}
    When Background ${type} Happy paths ${name} with ${url}
    Then User look message "Tạo tài khoản thành công" popup
    When Click "Tạo mới" button
    When Enter "test name" in "Họ và tên" with "_@Họ và tên@_"
    When Enter "email" in "Email" with "_RANDOM_"
    When Enter "phone" in "Số điện thoại" with "_@Số điện thoại@_"
    When Click select "Giới tính" with "Nữ"
    When Click select "Loại tài khoản" with "${type}"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Enter "text" in "Xác nhận mật khẩu" with "_@Mật khẩu@_"
    When Click "Lưu lại" button
    Then User look message "Số điện thoại đã được sử dụng." popup
    When Click "Đóng lại" button
    Then Click on the "Xóa" button in the "Họ và tên" table line
    When Tear Down