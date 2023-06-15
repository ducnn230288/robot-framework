*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
Test Teardown          Tear Down

*** Test Cases ***
CA_PO_01 Verify when Create menu successfully
    [Tags]             smoketest
    Enter "text" in "Email" with "admin@gmail.com"
    Enter "text" in "Mật khẩu" with "123123"
    Click "Đăng nhập" button
    User look message "Success" popup
    Click "QUẢN LÝ DANH MỤC" menu
    Click "Post" sub menu to "/post"
    Click "Tạo mới" button
    Enter "test name" in "Tiêu đề" with "_RANDOM_"
    Enter "text" in "Slug" with "_RANDOM_"
    Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    Click "Lưu lại" button
    User look message "Thêm mới danh mục bài viết thành công" popup
    Click on the "Xóa" button in the "Tiêu đề" item line
    User look message "Đã xóa thành công" popup