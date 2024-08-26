const tab = document.querySelectorAll('.tab');
const con = document.querySelectorAll('.content');

tab.forEach(function(tab_btn, index){
  tab_btn.addEventListener('click',function(){
    tab.forEach(other_btn => {
      other_btn.classList.remove('active');
    });
    con.forEach(other_cont => {
      other_cont.classList.remove('con_active');
    });
    tab[index].classList.add('active');
    con[index].classList.add('con_active');
  });
});