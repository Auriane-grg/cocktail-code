const initAddTotalForm= () => {
  const btn = document.getElementById("btn-total-form");
  const hide = document.getElementById("btn-hide-total-form");
  if (btn) {
    const instructionForm = document.getElementById("instruction-form");
    btn.addEventListener('click', () => {
      instructionForm.classList.remove("d-none");
      btn.classList.add("d-none");
      hide.classList.remove("d-none");
      const lastChild = document.querySelector("#instruction-form")
      lastChild.scrollIntoView({behavior: 'smooth'})
    });
    hide.addEventListener('click', () => {
      btn.classList.remove("d-none");
      hide.classList.add("d-none");
      instructionForm.classList.add("d-none");
    });
  }
}

export { initAddTotalForm }
