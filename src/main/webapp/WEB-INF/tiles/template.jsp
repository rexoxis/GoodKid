<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {width: 100% ;margin: 0 auto; text-align: center;}
        h3 {color: #85144b; font-size: 14pt; margin:10px auto; padding: 10px;}

        .menubar { margin:0 auto; width: 100%;}
        .menubar ul{ list-style: none; }
        .menubar ul li { font-size: 15px; float: left; text-align: left; margin-right: 85px; text-decoration: none; }
        .menubar li ul { background-color: rgba( 150, 150, 150, 0.5 ); display:none;
            height:auto; position:absolute; width:220px; z-index:200;
            list-style: none;}
        .menubar li:hover ul { display:block; }
        .menubar a:link {color: #000000}
        .menubar a:visited {color: #000000}

        .ttext {text-align: center; margin-left: 40px}
        .ttext #h11 {font-weight: bold; font-size: 70px; line-height: 95px; margin: 50px 0 20px}
        .ttext #h51 {font-weight: bold; margin-bottom: 20px}

        .ttext .h12 {font-weight: bold; font-size: 40px; line-height: 95px; margin: 50px 0 10px}
        .ttext .h52 {font-weight: bold; margin-bottom: 20px}

        .ttext #searchbox {width: 850px; height: 50px; margin-bottom: 20px; border: 3px solid #000033;}

        #searchbtn {width: 80px; height: 50px; font-weight: bold; color: #ffffff; border: 1px solid #000000 ;
            border-radius: 10px; background-color: #000000; margin-right: 30px; padding: 12px 23px}
        #searchbtn > a {color: #ffffff}
        #searchbtn > a :link {color: #ffffff}

        #submsbtn {width: 60px; height: 25px; color: #ffffff; font-size: 10pt;
            border-radius: 5px; background-color: #f0dc00; margin-right: 13px; padding : 0}
        #submsbtn > a {color: #ffffff}
        #submsbtn > a :link {color: #ffffff}

        #intr1 {width: 400px; height: 400px; background-color: #d3d3d3; position: relative; top: 50px; left:150px ; z-index: 2; }
        #intr1 h3 {font-weight: bold;font-size: 45px; padding: 20px;text-align: left;color: #000000;}
        #intr1 p {font-size: 17px;padding: 20px}
        #intrimg {width: 500px; height: 500px; border: 1px solid #000000; position: relative; top: 0; left: 65px}

        .prclist {float: left;}
        #prclist {margin-left: 123px;}
        .prclstti {width: 290px; height: 100px; background-color: #d3d3d3; font-size: 23px; font-weight: bold; padding-top: 30px;}
        .prclstctn {width: 290px; height: 290px; border: 1px solid #000000;}

        .banner {position: relative; left: 120px;  width: 900px; height: 450px; border: solid 0.1mm #ededed ;  padding:0; overflow: hidden;}
        .banner ul {position: absolute; margin: 0; padding:0; list-style: none; }
        .banner ul li {float: left; width: 900px; height: 450px; margin:0; padding:0;}

        .img{position: relative; background-image: url("https://drive.google.com/uc?export=view&id=1Gmm6_D7xp1ktNUlVOEKSz-BAfeU7OVdS"); height: 450px; background-size: cover;
            margin: 50px 0; }
        .img-cover{ position: absolute; height: 450px; width: 100%; background-color: rgba(0, 0, 0, 0.7); z-index:1; }
        .img .content{ position: absolute; top:50%; left:50%; transform: translate(-50%, -50%); font-size:1.5rem; color: white; z-index: 2; text-align: center; font-weight: bold; }

        .qstn {font-weight: bold; margin-bottom: 40px}

        #msg {}
    </style>
    <title>착한아이</title>

</head>
<body>

<div class="container">

    <tiles:insertAttribute name="header" />

    <tiles:insertAttribute name="body" />

    <tiles:insertAttribute name="footer" />

</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/ttproMVC/js/button.js"></script>

<tiles:insertAttribute name="scripts" />

<script>
    // 상단 로그인 버튼
    $(function () {
        $('#mloginbtn').on('click', function (e) {
            location.href = 'login/login.jsp';
        });
    });
    // 회원가입 버튼
    $(function () {
        $('#joinbtn').on('click', function (e) {
            location.href = 'signup/joinAgree.jsp';
        });
    });

    var con = document.getElementById("b");

    function a() {
        if (con.style.display == 'none') {
            con.style.display = 'block';
        } else if (con.style.display == 'block') {
            con.style.display = 'none';
        }
    }
</script>


</body>
</html>