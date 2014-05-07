$(function() {

var GRID_SIZE = 30;
var PLAYER1_KEY = 68;
var PLAYER2_KEY = 76;

  open_new_session();

  generate_grid(GRID_SIZE);
  give_player_hints(PLAYER1_KEY, PLAYER2_KEY);




  $(document).on('keyup', function(event) {
        // d = 68
        // l = 76
        if (event.which == PLAYER1_KEY) {
          update_player_position("player1", 1);
        }
        if (event.which == PLAYER2_KEY) {
          update_player_position("player2", 1);
        }
  });
});



function open_new_session() {

  $.get( "http://wagon-race-api.herokuapp.com/game/session/new", function( data ) {
    console.log("Page chargée !");
    $("#player_names").show();

    $('form'.submit(function(e) {
      e.preventDefault();
      console.log("le formulaire a été soumis")
      post_players(data)["sessionId"]);
  });
  });
}


function update_player_position(player, number) {
  var cases  = $('#' + player + '_race td'),
  length = cases.length,
  previous_position = cases.siblings('.active').index();

  cases.removeClass('active');
  cases.eq(previous_position + number).addClass('active');

  console.log(previous_position + number, length);
  if ((previous_position + number) >= length) {
    alert(player + ' has won !');
    reset();
  }
}

function post_players(sesionId) {
  var postUrl = "http://wagon-race-api.herokuapp.com/game/session/"+ sessionId +"/new";
  $.ajax({
    type: "POST",
    url: postUrl
    data: JSON.stringify({
      players: [
      { name: $("#player1-name").value() },
      { name: $("#player2-name").value() }
      ]
    });
      contentType: 'application/json'
      success: function(data) {
        console.log('Page chargée !');
      }
      error: function(data) {
        console.log('Un problème est survenu');
      }
    });


  }





  function generate_grid(size) {
    for (var i = 0; i < size - 1; i++) {
      $('#player1_race').append('<td></td>');
      $('#player2_race').append('<td></td>');
    }
  }

  function give_player_hints(player1_key, player2_key) {
    $('#player1_hint').html('Player 1: Hit <strong>' + String.fromCharCode(player1_key) + '</strong>');
    $('#player2_hint').html('Player 2: Hit <strong>' + String.fromCharCode(player2_key) + '</strong>');
  }

  function reset() {
    $('.racer_table td').removeClass('active');
    $('#player1_race td:first-child').addClass('active');
    $('#player2_race td:first-child').addClass('active');
  }

});



