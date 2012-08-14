$('#new_comments_ticket').submit(function() {

 $.ajax({
  url: '/comments/create',
  method: 'post',
  success: function(data) {
    
  }
 });
 
});

