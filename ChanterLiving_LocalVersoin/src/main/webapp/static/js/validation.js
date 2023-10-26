/**
* 유효성 검사
*/
function checkProduct() {
let form = document.product
let productId = form.product_id
let name = form.product_name
let Img = form.img
let Description = form.description

let msg = ''

// 상품아이디 체크
// - P숫자 6자리
let productIdCheck = /^P[0-9]{6}$/
msg = '상품 아이디는 "P6자리" 로 입력해주세요'
if (!check(productIdCheck, productId, msg)) return false

// 상품명 체크
// - 2글자 이상 20글자 이하
let nameCheck = /^.{2,20}$/
msg = '상품명은 2~20자 이내로 입력해주세요'
if (!check(nameCheck, name, msg)) return false

// 상세 정보
// - 문자로 1글자 이상
let descriptioncheck = /^.{1,}$/
msg = '상세정보는 1글자 이상의 글자로 입력해주세요'
if (!check(descriptioncheck, Description, msg)) return false

// 이미지 체크
msg = '이미지 파일을 첨부해주세요';
if (!Img || Img == "") { // unitPrice 변수 이름이 이미지 파일 입력 필드의 이름인지 확인하세요
alert(msg);
return false;
}


return true
}

// 유저정보 수정 유효성 검사 메소드
function checkUser() {

let update = document.updateForm
let pw = update.pw
let repw = update.repw
let name = update.name
let address = update.address
let phone = update.phone

let msg = ''

if (pw.value.length < 4 || pw.value.length > 20) {
alert('비밀번호를 4자 이상, 20자 이하로 입력하세요.')
return false
}

if (pw.value != repw.value) {
alert('비밀번호가 일치하지 않습니다.')
return false
}

if (name.value.length > 10) {
alert('10자 이내로 입력하세요.')
return false
}
else {
let nameCheck = /^\D/
msg = '첫글자에는 숫자를 입력할수 없습니다.'
if (!check(nameCheck, name, msg)) return false
}

if (address.value.length > 50) {
alert('50자 이내로 입력하세요.')
return false
}
else {
let addressCheck = /^\D/
msg = '첫글자에는 숫자를 입력할수 없습니다.'
if (!check(addressCheck, address, msg)) return false
}

let phoneCheck = /^[0-9]*$/
msg = '- 없이 숫자만 입력해주세요'
if (!check(phoneCheck, phone, msg)) return false
}

// 예약등록 유효성 검사 메소드
function checkReserve() {

let reserve = document.reserveform
let name = reserve.name
let address = reserve.address
let phone = reserve.phone
let size = reserve.size
let date = reserve.date

let msg = ''

if (name.value.length > 10) {
alert('10자 이내로 입력하세요.')
return false
}
else {
let nameCheck = /^\D/
msg = '첫글자에는 숫자를 입력할수 없습니다.'
if (!check(nameCheck, name, msg)) return false
}

if (address.value.length > 50) {
alert('50자 이내로 입력하세요.')
return false
}
else {
let addressCheck = /^\D/
msg = '첫글자에는 숫자를 입력할수 없습니다.'
if (!check(addressCheck, address, msg)) return false
}

let phoneCheck = /^[0-9]*$/
msg = '- 없이 숫자만 입력해주세요'
if (!check(phoneCheck, phone, msg)) return false

let sizeCheck = /^[0-9]*$/
msg = '숫자만 입력해주세요'
if (!check(sizeCheck, size, msg)) return false

if (date.value.length > 20) {
alert('20자 이내로 입력하세요.')
return false
}

}


// 정규표현식 유효성 검사 함수
function check(regExp, element, msg) {

if (regExp.test(element.value)) {
return true
}
alert(msg)
element.select()
element.focus()
return false
}

// 회원탈퇴 메소드
function alertDel() {

let form = document.updateForm

let check = confirm('정말로 탈퇴 하시겠습니까?')

if (check) {
form.action = '../user_pro/delete_pro.jsp'
form.submit()
}

}