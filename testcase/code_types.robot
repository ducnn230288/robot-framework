*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
MPG_01 Verify when create Medical Procedure Group successful
    [Tags]             smoketest
    When Background Medical Procedure Group Happy paths
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line

MPG_02 Verify when edit Medical Procedure Group successful
    [Tags]             smoketest
    When Background Medical Procedure Group Happy paths
    Then Click on the "Sửa" button in the "Tiêu đề" table line
    When Wait Until Element Spin
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Click on the "Xóa" button in the "Tiêu đề" table line

MPG_03 Verify when create Medical Procedure Group successful
    [Tags]             smoketest
    When Background Medical Procedure Group Happy paths
    Then Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

MPG_04 Verify when create Medical Procedure Group unsuccessful beacause leaving Title field
    [Tags]             smoketest
    When Go to page create code types
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field

MPG_05 Verify when create Medical Procedure Group unsuccessful beacause leaving Code field
    [Tags]             smoketest
    When Go to page create code types
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field

MPG_06 Verify when create Medical Procedure Group unsuccessful beacause leaving All field
    [Tags]             smoketest
    When Go to page create code types
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field

*** Keywords ***
Go to page create code types
    When Login to admin
    When Click "QUẢN LÝ DANH MỤC" menu
    When Click "Danh mục" sub menu to "/code-types"
    When Select on the "Nhóm thủ thuật" item line
    When Click "Thêm mới" button

Background Medical Procedure Group Happy paths
    When Go to page create code types
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button