$('#myBtn').click(function() {
    $('#advert_picture').click(); // 模拟文件上传按钮点击操作
});

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#blah').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}

$("#advert_picture").change(function(){
  readURL(this);
});
