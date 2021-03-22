const initAddTotalForm= () => {
  const btn = document.getElementById("btn-total-form");
  if (btn) {
    const instructionForm = document.getElementById("instruction-form");
    const addingredient = document.getElementById("btn-add-ingredient");
    btn.addEventListener('click', () => {
      instructionForm.classList.remove("d-none");
      const lastChild = document.querySelector("#instruction-form")
      lastChild.scrollIntoView({behavior: 'smooth'})
    });
    addingredient.addEventListener('submit', () => {
      const lastnew = document.querySelector("#new-ingredient")
      lastnew.scrollIntoView({behavior: 'smooth'})
      instructionForm.classList.remove("d-none");
    });
  }
}

export { initAddTotalForm }
