$(function(){
  function buildHTML(message){
    if ( message.video ) {
      var html = 
      `<div class="main__middle__message">
      <div class="main__middle__message__quest">
      <div class="main__middle__message__quest__text">
      ${message.content}
      </div>
      <div class="main__middle__message__quest__image">
      <video width="500px" height="300px" src=${message.video}></video>
      </div>
      <div class="main__middle__message__quest__show">
      <a href=/groups/${message.group_id}/messages/${message.message_id}>回答
      </a>
      <a rel="nofollow" data-method="delete" href=/groups/${message.group_id}/messages/${message.message_id}>削除
      </a>
      </div>
      </div>
      </div>`
      return html;
    } else {
      var html =
      `<div class="main__middle__message">
      <div class="main__middle__message__quest">
      <div class="main__middle__message__quest__text">
      ${message.content}
      </div>
      <div class="main__middle__message__quest__image">
      </div>
      <div class="main__middle__message__quest__show">
      <a href=/groups/${message.group_id}/messages/${message.message_id}>回答
      </a>
      <a rel="nofollow" data-method="delete" href=/groups/${message.group_id}/messages/${message.message_id}>削除
      </a>
      </div>
      </div>
      </div>
      </div>`
      return html;
    };
  }
  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.sin').append(html);
      $('.sin').animate({ scrollTop: $('.sin')[0].scrollHeight});      
       $('#new_message')[0].reset();
       $(".main__bottom__send").prop("disabled", false);
    })
  });
  $('.wrapper').bgSwitcher({
    images: ['https://media.gettyimages.com/photos/sporty-man-running-up-steps-in-urban-setting-picture-id631184594?s=2048x2048', 'https://media.gettyimages.com/photos/time-to-clock-another-personal-best-picture-id916060452?s=2048x2048', 'https://media.gettyimages.com/photos/senior-african-american-man-drinking-water-picture-id891167436?s=2048x2048'],
    interval: 7000,
    effect: "fade",
    duration: 3000,
  });
});