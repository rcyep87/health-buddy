$('#login-submit').on('click', function(e) {
  e.preventDefault();
  $.ajax({
      url:      '/users/sign_in',
      dataType: 'JSON',
      method:   'POST',
      data: {
        user: {
          email: $('#user_email').val(),
          password: $('#user_password').val()
        }
      },
      success: function() {
        window.href = "dashboard"
      }
  });
});
