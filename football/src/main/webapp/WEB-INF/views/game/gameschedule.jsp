<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Calendar cal = Calendar.getInstance();
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");

	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	if (strYear != null) {
		year = Integer.parseInt(strYear);
		month = Integer.parseInt(strMonth);
	} else {
	}
	cal.set(year, month, 1);
	int startDay = cal.getMinimum(java.util.Calendar.DATE);
	int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
	int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
	int newLine = 0;

	//오늘 날짜 저장.
	Calendar todayCal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
	int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));
%>

<html lang="ko">

<HEAD>
<link rel="stylesheet" type="text/css"
	href="/resources/css/gameschedule.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
</HEAD>

<BODY>
	<div class="container_body">
		<!-- <form name="calendarFrm" id="calendarFrm" action="" method="get"> -->
		<DIV id="content" style="width: 712px;">
			<table width="100%" border="0" cellspacing="1" cellpadding="1">
				<tr>
					<td align="right"><input type="button"
						onclick="javascript:location.href='<c:url value='/gameschedule' />'"
						value="오늘" /></td>
				</tr>
			</table>
			<!--날짜 네비게이션  -->
			<table width="100%" border="0" cellspacing="1" cellpadding="1"
				id="KOO" bgcolor="#F3F9D7" style="border: 1px solid #CED99C">
				<tr>
					<td height="60">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td align="center"><a
									href="<c:url value='/gameschedule' />?year=<%=year - 1%>&amp;month=<%=month%>"
									target="_self"> <b>&lt;&lt;</b> <!-- 이전해 -->
								</a> <%
 	if (month > 0) {
 %> <a
									href="<c:url value='/gameschedule' />?year=<%=year%>&amp;month=<%=month - 1%>"
									target="_self"> <b>&lt;</b> <!-- 이전달 -->
								</a> <%
 	} else {
 %> <b>&lt;</b> <%
 	}
 %> &nbsp;&nbsp; <%=year%>년 <%=month + 1%>월 &nbsp;&nbsp; <%
 	if (month < 11) {
 %> <a
									href="<c:url value='/gameschedule' />?year=<%=year%>&amp;month=<%=month + 1%>"
									target="_self"> <!-- 다음달 --> <b>&gt;</b>
								</a> <%
 	} else {
 %> <b>&gt;</b> <%
 	}
 %> <a
									href="<c:url value='/gameschedule' />?year=<%=year + 1%>&amp;month=<%=month%>"
									target="_self"> <!-- 다음해 --> <b>&gt;&gt;</b>
								</a></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF"
				id="calendar-body">
				<THEAD>
					<TR bgcolor="#CECECE">
						<TD width='100px'>
							<DIV align="center">
								<font color="red">일</font>
							</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">월</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">화</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">수</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">목</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">금</DIV>
						</TD>
						<TD width='100px'>
							<DIV align="center">
								<font color="#529dbc">토</font>
							</DIV>
						</TD>
					</TR>
				</THEAD>
				<TBODY>
					<TR>
						<%
							//처음 빈공란 표시
							for (int index = 1; index < start; index++) {
								out.println("<TD >&nbsp;</TD>");
								newLine++;
							}
							for (int index = 1; index <= endDay; index++) {
								String color = "";
								if (newLine == 0) {
									color = "RED";
								} else if (newLine == 6) {
									color = "#529dbc";
								} else {
									color = "BLACK";
								}
								String sUseDate = Integer.toString(year);
								sUseDate += Integer.toString(month + 1).length() == 1
										? "0" + Integer.toString(month + 1)
										: Integer.toString(month + 1);
								sUseDate += Integer.toString(index).length() == 1
										? "0" + Integer.toString(index)
										: Integer.toString(index);
								int iUseDate = Integer.parseInt(sUseDate);
								String backColor = "#EFEFEF";
								if (iUseDate == intToday) {
									backColor = "#c9c9c9";
								}
								out.println("<TD valign='top' align='left' height='92px' bgcolor='" + backColor + "' nowrap>");
						%>
						<font color='<%=color%>'> <%=index%><br />
							<button class="btn-day">${gameInfoByMonth.gameCount }</button>
						</font>
						<%
							out.println("<BR>");
								out.println("<BR>");
								out.println("</TD>");
								newLine++;
								if (newLine == 7) {
									out.println("</TR>");
									if (index <= endDay) {
										out.println("<TR>");
									}
									newLine = 0;
								}
							}
							while (newLine > 0 && newLine < 7) {
								out.println("<TD>&nbsp;</TD>");
								newLine++;
							}
						%>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
		<!-- </form> -->

		<div id="myModal" class="modal" style="position: absolute;">
			<!-- Modal content -->
			<div class="modal-content">
				<span class="close">&times;</span>
				<h3>
					<a href="">${gameInfoByMonth.gameInfo }</a>
				</h3>
			</div>
		</div>
	</div>
</BODY>
<script src="/resources/js/Templating.js"></script>
<script type="text/javaScript" language="javascript"> 
      
       var modal = document.getElementById("myModal");
       var span = document.getElementsByClassName("close")[0];
       
       document.querySelector("#calendar-body>tbody").addEventListener("click",(e)=>{
          if(e.target.className="btn-day"){
               modal.style.display = "block";
          }
      });
       
       span.onclick = function() {
          modal.style.display = "none";
       };
       
       window.onclick = function(event) {
          if (event.target == modal) {
             modal.style.display = "none";
          }
       };
       
   	window.onload = function() {
		initPage();
	};
</script>
</HTML>
