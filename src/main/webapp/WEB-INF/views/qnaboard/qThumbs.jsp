
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="qnaf" class="dao.QnaBoardDAO" />
<jsp:useBean id="qb" class="vo.QnaBoard"/>

<%
    int bdno = Integer.parseInt(request.getParameter("bdno"));
    int like = qnaf.LikeCnt(bdno);

    if (like >= 1){
        response.sendRedirect("qnaView.jsp?bdno="+bdno);
    }else {
        out.print("<script> history.go(-1); </script>");
    }

%>