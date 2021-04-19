<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">

    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/normalize.css">

    <script src="js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.8.3.min.js"><\/script>')</script>
    <script src="js/html5.js"></script>
    <script src="js/main.js"></script>
    <script src="js/radio.js"></script>
    <script src="js/checkbox.js"></script>
    <script src="js/selectBox.js"></script>
    <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>
    <script src="js/jquery.jqzoom-core.js"></script>
    <script src="js/jquery.transit.js"></script>
    <script src="js/jquery.easing.1.2.js"></script>
    <script src="js/jquery.anythingslider.js"></script>
    <script src="js/jquery.anythingslider.fx.js"></script>
    <script type="text/javascript"
  src="https://api.map.baidu.com/api?type=webgl&v=1.0&ak=B1f82jlfVMT9uUr31SCAX48fs96lmx1n"></script>
</head>
<body>
    <footer>
		 <div id='allmap' style="height:400px;width:100%"></div>
		 
        <div class="footer_info">
            <div class="container_12">
                <div class="grid_6">
                    <p class="copyright"><a href="<%=path %>/admin/login.jsp" style="text-decoration: none;" target="_blank" title="在线花店">在线花店后台管理</a> </p>
                </div><!-- .grid_6 -->

                <div class="grid_6">
                    <div class="soc">
                        <a class="google" href="#"></a>
                        <a class="twitter" href="#"></a>
                        <a class="facebook" href="#"></a>
                    </div><!-- .soc -->
                </div><!-- .grid_6 -->

                <div class="clear"></div>
            </div><!-- .container_12 -->
        </div><!-- .footer_info -->
    </footer>
      <script>
        // 百度地图API功能
       var map = new BMapGL.Map('allmap');
map.centerAndZoom(new BMapGL.Point(116.394834,40.091646), 15);
map.enableScrollWheelZoom(true);
// 创建点标记
var marker1 = new BMapGL.Marker(new BMapGL.Point(116.394834,40.091646));
 
// 在地图上添加点标记
map.addOverlay(marker1);
 
        </script>
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
