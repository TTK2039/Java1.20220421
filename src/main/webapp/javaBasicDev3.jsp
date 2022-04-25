<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください
request.setCharacterEncoding("UTF-8");
String numone = request.getParameter("num1");
String operator = request.getParameter("operator");
String numtwo = request.getParameter("num2");


    // 入力値取得

    // 表示するメッセージ用の変数

    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
    <%
    if (numone == null){
    	out.println("数値を入力してください。");
    } else if (numone == "" && numtwo == ""){
    	out.println("数値が両方とも未入力です。");
    } else if (numone == "" || numtwo ==""){
    	out.println("数値を入力してください。");
    }
    else if (numone != "" && numtwo != ""){
        int num1 = Integer.parseInt(numone);
        int num2 = Integer.parseInt(numtwo);
        if (operator.equals("add")){
      		out.println((num1) + "+" + (num2) + "=" + (num1 + num2));
        } else if (operator.equals("sub")){
            out.println((num1) + "-" + (num2) + "=" + (num1 - num2));
        } else if (operator.equals("mul")){
            out.println((num1) + "×" + (num2) + "=" + (num1 * num2));
        } else if (operator.equals("div")){
            out.println((num1) + "÷" + (num2) + "=" + (num1 / num2));
        }
        //switch (operator)	{ 	上のif文の処理はswitch文で書いたほうがよかったなあ。
//         	case "add":
//         		our.println("");
//         		break;
//         	case "sub":
//         		our.println("");
//         		break;
//         	case "mul":
//         		our.println("");
//         		break;
//         	case "div":
//         		our.println("");
//         		break;
//         }
    }
	%>
	
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>