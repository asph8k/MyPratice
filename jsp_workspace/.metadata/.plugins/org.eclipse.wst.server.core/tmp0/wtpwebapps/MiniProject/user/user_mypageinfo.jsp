<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    
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
            <div class="row join-wrap">
                <!--join-form을 적용한다 float해제 margin:0 auto-->
                <div class="col-xs-12 col-md-9 join-form">
                    
                    <div class="titlebox">
                        MEMBER INFO                    
                    </div>
                    
                    <p>*표시는 필수 입력 표시입니다</p>
                    <table class="table">
                        <tbody class="m-control">
                            <tr>
                                <td class="m-title">*ID</td>
                                <td><input class="form-control input-sm"></td>
                            </tr>
                            <tr>
                                <td class="m-title">*이름</td>
                                <td><input class="form-control input-sm"></td>
                            </tr>
                            <tr>
                                <td class="m-title">*비밀번호</td>
                                <td><input class="form-control input-sm"></td>
                            </tr>
                            <tr>
                                <td class="m-title">*비밀번호확인</td>
                                <td><input class="form-control input-sm"></td>
                            </tr>
                            <tr>
                                <td class="m-title">*E-mail</td>
                                <td>
                                    <input class="form-control input-sm">@
                                    <select class="form-control input-sm sel">
                                        <option>naver.com</option>
                                        <option>gmail.com</option>
                                        <option>daum.net</option>
                                    </select>
                                    <button class="btn btn-info">중복확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="m-title">*휴대폰</td>
                                <td>
                                    <input class="form-control input-sm sel"> -
                                    <input class="form-control input-sm sel"> -
                                    <input class="form-control input-sm sel">
                                </td>
                            </tr>
                            <tr>
                                <td class="m-title">*주소</td>
                                <td><input class="form-control input-sm add"></td>
                            </tr>
                            <tr>
                                <td class="m-title">*상세주소</td>
                                <td><input class="form-control input-sm add"></td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <div class="titlefoot">
                        <button class="btn">수정</button>
                        <button class="btn">목록</button>
                    </div>
                    
                </div>


            </div>

        </div>

    </section>
    
    
    <footer>
        <div class="copyright py-4 text-center text-white">
            <div class="container bounceIn animate">
                <small>Copyright
                    <!-- &copy; --> 2019.<a href=""> Min and Park</a></small>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>