<%@ page contentType="text/html; charset=UTF-8" %>


<div id="main">
    <div class="ttext">
        <h1 id="h11">착한아이 홈페이지에<br> 오신 것을 환영합니다</h1>
        <h5 id="h51"> 오늘 변화를 만들어보세요</h5>
    </div>

    <div class="row col-12">
        <div class="banner" style="width: 900px;">
            <ul style="width: 500px">
                <li><img src="https://drive.google.com/uc?export=view&id=1s9ucxHDCmHCscnaspxUhpKuYNJX0j8Ub" width="100%"
                         height="auto"></li>
                <li><img src="https://drive.google.com/uc?export=view&id=1OVyd8NyOZdxK0w9_MM3-4MBMeEkErBmp" width="100%"
                         height="auto"></li>
                <li><img src="https://drive.google.com/uc?export=view&id=1sfD09zQUtYtFq4JxGjkL5kUuaZO15dHb" width="100%"
                         height="auto"></li>
                <li><img src="https://drive.google.com/uc?export=view&id=19MBgICx2bN73scdMGn_v6812q24yJVEB" width="100%"
                         height="auto"></li>
                <li><img src="https://drive.google.com/uc?export=view&id=1lLWyEwFYUhBDIuD-GY5kLlv_F9ylSRF9" width="100%"
                         height="auto"></li>
            </ul>
        </div>
    </div>


    <div class="ttext">
        <h1 class="h12">분양게시판</h1>
        <h5 class="h52">함께 세상을 바꿔요.</h5>

        <div>
            <input type="text" name="searchbox" id="searchbox" placeholder=" 검색하실 품종/이름을 입력해주세요">
            <span class="btn" name="searchbox" id="searchbtn"><a href="procNaver.jsp"> 검색 </a></span>
        </div>

    </div>

    <div class="row">
        <div class="prclist" id="prclist">
            <div class="prclstti"><p>동물 보호소</p></div>
            <div class="prclstctn"><img
                    src="https://drive.google.com/uc?export=view&id=1MhV4gaqIq1jRoERTqEDF9sgJ0aniwoiJ" width="290"
                    height="290"></div>
        </div>
        &nbsp; &nbsp;
        <div class="prclist">
            <div class="prclstti">동물 구조 및 관리</div>
            <div class="prclstctn"><img
                    src="https://drive.google.com/uc?export=view&id=1WWpAL6QuTpxN57c1zjB_EP44QGw2453w" width="290"
                    height="290"></div>
        </div>
        &nbsp; &nbsp;
        <div class="prclist">
            <div class="prclstti">수의학 서비스</div>
            <div class="prclstctn"><img
                    src="https://drive.google.com/uc?export=view&id=1EWpSJlaj6JtbmzxHVXCm0mkhLGESqWZs" width="290"
                    height="290"></div>
        </div>
    </div>

    <div class="img">
        <div class="content">
            "선한 일을 하다가 낙심하지 말라" <br><br>마틴 루터
        </div>
        <div class="img-cover"></div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <h1 class="qstn">문의</h1>
            <p>서울특별시 종로구 삼일대로 17길 51<br><br>
                micres89@gmail.com<br><br>
                02-0000-0000
            </p>
        </div>
    </div>
    <form class="row">
        <div class="col-sm-9"></div>
        <div class="col-sm-3" style="position: fixed; bottom: 20px; right: -90px; z-index: 999">
            <div class="form-group" style=" text-align: left; ">
                    <span style="width:150px; margin: 0 0 10px -10px; padding: 4px; background-color: #ffea00; border-radius: 3px; font-size: 11pt">
                    무엇이든 물어보세요
                    </span>
            </div>
            <div class="form-group" style="">
                    <span id="client"
                          style="width:150px; margin: 0 10px 0 0; padding: 4px; background-color: #f7ffff; border-radius: 3px; font-size: 11pt">
                        클라이언트 내용입니다.
                    </span>
            </div>
            <div class="form-group" style=" text-align: left; ">
                    <span id="server"
                          style="width:150px; margin: 0 0 10px -10px; padding: 4px; background-color: #ffea00; border-radius: 3px; font-size: 11pt">
                    무엇이든 물어보세요
                    </span>
            </div>
            <div class="row  form-group" style="">
                    <textarea placeholder="  메세지를 입력하세요" cols="30" rows="2" id="msg"
                              style="width: 200px; height:80px; margin-bottom: 10px; border: 1px solid #bbbbbb; margin-right: 10px"></textarea>
                <span class="btn" id="submsbtn"><a href="#">보내기</a></span>
            </div>
        </div>
    </form>
    <%-- 채팅창 --%>

</div>
