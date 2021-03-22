const initAddTotalForm= () => {
  const btn = document.getElementById("btn-total-form");
  if (btn) {
    const instructionForm = document.getElementById("instruction-form");
    btn.addEventListener('click', () => {
      instructionForm.classList.remove("d-none");
    });
  };
}

export { initAddTotalForm }
