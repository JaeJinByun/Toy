<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="/jQueryEx/jquery-3.6.0.js"></script>

<h2> 필터 선택자 </h2>

<script type="text/javascript">
		//<!--
		$(document).ready(	
				function(){
					$("th").hover(function(){
						$(this).css("color","blue");
					},function(){
						$(this).css("color","black");
					});
					$("th").click(function(){
						
						var j = $("th").index(this);
						//구한 인덱스 주변 색갈 바꾸기					
						setTimeout(function(){
							var arr = [-11,-10,-9,-1,1,9,10,11];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","pink"); 
							    });
						},120);
					
						setTimeout(function(){
							var arr = [-22,-21,-20,-19,-18,-12,-8,-2,2,8,12,18,19,20,21,22,2,];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","yellow"); 
							    });
						},180);
						
						
						setTimeout(function(){
							var arr = [-33,-32,-31,-30,-29,-28,-27,-23,-13,-3,7,17,27,-17,-7,3,13,23,33,32,31,30,29,28];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","pink"); 
							    });
						},240);
						
						setTimeout(function(){
							var arr = [-44,-43,-42,-41,-40,-39,-38,-37,-36,-34,-24,-26,-16,-6,4,14,24,34,-14,-4,6,16,26,36,37,38,39,40,41,42,43,44];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","yellow"); 
							    });
						},300);
						
						
						
						//-------------------------------------white-------------------------
						setTimeout(function(){
							var arr = [-11,-10,-9,-1,1,9,10,11];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","white"); 
							    });
						},250);
						
						setTimeout(function(){
							var arr = [-22,-21,-20,-19,-18,-12,-8,-2,2,8,12,18,19,20,21,22,2,];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","white"); 
							    });
						},310);
						
						setTimeout(function(){
							var arr = [-33,-32,-31,-30,-29,-28,-27,-23,-13,-3,7,17,27,-17,-7,3,13,23,33,32,31,30,29,28];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","white"); 
							    });
						},370);	
						
						setTimeout(function(){
							var arr = [-44,-43,-42,-41,-40,-39,-38,-37,-36,-34,-24,-26,-16,-6,4,14,24,34,44,54,-14,-4,6,16,26,36,37,38,39,40,41,42,43,44,];
							$.each(arr, function(index, value) { 
								$("th:eq(" + (j + value) + ")").css("background","white"); 
							    });
						},430);
					});
				}					
		);	
		//-->
</script>

<%
	int cnt = 0;

%>
<table border="1">
	<%
		for(int i=0; i<10; i++){
			%>
			<tr id="header">
				<%
					for(int j=0; j<10; j++){
						%>
						<th width="20" height="20"><%=++cnt%></th>
						
						<%
					}
				%>	
			</tr>
			<%
		}
	%>
</table>













