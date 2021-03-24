const initLog= () => {
  const avatar = document.getElementById("avatar");
  const log = document.getElementById("log");
  if (avatar) {
    avatar.addEventListener('click', () => {
      // $(log).show( "blind", {direction: "horizontal"}, 1000 );
      // $(avatar).hide( "blind", {direction: "horizontal"}, 1000 );
      avatar.classList.add("d-none");
      log.classList.remove("d-none");
    });
  }
}

export { initLog }
