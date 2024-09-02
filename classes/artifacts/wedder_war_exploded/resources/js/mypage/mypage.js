// test
const selectMenu=document.querySelector("#brand");

// 1.스드메 언더바
let horizontalBar =document.getElementById("horizontal-underline");
let horizontalMenus =document.querySelectorAll(".tabs div a")
//2. 탭 활성화
const sutdio = document.getElementsByClassName("sutdio");
const makeUp = document.getElementsByClassName("makeUp");
const dress = document.getElementsByClassName("dress");

// function showSelect(){
//     let selectedText= selectMenu.options[selectMenu.selectedIndex].innerText;
//   //  alert(`[${selectedText}]를 선택했습니다.`) ;

// }
// selectMenu.onchange =showSelect;

// 1. 스드메 언더바 함수
function horizontalIndicator(e){
  horizontalBar.style.left =e.currentTarget.offsetLeft+"px";
  horizontalBar.style.width =e.currentTarget.offsetWidth +"px";
  horizontalBar.style.top=
    e.currentTarget.offsetTop + e.currentTarget.offsetHeight+"px";
}
horizontalMenus.forEach((menu) => 
  menu.addEventListener("click",(e) =>{
    horizontalIndicator(e);
  })
);
// 2.스드메 탭 활성화 
const tabList=document.querySelectorAll(".content #brand");
const btns=document.querySelectorAll(".tabs .tab");

for(let i =0; i<tabList.length; i++){
  btns[i].addEventListener('click',function(){
    tabList(i).classList.add('is_on');
    if(!tabList(i)){
      !tabList(i).classList.remove('is_on');
    }
  });
}


// 보류
// $(document).ready(function($){
//   $(".").click(function(event){
//     console.log("");
//     event.preventDefault();
//     $('').animate({scrollTop:$(this.hash).offset().top},500);
//   })
// })