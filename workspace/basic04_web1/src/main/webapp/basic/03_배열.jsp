<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>03_배열.jsp</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h3>배열</h3>
<%

	String[] uname= {"라일락","진달래","개나리","무궁화","홍길동"};
	int[] kor= {100, 50, 95, 80, 60};
	int[] eng= {100, 55, 95, 85, 40};
	int[] mat= {100, 60, 35, 90, 30};
	int size=uname.length; //5

	//평균 구하기
	int[] aver={0, 0, 0, 0, 0};
	for(int i=0; i<size; i++){
		aver[i]=(kor[i]+eng[i]+mat[i])/3;
	} // for end
	
	//등수 구하기
	int[] rank={1, 1, 1, 1, 1};
	for(int a=0; a<size; a=a+1){
		for(int b=0; b<size; b=b+1){
			if(aver[a]<aver[b]){
				rank[a]=rank[a]+1;
			}// if end
		} // for end
	}//for end
%>

	<!-- 출력 -->
	<div class="container">
		<table class="table">
		<thead>
			<tr class="table-success">
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>평균</th>
				<th>등수</th>
				<th>결과</th>
			</tr>
		</thead>
		<tbody>
<%
		for(int i=0; i<size; i++){
%>			

			<tr>
				<td><%=uname[i] %></td>
				<td><%=kor[i] %></td>
				<td><%=eng[i] %></td>
				<td><%=mat[i] %></td>
				<td><%=aver[i] %></td>
				<td><%=rank[i] %></td>
				<td>
<%
					if(aver[i]>=70){
						if(kor[i]<40 || eng[i]<40 || mat[i]<40){
							out.print("재시험");
						}else{
							out.print("합 격");
						}// if end
					}else{
						out.print("불합격");
					}// if end
					
					for(int star=0; star<aver[i]/10; star++) {
						out.print("*");
					}//for end
					
					// 평균95이상이면 장학생 (진하게, 빨강색)
					if(aver[i]>=95){
						out.print("<span style='color:red; font-weight:bold;'>");
						out.print("장학생");
						out.print("</span>");
					}// if end
%>				
				</td>
			</tr>
			
<%			
		} // for end
%>
		
		</tbody>
		</table>
	</div>
	
</body>
</html>