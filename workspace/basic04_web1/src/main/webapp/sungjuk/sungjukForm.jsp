<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukForm.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <h3>* 성적 입력 폼 *</h3>
   <p><a href="sungjukList.jsp">[성적목록]</a></p>
   <form name="sungjukfrm" id="sungjukfrm" method="post" action="sungjukIns.jsp">
   <table class="table table-striped">
   <tr>
     <th class="info">이름</th>
     <td><input type="text" name="uname" maxlength="20" required autofocus></td>
   </tr> 
   <tr>
     <th class="info">국어</th>
     <td><input type="number" name="kor" size="5" min="0" max="100" placeholder="숫자입력"></td>
   </tr>
<tr>
     <th class="info">영어</th>
     <td><input type="number" name="eng" size="5" min="0" max="100" placeholder="숫자입력"></td>
   </tr> 
   <tr>
     <th class="info">수학</th>
     <td><input type="number" name="mat" size="5" min="0" max="100" placeholder="숫자입력"></td>
   </tr>
<tr>
     <th class="info">주소</th>
     <td>
         <select name="addr">
              <option value="Seoul">서울</option>
              <option value="Jeju">제주</option>
              <option value="Suwon">수원</option>
              <option value="Busan">부산</option>
         </select> 
     </td>
   </tr>
<tr>
     <td colspan="2" align="center">
        <input type="submit" value="전송">
        <input type="reset"  value="취소">
     </td>
   </tr>
   </table>
   </form>
</body>
</html>