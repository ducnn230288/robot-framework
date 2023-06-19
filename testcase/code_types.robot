*** Settings ***
Resource               ../keywords/common.robot
#Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
Verify when create successful
    [Tags]             smoketest    @regression
    [Template]    Verify when create successful
    MPG_01 Verify when create Medical Procedure Group successful        Nhóm thủ thuật
    MPD_01 Verify when create Medical Procedure Difficulty successful   Độ khó
    MD_01 Verify when create Medical Degree successful                  Bằng cấp chuyên môn
    NOT_01 Verify when create Number of Teeth successful                Số răng

Verify when edit successful
    [Tags]             smoketest
    [Template]    Verify when edit successful
    MPG_02 Verify when edit Medical Procedure Group successful        Nhóm thủ thuật
    MPD_02 Verify when edit Medical Procedure Difficulty successful   Độ khó
    MD_02 Verify when edit Medical Degree successful                  Bằng cấp chuyên môn
    NOT_02 Verify when edit Number of Teeth successful                Số răng

Verify when remove successful
    [Tags]             smoketest
    [Template]    Verify when remove successful
    MPG_03 Verify when remove Medical Procedure Group successful        Nhóm thủ thuật
    MPD_03 Verify when remove Medical Procedure Difficulty successful   Độ khó
    MD_03 Verify when remove Medical Degree successful                  Bằng cấp chuyên môn
    NOT_03 Verify when remove Number of Teeth successful                Số răng

Verify when create unsuccessful beacause leaving Title field
    [Tags]             smoketest
    [Template]    Verify when create unsuccessful beacause leaving Title field
    MPG_04 Verify when create Medical Procedure Group unsuccessful beacause leaving Title field        Nhóm thủ thuật
    MPD_04 Verify when create Medical Procedure Difficulty unsuccessful beacause leaving Title field   Độ khó
    MD_04 Verify when create Medical Degree unsuccessful beacause leaving Title field                  Bằng cấp chuyên môn
    NOT_04 Verify when create Number of Teeth unsuccessful beacause leaving Title field                Số răng

Verify when create unsuccessful beacause leaving Code field
    [Tags]             smoketest
    [Template]    Verify when create unsuccessful beacause leaving Code field
    MPG_05 Verify when create Medical Procedure Group unsuccessful beacause leaving Code field        Nhóm thủ thuật
    MPD_05 Verify when create Medical Procedure Difficulty unsuccessful beacause leaving Code field   Độ khó
    MD_05 Verify when create Medical Degree unsuccessful beacause leaving Code field                  Bằng cấp chuyên môn
    NOT_05 Verify when create Number of Teeth unsuccessful beacause leaving Code field                Số răng

Verify when create unsuccessful beacause leaving All field
    [Tags]             smoketest
    [Template]    Verify when create unsuccessful beacause leaving All field
    MPG_06 Verify when create Medical Procedure Group unsuccessful beacause leaving All field        Nhóm thủ thuật
    MPD_06 Verify when create Medical Procedure Difficulty unsuccessful beacause leaving All field   Độ khó
    MD_06 Verify when create Medical Degree unsuccessful beacause leaving All field                  Bằng cấp chuyên môn
    NOT_06 Verify when create Number of Teeth unsuccessful beacause leaving All field                Số răng

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

Verify when create successful
    [Arguments]     ${code}     ${type}
    When Background ${type} Happy paths
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    When Tear Down

Verify when edit successful
    [Arguments]     ${code}     ${type}
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

Verify when remove successful
    [Arguments]     ${code}     ${type}
    When Background ${type} Happy paths
    Then User look message "Success" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup
    When Tear Down

Verify when create unsuccessful beacause leaving Title field
    [Arguments]     ${code}     ${type}
    When Go to page create code types ${type}
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "text" in "Mã" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    When Tear Down

Verify when create unsuccessful beacause leaving Code field
    [Arguments]     ${code}     ${type}
    When Go to page create code types ${type}
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "number" in "Thứ tự" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field
    When Tear Down

Verify when create unsuccessful beacause leaving All field
    [Arguments]     ${code}     ${type}
    When Go to page create code types ${type}
    When Click "Lưu lại" button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    Then Required message "Mã" displayed under "Xin vui lòng nhập mã" field
    When Tear Down
