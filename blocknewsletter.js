$(document).ready(function() {
	
    $('.newsletter-form form').on('submit', function(e) {
        e.preventDefault();
        var obj;
        var self = $(this);
        if(validate_isEmail(self.find('#newsletter-input').val()))
        {
             $.ajax({
              type: 'POST',
              url: this_path + 'blocknewsletter-ajax.php',
              data: {
                        'email': self.find('#newsletter-input').val(), 
                        'action': 0, 
                        'submitNewsletter': true
                },
              dataType:"json", 
              success: function(jsonData) {
                if(jsonData.error) {

                    self.removeClass('has-success').addClass('has-error');
                    $('.newsletter-alert').text(jsonData.error);

                } else {

                    self.removeClass('has-error').addClass('has-success');
                    $('.newsletter-alert').text(jsonData.valid);
                }

              }
            });
        } else {
            self.removeClass('has-success').addClass('has-error');
        }
    });



});