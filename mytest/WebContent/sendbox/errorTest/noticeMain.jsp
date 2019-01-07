<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.divNotice{
		width:310px;
		}
	.more{
		margin:0 0 0 160px;
		}
	.divNotice div:eq(1) img{
		width:300px;
		}
	#lineImgP{
	 	width : 300px;x`
	 	}
</style>

<div class="divNotice">
	<div>
		<img src="<%=request.getContextPath() %>/images/notice2.jsp"
			alt="공지사항 이미지">
		<span class= "more">
			<a href="">
				<img src="<%=request.getContextPath() %>/images/more.jsp"
					 alt = "more이미지">
			</a>
		</span>
	</div>
	<div class="divLine">
		<img src="<%=request.getContextPath() %>/images/Line.jsp" id="lingImg"
				alt="line이미지 이미지">
	
	</div>
	<div>
	
	</div>
</div>