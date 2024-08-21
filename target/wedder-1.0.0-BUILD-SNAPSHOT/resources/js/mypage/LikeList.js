document.addEventListener("DOMContentLoaded",function(){
    const tabs = document.querySelectorAll(".company");
    const contents = document.querySelectorAll(".LikeList-Card-List");

   // 첫번째 탭 활성화
   if(tabs.length> 0 && contents.length > 0){
    tabs[0].classList.add("tab-selected");
    contents[0].classList.add("contents-active");
}

    tabs.forEach((tab,index)=>{
        tab.addEventListener("click",()=>{
            //다른 탭을 눌렀을 때 
            tabs.forEach((btn)=> {
                btn.classList.remove("tab-selected");
            });
            contents.forEach((content) => {
                content.classList.remove("contents-active");
            });

            tab.classList.add("tab-selected");

            contents[index].classList.add("contents-active");
        })
    })
})