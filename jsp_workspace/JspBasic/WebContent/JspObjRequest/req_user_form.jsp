<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>ȸ�� ���� ���</h1>
	<hr>
	
	<%--
		* ������� �Է°��� ������ �����ϴ� ���.
		1. ������� �Է� �����͸� ������ �����Ϸ��� HTNL�� form�±׸� ����մϴ�.
		2. form�±��� action �Ӽ��� �����͸� ���޹��� �������� URL �ּҸ� �ۼ��մϴ�.
		3. input �±��� name �Ӽ����� ��û �Ķ������ �̸��� ������ �� �ֽ��ϴ�.
		�̸��� ������ ���� �Է°��� �����ִ� �̸����� ������ �ִ� ���� �����ϴ�.
	 --%>

	<form action="req_user_info.jsp">
        ���̵�: <input type="text" name="id" value="�޷ո޷�"> <br>
        ��й�ȣ: <input type="password" name="pw" required> <br>

        # ���� <br>
        <input type="radio" name="gender" value="male"> ��
        <input type="radio" name="gender" value="female"> �� <br>

        # ��� <br>
        <input type="checkbox" name="hobby" value="read"> ����
        <input type="checkbox" name="hobby" value="sleep"> ����
        <input type="checkbox" name="hobby" value="soccer"> �౸
        <input type="checkbox" name="hobby" value="game"> ���� <br>
        
        # ���� : <br>
        <select name="region">
        	<option value="seoul">����</option>
        	<option>����</option>
        	<option>�뱸</option>
        	<option>�λ�</option>
        </select>

        # �ڱ�Ұ� <br>
        <textarea name="introduce" cols="30" rows="10"></textarea> <br>

        <input type="email" name="mail" placeholder="�̸����� �Է��ϼ���."> <br>
        
        <input type= "submit" value="ȸ������">
    </form>

</body>
</html>