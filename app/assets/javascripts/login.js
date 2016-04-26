$('#login-submit').on('click', function() {
  $.ajax({
      url:      '/users/sign_in',
      dataType: 'JSON',
      method:   'POST',
      data: {
        user: {
          username: $('#user_email').val(),
          password: $('user_password').val()
        }
      }
  });
});
