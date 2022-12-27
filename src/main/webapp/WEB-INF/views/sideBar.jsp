<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script src="/js/jquery-1.11.0.min.js"></script>
<script>

	$(function(){
		
		if( ${requestScope.currentPage6 == 1 } || ${requestScope.currentPage7 == 1 } || ${requestScope.currentPage8 == 1 } ){
			$(".opener").click();
		}
		
	})


</script>

 <!-- Menu       color: #f56a6a; -->
 <nav id="menu">
    <header class="major">
        <h2><span style="font-size:3em;">Menu</span></h2>
    </header>
    <ul>
        <li><a href="/main.do">
        	
        	<c:if test="${requestScope.currentPage != 1}"> 
        	
        		<span style="font-size:1.5em; ">Homepage</span> 
        		
        	</c:if>
        	
            <c:if test="${requestScope.currentPage == 1}">
            
        		<span style="font-size:1.5em; color: #f56a6a; ">Homepage</span>
        		
        	</c:if>  		
        
        </a></li>
        
        <li>
        
        	<c:if test="${requestScope.currentPage6 != 1 }"> 
        	
        		
	        	<c:if test="${requestScope.currentPage7 != 1 }"> 
	        	
	        		
		        	<c:if test="${requestScope.currentPage8 != 1 }"> 
		        	
		        		<span class="opener" style="font-size:1.5em;" >전자결재</span>
		        		
		        	</c:if>
	        		
	        	</c:if>
        		
        	</c:if>
        	
        	<c:if test="${requestScope.currentPage6 == 1 }"> 
		        	
		        <span class="opener" style="font-size:1.5em; color: #f56a6a;" >전자결재</span>
		        
        	</c:if>	
        	
	        <c:if test="${requestScope.currentPage7 == 1 }"> 
		        	
		        <span class="opener" style="font-size:1.5em; color: #f56a6a;" >전자결재</span>
		        
	        </c:if>	
	        
		    <c:if test="${requestScope.currentPage8 == 1 }"> 
		        	
		        <span class="opener" style="font-size:1.5em; color: #f56a6a;" >전자결재</span>
		        		
		    </c:if>
	        		
	        
            
            
            <ul>
                <li><a href="/dailyListForm.do" >
                
                    <c:if test="${requestScope.currentPage6 != 1 }">
                		<span style="font-size:1.2em;">일일 업무보고서 결재</span>
                    </c:if>
                 	
                    <c:if test="${requestScope.currentPage6 == 1 }">
                		<span style="font-size:1.2em;color: #f56a6a;">일일 업무보고서 결재</span>
                 	</c:if>
                </a></li>
                
                
                <li><a href="/salesListForm.do">
                
                    <c:if test="${requestScope.currentPage8 != 1 }">
                		<span style="font-size:1.2em;">영업 업무보고서 결재</span>
                	</c:if>
                 	
                    <c:if test="${requestScope.currentPage8 == 1 }">
                		<span style="font-size:1.2em;color: #f56a6a;">영업 업무보고서 결재</span>
                 	</c:if>
                </a></li>
                
                
                <li><a href="/expenseListForm.do">
                
                    <c:if test="${requestScope.currentPage7 != 1 }">
                		<span style="font-size:1.2em;">지출 업무보고서 결재</span>
                 	</c:if>
                 	
                    <c:if test="${requestScope.currentPage7 == 1 }">
                		<span style="font-size:1.2em;color: #f56a6a;">지출 업무보고서 결재</span>
                 	</c:if>
                 	
                </a></li>
                
            </ul>
        </li>
        
        <li><a href="/planList.do">
        
        	<c:if test="${requestScope.currentPage5 != 1}"> 
        	
        		<span style="font-size:1.5em;">일정관리</span> 
        		
        	</c:if>
        	
            <c:if test="${requestScope.currentPage5 == 1}">
            
        		<span style="font-size:1.5em; color: #f56a6a; ">일정관리</span>
        		
        	</c:if>
        
        
        </a></li>
        
        
        
        <li><a href="/meetingBoardList.do">
        
        	<c:if test="${requestScope.currentPage3 != 1}"> 
        	
        		<span style="font-size:1.5em;">회의실 예약</span>
        		
        	</c:if>
        	
            <c:if test="${requestScope.currentPage3 == 1}">
            
        		<span style="font-size:1.5em; color: #f56a6a; ">회의실 예약</span>
        		
        	</c:if>
        
        
        
        </a></li>
        
        
        <li><a href="/boardList.do">
        
        	<c:if test="${requestScope.currentPage2 != 1}"> 
        	
        		 <span style="font-size:1.5em;">공지사항</span>
        		
        	</c:if>
        	
            <c:if test="${requestScope.currentPage2 == 1}">
            
        		 <span style="font-size:1.5em; color: #f56a6a;">공지사항</span>
        		
        	</c:if>
        
       
        
        </a></li>
        
        
        
        
        <%		
            String emp_role10 = (String)session.getAttribute("emp_role");
               if(emp_role10 != null ){
                   if(emp_role10.equals("user")){%>
        
        <li><a href="/mypageMain.do">
        
	        	<c:if test="${requestScope.currentPage4 != 1 }"> 
	        	
	        		<span style="font-size:1.5em;">마이페이지</span> 
	        		
	        	</c:if>
	        	
	            <c:if test="${requestScope.currentPage4 == 1 }">
	            
	        		<span style="font-size:1.5em; color: #f56a6a;">마이페이지</span>
	        		
	        	</c:if>
        
        
        
        </a></li><%}}
        %>		
        
        
        
        
        <%		
            String emp_role = (String)session.getAttribute("emp_role");
               if(emp_role != null ){
                   if(emp_role.equals("admin")){%>
                  <li><a href="/empList.do">
        
			        	<c:if test="${requestScope.currentPage1 != 1}"> 
			        	
			        		<span style="font-size:1.5em;">관리자페이지</span>
			        		
			        	</c:if>
			        	
			            <c:if test="${requestScope.currentPage1 == 1}">
			            
			        		<span style="font-size:1.5em; color: #f56a6a;">관리자페이지</span>
			        		
			        	</c:if>
                  
                  
                  
                  </a></li><%}}
        %>			
        
    </ul>
    <br>
                                        
		<input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그아웃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" class="logoutBtn">
</nav>