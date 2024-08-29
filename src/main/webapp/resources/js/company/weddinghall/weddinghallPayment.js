const allCheck = document.querySelector("#terms1");
const check1 = document.querySelector("#terms2");
const check2 = document.querySelector("#terms3");

// 한번에 모두 동의
allCheck.addEventListener("click", (e) => {
    const isChecked = allCheck.checked;
    if (isChecked) {
        check1.checked = true;
        check2.checked = true;
    } else {
        check1.checked = false;
        check2.checked = false;
    }
});

// 1,2번 체크시 모두 동의 true로 변경
const updateCheckBox = () => {
    if (check1.checked == true && check2.checked == true) {
        allCheck.checked = true;
    } else {
        allCheck.checked = false;
    }
};

check1.addEventListener("change", updateCheckBox);
check2.addEventListener("change", updateCheckBox);
