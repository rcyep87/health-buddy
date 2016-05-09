$('#form-submit').on('click', function() {
  $.ajax({
    url: 'steps/new',
    dataType: 'JSON',
    method: 'POST',
    data: {
      step: {
        count: $('#step_count').val(),
        date: $('#step_date').val(),
      }
    },
    success: function(response) {
    }
  })
});
