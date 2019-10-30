<%-- 
    Document   : index
    Created on : Mar 23, 2019, 2:48:18 PM
    Author     : Hoàng Kim Tới
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>        
        <title>Quản trị</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />       
        <link rel="icon" href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico" type="image/x-icon" />      
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>    
    </head>
    <body>
        <div class="page-container">
            <%@include file="content.jsp" %>
            <div class="page-content">
                <%@include file="header.jsp" %>
                <%
                    String module = request.getParameter("module");
                    if (module == null || module.equals("")) {
                %>
                <%@include file="noidung.jsp" %>
                <%
                    }else if (module.equals("sanpham")) {
                %>
                <%@include file="BangSP.jsp" %>
                <%
                    }else if (module.equals("danhmuc")) {
                %>
                <%@include file="BangDM.jsp" %>
                <%
                    }else if (module.equals("Themdanhmuc")) {
                %>
                <%@include file="chucnang/ThemDM.jsp" %>
                <%
                    }else if (module.equals("updateDM")) {
                %>
                <%@include file="chucnang/SuaDM.jsp" %>
                <%
                    }else if (module.equals("hoadon")) {
                %>
                <%@include file="BangHD.jsp" %>
                <%
                    }else if (module.equals("Themsanpham")) {
                %>
                <%@include file="chucnang/ThemSP.jsp" %>
                <%
                    }else if (module.equals("updateSP")) {
                %>
                 <%@include file="chucnang/SuaSP.jsp" %>
                <%
                    }
                %>
            </div>               
        </div>
        <!-- MESSAGE BOX-->
        <%@include file="message_box.jsp" %>    
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                  
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>        
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        <script type="text/javascript" src="js/plugins/scrolltotop/scrolltopcontrol.js"></script>
        
        <script type="text/javascript" src="js/plugins/morris/raphael-min.js"></script>
        <script type="text/javascript" src="js/plugins/morris/morris.min.js"></script>       
        <script type="text/javascript" src="js/plugins/rickshaw/d3.v3.js"></script>
        <script type="text/javascript" src="js/plugins/rickshaw/rickshaw.min.js"></script>
        <script type='text/javascript' src='js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'></script>
        <script type='text/javascript' src='js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'></script>                
        <script type='text/javascript' src='js/plugins/bootstrap/bootstrap-datepicker.js'></script>                
        <script type="text/javascript" src="js/plugins/owl/owl.carousel.min.js"></script>                 
        
        <script type="text/javascript" src="js/plugins/moment.min.js"></script>
        <script type="text/javascript" src="js/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/settings.js"></script>
        
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>
        
        <script type="text/javascript" src="js/demo_dashboard.js"></script>
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->     
    
    <!-- COUNTERS // NOT INCLUDED IN TEMPLATE -->
        <!-- GOOGLE -->
        <script type="text/javascript">
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-36783416-1', 'aqvatarius.com');
          ga('send', 'pageview');
        </script>        
        <!-- END GOOGLE -->
        
        <!-- YANDEX -->
        <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter25836617 = new Ya.Metrika({id:25836617,
                            webvisor:true,
                            accurateTrackBounce:true});
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
        </script>
        <noscript><div><img src="http://mc.yandex.ru/watch/25836617" style="position:absolute; left:-9999px;" alt="" /></div></noscript>     
        <!-- END YANDEX -->
    <!-- END COUNTERS // NOT INCLUDED IN TEMPLATE -->
    
    </body>
</html>







