
// document.getElementById('heart').addEventListener('click', function() {
//     this.classList.toggle('liked');
// }); 

document.querySelectorAll(".heart").forEach((item) => {
    item.addEventListener("click", () => {
        item.classList.toggle("liked");
    })
});