$(document).ready( function () {
    $('#myModal').ready( function () {
      $('.addAuthorButton').click( function (event) {
        event.preventDefault()
        $(".authors").append('<input class="input-xlarge" id="authors" type="text" name="authors" placeholder="">')
        })
    })

      $('#dropdown').on('change', function () {
      var answer = $("#dropdown :selected").val()
        $('.categories').append(`<input class="input-xlarge" id="categories" name="categories" value="${answer}" disabled>`)
      })

    $('#myModal').ready( function () {
      $('.addCategory').click( function (event) {
        event.preventDefault()
        $(".authors").append('<input class="input-xlarge" id="authors" type="text" name="authors" placeholder="">')
        })
    })
})
