
function bindKeydown() {
  $("body").on("keydown", function(event) {
    console.log(event.keyCode);
  });
}

$(document).ready(function() {
  bindKeydown();
});
=======================================================

$(document).ready(function() {
  $(document).on('keyup', function(event) {
    // Detect which key was pressed and call the appropriate function
    // Google "jquery keyup what key was pressed" if you don't know how
    if (event.which == 65) {
    $('#player1_race td.active')
        .removeClass('active')
        .next('td').addClass('active')
    };

    if (event.which == 80) {
    $('#player2_race td.active')
        .removeClass('active')
        .next('td').addClass('active')
    };
  });
});



