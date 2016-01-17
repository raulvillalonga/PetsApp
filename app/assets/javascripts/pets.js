// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

(function () {

  "user strict";
  var ajax = new Ajax();

  $(document).on("click", ".js-show-details",function(event){
    event.preventDefault();
    ajax.execute('/api/pets/' + $(event.currentTarget).attr('data-pet'), loadPetModal);
    ajax.execute('/api/owner/' + $(event.currentTarget).attr('data-pet'), loadOwner);
  });

  function loadPetModal (data) {
    $(".js-pet-name").text(data.name);
    $(".js-pet-species").text(data.species);
    $(".js-pet-age").text(data.age);
    $(".js-pet-modal").modal("show");
  }

  function loadOwner (data) {
    $(".js-pet-owner").text(data.name);
  }


})();