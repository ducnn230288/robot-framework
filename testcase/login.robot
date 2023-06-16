*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
Test Teardown          Tear Down

*** Test Cases ***
SI-01 Verify that login successfully with valid Email and Password
    [Tags]             smoketest
    Then Login to admin

SI-02 Verify that Login unsuccessfully with invalid Email
    [Tags]             smoketest
    When Enter "text" in "Email" with "_RANDOM_"
    When Enter "text" in "Mật khẩu" with "123123"
    When Click "Đăng nhập" button
    Then User look message "Tài khoản _@Email@_ không tồn tại trong hệ thống. Vui lòng đăng ký mới." popup

SI-03 Verify that Login unsuccessfully with invalid Password
    [Tags]             smoketest
    When Enter "text" in "Email" with "admin@gmail.com"
    When Enter "text" in "Mật khẩu" with "_RANDOM_"
    When Click "Đăng nhập" button
    Then User look message "Sai mật khẩu cho tài khoản _@Email@_" popup

SI-04 Verify that Login unsuccessfully because no enter Email and Password
    [Tags]             smoketest
    When Click "Đăng nhập" button
    Then Required message "Email" displayed under "Xin vui lòng nhập email" field
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field

SI-05 Verify that Login unsuccessfully because no enter Email
    [Tags]             smoketest
    When Enter "text" in "Mật khẩu" with "123123"
    When Click "Đăng nhập" button
    Then Required message "Email" displayed under "Xin vui lòng nhập email" field

SI-06 Verify that Login unsuccessfully because no enter Password
    [Tags]             smoketest
    When Enter "text" in "Email" with "admin@gmail.com"
    When Click "Đăng nhập" button
    Then Required message "Mật khẩu" displayed under "Xin vui lòng nhập mật khẩu" field
