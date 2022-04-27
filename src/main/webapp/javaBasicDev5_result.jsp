<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String product1Str = request.getParameter("product1");
    String product2Str = request.getParameter("product2");
    String amount1Str = request.getParameter("amount1");
    String amount2Str = request.getParameter("amount2");
    String rankStr = request.getParameter("rank");
    
    
    // 数値に変換
    int amount1;
    int amount2;
    if (!(ParamUtil.isNullOrEmpty(amount1Str))){
	amount1 = Integer.parseInt(amount1Str);
   	amount2 = Integer.parseInt(amount2Str);
    } else {
    	amount1 = 0;
    	amount2 = 0;
    }
    // ポイントを定義
	int point1 = 0;
    int point2 = 0;
    
    //メソッドを呼んでポイントを取得
    int rank;
	if (!(rankStr.equals(""))) {
		rank = Integer.parseInt(rankStr);
		point1 = ParamUtil.getPoint(amount1, rank);
		point2 = ParamUtil.getPoint(amount2, rank);
	} else {
		rank = 0;
		point1 = ParamUtil.getPoint(amount1);
		point2 = ParamUtil.getPoint(amount2);
	}
    
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= product1Str %></td>
      <td class="right"><%= amount1 %></td>
      <td class="right"><%= point1 %></td>
    </tr>
    <tr>
      <td><%= product2Str %></td>
      <td class="right"><%= amount2 %></td>
      <td class="right"><%= point2 %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>