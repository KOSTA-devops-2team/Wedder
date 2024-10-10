
document.addEventListener('DOMContentLoaded',()=>{
    const prices = document.querySelectorAll('.price');
    let total = 0;
    prices.forEach(price =>{
        total +=parseInt(price.textContent,10);
    });
    console.log(total);
    const totalPrice=document.getElementById(`totalPrice`);
    totalPrice.textContent=`${total}원`;

    const salePrice = document.getElementById(`salePrice`);
    console.log(salePrice);
    salePrice.textContent=`86000원`;
    const lastPrice =parseInt(totalPrice.textContent,10)-parseInt(salePrice.textContent,10);
    console.log(lastPrice);
    const lastPriceElement =document.getElementById(`lastPrice`);
    lastPriceElement.textContent=`${lastPrice}원`

    const  regBtn=document.getElementById(`regBtn`);
    const prevBtn =document.getElementById(`prevBtn`);
    const nextBtn=document.getElementById(`nextBtn`);

    if  (regBtn)  regBtn.style.display=`none`;
    if (nextBtn) nextBtn.style.display = 'none';
    if (prevBtn) prevBtn.style.display = 'none';

    const calendarHeader = document.querySelector(`.calendar-header`);
    if (calendarHeader) calendarHeader.style.justifyContent=`center`;
})

document.addEventListener("DOMContentLoaded",function (){
    const optionTabs = document.querySelectorAll(".option-tab");
    const contents=document.querySelectorAll(`.content`);

    if(optionTabs.length>0 && contents.length>0){
        optionTabs[0].classList.add("optionTab-selected");
        contents[0].classList.add("content-active");
    }

    optionTabs.forEach((tab,index)=> {
        tab.addEventListener("click",()=>{
            optionTabs.forEach((btn)=>{
                btn.classList.remove("optionTab-selected");
            });
            contents.forEach((content)=>{
                content.classList.remove("active");
            });
            tab.classList.add("optionTab-selected");

            contents[index].classList.add("active");
        })
    })
})

$(document).ready(function(){

    const getInfoYear =parseInt(document.getElementById("getYear").textContent.trim());
    const getInfoMonth =parseInt(document.getElementById("getMonth").textContent.trim());
    const getInfoDay = parseInt(document.getElementById("getDay").textContent.trim());
    const currentInfoYear =document.getElementById("currentYear").textContent.trim();
    const currentInfoMonth =document.getElementById("currentMonth").textContent.trim();

    if(getInfoYear!==null &&getInfoMonth!==null ){
        currentYear=getInfoYear
        currentMonth=getInfoMonth
    }


    if (
        currentInfoYear===getInfoYear &&
        currentInfoMonth===getInfoMonth
    ){console.log("날짜 비교가 되는 거 같아요")
    }
})