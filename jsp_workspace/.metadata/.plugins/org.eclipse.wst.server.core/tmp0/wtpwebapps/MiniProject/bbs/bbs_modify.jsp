<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/custom.css">

        <title>BBS Test</title>

</head>
<body>
 <nav class="navbar navbar-default" id="nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="##">MIN and PARK</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="##" style="margin-right: 10px;">메인</a></li>
                <li><a href="##">게시판</a></li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">회원가입</a></li>
                    </ul>
                </li>
            </ul>
       
        </div>
    </nav>  
    
     <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 col-sm-12 join-form">
                    <h2>게시판 수정<small>(디자인이궁금하세요?)</small></h2>

                    <form action="">
                        <div class="form-group">
                            <label>글번호</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>글쓴이</label>
                            <input type="text" class="form-control" placeholder="자유">
                        </div>
                        <div class="form-group">
                            <label>제목</label>
                            <input type="text" class="form-control" placeholder="자유">
                        </div>
                        <div class="form-group">
                            <label>내용</label>
                            <textarea class="form-control" rows="5"></textarea>
                        </div>

                        <!--구현로직: 버튼은 온클릭을 사용하던 자바스크립트를 이용해야 합니다-->
                        <div class="form-group">
                            <button type="button" class="btn btn-success">목록</button>
                            <button type="button" class="btn btn-info">수정</button>
                            <button type="button" class="btn btn-default">삭제</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>


        </section>
    
        <footer>
        <div class="copyright py-4 text-center text-white">
            <div class="container bounceIn animate">
                <small>Copyright<!-- &copy; --> 2019.<a href=""> Min and Park</a></small>
            </div>
        </div>
        </footer>
    
</body>
</html>