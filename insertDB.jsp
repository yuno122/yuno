<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>��ǰ ���</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/css/bootstrap-slider.min.css" integrity="sha256-G3IAYJYIQvZgPksNQDbjvxd/Ca1SfCDFwu2s2lt0oGo=" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
   <form action="insertProc.jsp" method="post">
    <div class="container container-sm container-item-create">
        <h5 class="container-headline">�߰�ŷ� ��ǰ ���</h5>

        <form class="form-item-create" enctype="multipart/form-data">
            <div class="form-group form-picture">
                <div class="file-box">
           		      file: <input type="file" name="file"><br>
      				  <input type="submit" value="file upload">
                </div>
            </div>

            <div class="form-group form-title">
                <input type="text" class="form-control" name="name" placeholder="��ǰ �̸��� �Է����ּ���.">
            </div>
            <div class="form-group form-category">
                <select name="category" class="form-control">
                    <option value="" disabled selected>ī�װ��� �������ּ���.</option>
                    <option value="�����б��">�����б��</option>
                    <option value="��Ȱ����">��Ȱ����</option>
                    <option value="��ǰ">��ǰ</option>
                    <option value="���ƿ�ǰ">���ƿ�ǰ</option>
                    <option value="����">����</option>
                    <option value="����/���">����/���</option>
                    <option value="��Ƽ">��Ƽ</option>
                    <option value="������">������</option>
                    <option value="��Ÿ��ǰ">��Ÿ��ǰ</option>
                </select>
            </div>
            <div class="form-group form-price">
                <input type="number" class="form-control" name="price" min="0" step="1000" placeholder="������ �Է����ּ���. (��)">
            </div>
            <div class="form-group form-description">
                <textarea class="form-control" name="content" rows="10" placeholder="��ǰ ������ �ۼ����ּ���."></textarea>
            </div>
        
            
            <input type="submit" value="��ǰ���">
        </form>
    </div>

    <footer>
        <div class="container">
            <a href="home.jsp">2021 Squid </a>
    
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/bootstrap-slider.js" integrity="sha256-59/apVFrosMLFX2dHZLGvb3nPpu7e0Yx1rsDr1dTRrk=" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){
            var fileTarget = $('.file-box .upload-hidden');

            fileTarget.on('change', function(){
                if(window.FileReader){
                    var filename = $(this)[0].files[0].name;
                } else {
                    var filename = $(this).val().split('/').pop().split('\\').pop();
                }

                $(this).siblings('.upload-name').val(filename);
            });
        });
    </script>
    </form>
</body>
</html>