*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
PR_01 Verify when Create menu successfully
    [Tags]             smoketest
    When Background Happy paths
    When Click on the previously created "Tên tham số" tree to delete
    Then User look message "Success" popup

PR_02 Verify when Edit menu successfully
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Success" popup
    When Click on the previously created "Tên tham số" tree to edit
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "text" in "Nhóm" with "Test"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the previously created "Tên tham số" tree to delete

PR_03 Verify when Delete menu successfully
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Success" popup
    When Click on the previously created "Tên tham số" tree to delete
    Then User look message "Success" popup

PR_04 Verify when Create menu successfully with off button System
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Success" popup
    When Click on the previously created "Tên tham số" tree to delete
    Then User look message "Success" popup
    When Click "Tạo mới" button
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_""
    When Enter "text" in "Nhóm" with "Test"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    And Click "Lưu lại" button
    Then User look message "Success" popup
    When Click on the previously created "Tên tham số" tree to delete
    Then User look message "Success" popup

PR_05 Verify when Create menu unsuccessfully when leaving all fields blank
    [Tags]             smoketest
    When Go to page create data
    And Click "Lưu lại" button
    Then Required message "Tên tham số" displayed under "Xin vui lòng nhập tên tham số" field
    Then Required message "Giá trị tham số" displayed under "Xin vui lòng nhập giá trị tham số" field

PR_06 Verify when Create menu unsuccessfully when leaving Parameter name field
    [Tags]             smoketest
    When Go to page create data
    When Enter "text" in "Giá trị tham số" with "_RANDOM_""
    When Enter "text" in "Nhóm" with "Test"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    And Click "Lưu lại" button
    Then Required message "Tên tham số" displayed under "Xin vui lòng nhập tên tham số" field

PR_07 Verify when Create menu unsuccessfully when leaving the Parameter value field
    [Tags]             smoketest
    When Go to page create data
    When Enter "test name" in "Tên tham số" with "_RANDOM_""
    When Enter "text" in "Nhóm" with "Test"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    And Click "Lưu lại" button
    Then Required message "Giá trị tham số" displayed under "Xin vui lòng nhập giá trị tham số" field

PR_8 Verify when creating menu unsuccessfully when clicking Notification of Content Check Management then clicking on add new button
    [Tags]             smoketest
    When Background Happy paths
    When Click on the previously created "Tên tham số" tree to edit
    When Click "Tạo mới" button
    And Click "Lưu lại" button
    Then Required message "Tên tham số" displayed under "Xin vui lòng nhập tên tham số" field
    Then Required message "Giá trị tham số" displayed under "Xin vui lòng nhập giá trị tham số" field
    When Click on the previously created "Tên tham số" tree to delete

PR_9 Verify when navigation unsuccessfully when editing navigation
    [Tags]             smoketest
    When Background Happy paths
    When Click on the previously created "Tên tham số" tree to edit
    When Enter "test name" in "Tên tham số" with ""
    When Enter "text" in "Giá trị tham số" with ""
    When Enter "text" in "Nhóm" with ""
    When Enter "paragraph" in textarea "Ghi chú" with ""
    When Click "Lưu lại" button
    Then Required message "Tên tham số" displayed under "Xin vui lòng nhập tên tham số" field
    Then Required message "Giá trị tham số" displayed under "Xin vui lòng nhập giá trị tham số" field
    When Click on the previously created "Tên tham số" tree to delete

*** Keywords ***
Go to page create data
    When Login to admin
    When Click "SUPERADMIN" menu
    When Click "Cấu hình hệ thống" sub menu to "/parameter"
    When Click "Tạo mới" button

Background Happy paths
    When Go to page create data
    When Enter "test name" in "Tên tham số" with "_RANDOM_"
    When Enter "text" in "Giá trị tham số" with "_RANDOM_"
    When Enter "text" in "Nhóm" with "Test"
    When Enter "paragraph" in textarea "Ghi chú" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Success" popup
