// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("jquery");
require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from "../plugins/init_mapbox";
import { loadDynamicTitleText } from "../components/title";
import { loadDynamicIndexTitleText } from "../components/title";

document.addEventListener("turbolinks:load", () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  loadDynamicTitleText();
  loadDynamicIndexTitleText();
});

// const myModal = document.querySelectorAll(".review-stars");
// myModal.forEach((button) => {
//   button.addEventListener("click", () => {
$("#myModal").on("shown.bs.modal", function () {
  $("#myInput").trigger("focus");
});
//   });
// });

document.querySelectorAll(".modal-button").forEach((button) => {
  button.addEventListener("click", (event) => {
    const service_id = event.currentTarget.dataset.serviceId
    const modalBody = document.querySelector(".modal-body")
    const serviceInput = document.querySelector("#review_service_id")
    serviceInput.value = service_id
  })
})


