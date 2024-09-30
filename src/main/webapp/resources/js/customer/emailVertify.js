let id = document.querySelector("#email");
const btn = document.querySelector(".email-send")
const fil = /[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]+[.]*[a-zA-Z]*/gi;
id.addEventListener("keyup",()=>{
    if(fil.test(id.value)){
        btn.style.backgroundColor ="black";
        btn.style.cursor = "pointer";
    }else if(!fil.test(id.value)) {
        btn.style.backgroundColor ="#b1b1b1";
        btn.style.cursor = "default";
    }
});

const close = document.querySelector(".close")
close.addEventListener("click",function(){
    {
        window.close();
    }
})