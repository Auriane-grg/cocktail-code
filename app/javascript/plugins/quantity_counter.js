const quantityCounter= () => {
  const input = document.getElementById("recipe-counter");
  let nbr = document.getElementById("recipe-counter").value;
  let allQuantities = [];
  document.querySelectorAll(".to-change").forEach ((q) => { allQuantities.push(parseInt(q.innerText)) });
  console.log(allQuantities)

  const spanToChange =  document.querySelectorAll(".to-change");

  input.addEventListener('change', () => {
    nbr = document.getElementById("recipe-counter").value;
    
    spanToChange.forEach((spanChanged) => {
      let i = allQuantities.findIndex( element => element === parseInt(spanChanged.innerText));
      console.log(i);
      spanChanged.style.display = "none";
      spanChanged.nextSibling.innerText = "";
      spanChanged.nextSibling.insertAdjacentText('beforeend', `${nbr * parseInt(allQuantities[i])}`);
      });
    });
    }
export { quantityCounter }
