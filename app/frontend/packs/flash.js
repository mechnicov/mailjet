document.addEventListener("DOMContentLoaded", () => {
  const flashMsgs = document.getElementsByClassName("flash-msg")

  Array.from(flashMsgs).forEach(flash => {
    setTimeout(() => flash.classList.add("hide"), 2000)
  })
})
