function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#blah').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}

$('#myBtn').click(function() {
    $('#advert_picture').click(); // 模拟文件上传按钮点击操作
});
$("#advert_picture").change(function(){
  readURL(this);
});

$('#myBtn').click(function() {
    $('#rent_picture').click(); // 模拟文件上传按钮点击操作
});
$("#rent_picture").change(function(){
  readURL(this);
});

$('#myBtn').click(function() {
    $('#tour_picture').click(); // 模拟文件上传按钮点击操作
});
$("#tour_picture").change(function(){
  readURL(this);
});

$(function(){
  var n = $("#tour_short").val().length + 1;
  $('#nowtxt').html('<b>目前:' + n + '字</b>');
  $('#tour_short').keydown(function() {
    n = $("#tour_short").val().length + 1;
    $('#nowtxt').html('<b>目前:' + n + '字</b>');
  });
  $('#tour_short').click(function() {
    n = $("#tour_short").val().length + 1;
    $('#nowtxt').html('<b>目前:' + n + '字</b>');
  });
  $('#Submit').click(function() {
    n = $("#tour_short").val().length + 1;
    if (n > 100) {
      alert('提醒: 字數太多了!');
      return false;
    }
  });
});
