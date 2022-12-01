 ***
 <h2>DB 테이블 구성</h2>

<b><h3>GoodsInfo_table: 상품 정보 테이블<b></h3>
<table border="1">
	<th>바코드 분류번호</th>
	<th>상품이름</th>
	<th>좌표번호</th>
	<th>상품 개수</th>
	<th>상품 가격</th>
	<tr><!-- 첫번째 줄 시작 -->
	    <td>barcodeID</td>
	    <td>goodsName</td>
	    <td>section</td>
	    <td>stock</td>
	    <td>price</td>
	</tr><!-- 첫번째 줄 끝 -->
	<tr><!-- 두번째 줄 시작 -->
	    <td>Int, primary, auto</td>
	    <td>Varchar</td>
	    <td>Int</td>
	    <td>Int</td>
	    <td>Int</td>
	</tr><!-- 두번째 줄 끝 -->
</table>
	
 ***
