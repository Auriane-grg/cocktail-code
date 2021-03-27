const changeQuantity= () => {
  let i = 1;
  const plus = document.querySelector(".quantity-plus");
  const minus = document.querySelector(".quantity-minus");

  const input = document.getElementById("recipe-counter");
  // let nbr = document.getElementById("recipe-counter").value;
  let allQuantities = [];
  document.querySelectorAll(".to-change").forEach ((q) => { allQuantities.push(parseInt(q.innerText)) });
  const spanToChange =  document.querySelectorAll(".to-change");

  const oneGlass = document.getElementById("one-glass");
  const severalGlass = document.getElementById("several-glasses");
  
  if (plus) {
    plus.addEventListener('click', () => {
      i++;
      input.value = i;
      let nbr = document.getElementById("recipe-counter").value;

      spanToChange.forEach((spanChanged) => {
        let index = allQuantities.findIndex( element => element === parseInt(spanChanged.innerText));
        spanChanged.style.display = "none";
        spanChanged.nextSibling.innerText = "";
        spanChanged.nextSibling.insertAdjacentText('beforeend', `${nbr * parseInt(allQuantities[index])}`);

        if (i === 1) {
          oneGlass.classList.remove('d-none');
          severalGlass.classList.add ('d-none');
        } else {
          console.log('plu')
          severalGlass.classList.remove('d-none');
          oneGlass.classList.add ('d-none');
        }
      });
    });

    minus.addEventListener('click', () => {
      i--;
      input.value = i;

      let nbr = document.getElementById("recipe-counter").value;

      spanToChange.forEach((spanChanged) => {
        let index = allQuantities.findIndex( element => element === parseInt(spanChanged.innerText));
        spanChanged.style.display = "none";
        spanChanged.nextSibling.innerText = "";
        spanChanged.nextSibling.insertAdjacentText('beforeend', `${nbr * parseInt(allQuantities[index])}`);

        if (i === 1) {
          oneGlass.classList.remove('d-none');
          severalGlass.classList.add ('d-none');
        } else {
          severalGlass.classList.remove('d-none');
          oneGlass.classList.add ('d-none');
        }
        });
    });
  }
}

export { changeQuantity }
