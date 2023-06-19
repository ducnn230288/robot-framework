*** Settings ***
Resource               ../keywords/common.robot
Test Setup             Setup
#Test Teardown          Tear Down

*** Test Cases ***
DA-01 Verify that Add New successfully with enter the data
    [Tags]             smoketest
    When Background Happy paths
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-02 Verify that add successfully with enter Title and categories
    [Tags]             smoketest
    When Background Happy paths
    When Click on the "Xóa" button in the "Tiêu đề" table line
    When Click "Tạo mới bài viết" button
    When Click select "Chuyên mục" with "Press release"
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Thêm mới bài viết thành công" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-03 Verify that edit successfully
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Thêm mới bài viết thành công" popup
    When Click on the "Sửa" button in the "Tiêu đề" table line
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Cập nhật bài viết thành công" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-04 Verify that "Public" successfully
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Thêm mới bài viết thành công" popup
    When Click on the "Đăng bài" button in the "Tiêu đề" table line
    Then User look message "Cập nhật thành công" popup
    When Click on the "Hủy đăng" button in the "Tiêu đề" table line
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-05 Verify that "Hide" successfully
    [Tags]             smoketest
    When Background Happy paths
    Then User look message "Thêm mới bài viết thành công" popup
    When Click on the "Đăng bài" button in the "Tiêu đề" table line
    When Click on the "Hủy đăng" button in the "Tiêu đề" table line
    Then User look message "Cập nhật thành công" popup
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-06 Verify that "Delete" successfully
    [Tags]             smoketest
    When Background Happy paths
    When Click on the "Xóa" button in the "Tiêu đề" table line
    Then User look message "Đã xóa thành công" popup

PO-07 Verify when Create Post unsuccessfully when leaving all fields blank
    [Tags]             smoketest
    When Go to page create data
    When Click "Lưu lại" button
    Then Required message "Chuyên mục" displayed under "Xin vui lòng chọn chuyên mục" field
    When Click "English" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    When Click "Tiếng Việt" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field

PO-08 Verify when Create Post unsuccessfully when leaving Categories fields blank
    [Tags]             smoketest
    When Go to page create data
    When Click radio "Longform" in line "Định dạng bài viết"
    When Enter "color" in "Background Color" with "_RANDOM_"
    When Enter "color" in "Title Fore Color" with "_RANDOM_"
    When Click switch "Show Title" to be activated
    When Click switch "Ghim" to be activated
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Click "Lưu lại" button
    Then Required message "Chuyên mục" displayed under "Xin vui lòng chọn chuyên mục" field

PO-09 Verify when Create Post unsuccessfully when leaving "Tiêu đề" fields blank
    [Tags]             smoketest
    When Go to page create data
    When Select file in "Ảnh cover" with "image.jpg"
    When Select file in "Ảnh thumbnail" with "image.jpg"
    When Click select "Chuyên mục" with "Press release"
    When Click radio "Longform" in line "Định dạng bài viết"
    When Enter "color" in "Background Color" with "_RANDOM_"
    When Enter "color" in "Title Fore Color" with "_RANDOM_"
    When Click switch "Show Title" to be activated
    When Click switch "Ghim" to be activated
    When Enter "text" in "Custom Class" with "text-blue-600"
    When Enter "text" in textarea "Custom CSS" with "{color:1px;}"
    When Click "English" tab button
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Lưu lại" button
    When Click "English" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field
    When Click "Tiếng Việt" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field

PO-10 Verify when Create Post unsuccessfully when leaving title blank in VietNamese format
    [Tags]             smoketest
    When Go to page create data
    When Click select "Chuyên mục" with "Press release"
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    When Click "Tiếng Việt" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field

PO-11 Verify when Create Post unsuccessfully when leaving title blank in English format
    [Tags]             smoketest
    When Go to page create data
    When Click select "Chuyên mục" with "Press release"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Lưu lại" button
    When Click "English" tab button
    Then Required message "Tiêu đề" displayed under "Xin vui lòng nhập tiêu đề" field

PO-12 Verify when Create Post unsuccessfully when article "Tiêu đề" already exist
    [Tags]             smoketest
    When Go to page create data
    When Click select "Chuyên mục" with "Press release"
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_@Tiêu đề@_"
    When Click "Lưu lại" button
    Then User look message "Tiêu đề bản dịch bị trùng lặp" popup

*** Keywords ***
Go to page create data
    When Login to admin
    When Click "QUẢN LÝ DANH MỤC" menu
    When Click "Post" sub menu to "/post"
    When Click "Tạo mới bài viết" button

Background Happy paths
    When Go to page create data
    When Select file in "Ảnh cover" with "image.jpg"
    When Select file in "Ảnh thumbnail" with "image.jpg"
    When Click select "Chuyên mục" with "Press release"
    When Click radio "Longform" in line "Định dạng bài viết"
    When Enter "color" in "Background Color" with "_RANDOM_"
    When Enter "color" in "Title Fore Color" with "_RANDOM_"
    When Click switch "Show Title" to be activated
    When Click switch "Ghim" to be activated
    When Enter "text" in "Custom Class" with "text-blue-600"
    When Enter "text" in textarea "Custom CSS" with "{color:1px;}"
    When Click "English" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Tiếng Việt" tab button
    When Enter "test name" in "Tiêu đề" with "_RANDOM_"
    When Enter "text" in "Tác giả" with "_RANDOM_"
    When Enter "paragraph" in "Mô tả ảnh cover" with "_RANDOM_"
    When Enter "paragraph" in textarea "Giới thiệu" with "_RANDOM_"
    When Enter "paragraph" in editor "Nội dung" with "_RANDOM_"
    When Enter "text" in "Tiêu đề SEO" with "_RANDOM_"
    When Enter "text" in "Từ khóa SEO" with "_RANDOM_"
    When Enter "paragraph" in textarea "Mô tả SEO" with "_RANDOM_"
    When Click "Lưu lại" button
    Then User look message "Thêm mới bài viết thành công" popup

