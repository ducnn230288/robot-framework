*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
Test Teardown          Tear Down

*** Test Cases ***
SI-01 Verify that login successfully with valid Email and Password
    [Tags]             smoketest
    Enter "text" in "Email" with "admin@gmail.com"
    Enter "text" in "Mật khẩu" with "123123"
    Click "Đăng nhập" button
    User look message "Success" popup

#SI-02 Verify that Login unsuccessfully with invalid Email
#    [Tags]             smoketest
#    Enter "text" in "Email" with "adminnn@gmail.com"
#    Enter "text" in "Mật khẩu" with "123123"
#    Click "Đăng nhập" button
#    User look message "Tài khoản adminnn@gmail.com không tồn tại trong hệ thống. Vui lòng đăng ký mới." popup
#
#SI-03 Verify that Login unsuccessfully with invalid Password
#    [Tags]             smoketest
#    Enter "text" in "Email" with "admin@gmail.com"
#    Enter "text" in "Mật khẩu" with "12341234"
#    Click "Đăng nhập" button
#    User look message "Sai mật khẩu cho tài khoản admin@gmail.com" popup
#
#SI-04 Verify that Login unsuccessfully because no enter Email and Password
#    [Tags]             smoketest
#    Click "Đăng nhập" button
#    Required message "Email" displayed under "Xin vui lòng nhập email" field
#    Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
#
#SI-05 Verify that Login unsuccessfully because no enter Email
#    [Tags]             smoketest
#    Enter "text" in "Mật khẩu" with "123123"
#    Click "Đăng nhập" button
#    Required message "Email" displayed under "Xin vui lòng nhập email" field
#
#SI-06 Verify that Login unsuccessfully because no enter Password
#    [Tags]             smoketest
#    Enter "text" in "Email" with "admin@gmail.com"
#    Click "Đăng nhập" button
#    Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field