*** Settings ***
Resource               ../keywords/common.robot
#Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
Verify when create successful
    [Tags]             smoketest    @regression
    MPG_01 Verify when create Nhóm thủ thuật successful
    MPD_01 Verify when create Độ khó successful
    MD_01 Verify when create Bằng cấp chuyên môn successful
#    NOT_01 Verify when create Số răng successful

Verify when edit successful
    [Tags]             smoketest
    MPG_02 Verify when edit Nhóm thủ thuật successful
    MPD_02 Verify when edit Độ khó successful
    MD_02 Verify when edit Bằng cấp chuyên môn successful
#    NOT_02 Verify when edit Số răng successful

Verify when remove successful
    [Tags]             smoketest
    MPG_03 Verify when remove Nhóm thủ thuật successful
    MPD_03 Verify when remove Độ khó successful
    MD_03 Verify when remove Bằng cấp chuyên môn successful
#    NOT_03 Verify when remove Số răng successful

Verify when create unsuccessful beacause leaving Title field
    [Tags]             smoketest
    MPG_04 Verify when create Nhóm thủ thuật unsuccessful beacause leaving Title field
    MPD_04 Verify when create Độ khó unsuccessful beacause leaving Title field
    MD_04 Verify when create Bằng cấp chuyên môn unsuccessful beacause leaving Title field
    NOT_04 Verify when create Số răng unsuccessful beacause leaving Title field

Verify when create unsuccessful beacause leaving Code field
    [Tags]             smoketest
    MPG_05 Verify when create Nhóm thủ thuật unsuccessful beacause leaving Code field
    MPD_05 Verify when create Độ khó unsuccessful beacause leaving Code field
    MD_05 Verify when create Bằng cấp chuyên môn unsuccessful beacause leaving Code field
    NOT_05 Verify when create Số răng unsuccessful beacause leaving Code field

Verify when create unsuccessful beacause leaving All field
    [Tags]             smoketest
    MPG_06 Verify when create Nhóm thủ thuật unsuccessful beacause leaving All field
    MPD_06 Verify when create Độ khó unsuccessful beacause leaving All field
    MD_06 Verify when create Bằng cấp chuyên môn unsuccessful beacause leaving All field
    NOT_06 Verify when create Số răng unsuccessful beacause leaving All field

*** Keywords ***
Go to page create code types ${type}
    When Setup
    When Login to admin
    When Click "QUẢN LÝ DANH MỤC" menu
    When Click "Danh mục" sub menu to "/code-types"
    When Select on the "${type}" item line
    When Click "Thêm mới" button

Background ${type} Happy paths
    When Go to page create code types ${type}
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button

${code} Verify when create ${type} successful
    When Background ${type} Happy paths
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    When Tear Down

${code} Verify when edit ${type} successful
    When Background ${type} Happy paths
    Then User look message "Success" popup
    Then Click on the "Sửa" button in the "Tiêu đề" table line
    When Wait Until Element Spin
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Click on the "Xóa" button in the "Tiêu đề" table line
    When Tear Down

${code} Verify when remove ${type} successful
    When Background ${type} Happy paths
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup
    When Tear Down

${code} Verify when create ${type} unsuccessful beacause leaving Title field
    When Go to page create code types ${type}
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    When Tear Down

${code} Verify when create ${type} unsuccessful beacause leaving Code field
    When Go to page create code types ${type}
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field
    When Tear Down

${code} Verify when create ${type} unsuccessful beacause leaving All field
    When Go to page create code types ${type}
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field
    When Tear Down
