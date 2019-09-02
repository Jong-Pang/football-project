<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<title>팀 생성</title>
</head>
<body>

<div class="container">
	<div class="row">
    <div class="col-md-8">
        <div class="modal_content">
        <h1 class="entry-title"><span>팀 만들기</span> </h1>
        <hr>
            <form class="form-horizontal" method="post" name="signup" id="signup" enctype="multipart/form-data" >        
        
        <div class="form-group">
          <label class="control-label col-sm-3">구단이름 <br></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="TeamName" id="TeamName" placeholder="생성할 팀의 이름을 입력해주세요.">
          </div>
        </div>
        
         <div class="form-group">
          <label class="control-label col-sm-3">팀 최대인원 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <div class="form-inline">
              <div class="form-group">&nbsp;&nbsp;&nbsp;
                <select name="dd" class="form-control">
                  <option value="최대 인원">최대 인원</option>
                  <option value="2" >2 </option><option value="3" >3 </option><option value="4" >4 </option><option value="5" >5 </option><option value="6" >6 </option><option value="7" >7 </option><option value="8" >8 </option><option value="9" >9 </option><option value="10" >10 </option><option value="11" >11 </option><option value="12" >12 </option><option value="13" >13 </option><option value="14" >14 </option><option value="15" >15 </option><option value="16" >16 </option><option value="17" >17 </option><option value="18" >18 </option><option value="19" >19 </option><option value="20" >20 </option><option value="21" >21 </option><option value="22" >22 </option><option value="23" >23 </option><option value="24" >24 </option><option value="25" >25 </option>             
                  </select>
              </div>
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">유니폼의 유/무 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <label>
            <input name="uniform" type="radio" value="유" checked>
            유 </label>
            <label>
            <input name="uniform" type="radio" value="무" >
            무 </label>
          </div>
        </div>
       
    
      
        <div class="form-group">
          <label class="control-label col-sm-3">로고 이미지 <br></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:-</span> 이 <a href="#">Team</a>을 이대로 생성하시겠습니까? </span> </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="팀 생성하기" id="modal_close_btn" class="btn btn-primary">
          </div>
          <div class="modal_layer"></div>
        </div>
      </form>
    </div>
    </div>
</div>
</div>

</body>
</html>