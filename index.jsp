<%@include file="header.jsp" %>
<!-- Start WOWSlider.com BODY section -->

<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><a href="www.google.com"><img src="data1/images/1.jpg" alt="Flower" title="Flower" id="wows1_0"/></a>this flower is beautiful</li>
		<li><img src="data1/images/2.jpg" alt="" title="" id="wows1_1"/></li>
		<li><img src="data1/images/3.jpg" alt="" title="" id="wows1_2"/></li>
		<li><img src="data1/images/4.jpg" alt="" title="" id="wows1_3"/></li>
		<li><img src="data1/images/5.jpg" alt="" title="" id="wows1_4"/></li>
		<li><img src="data1/images/111.jpg" alt="" title="" id="wows1_5"/></li>
		
	</ul></div>
	<div class="ws_thumbs">
<div>
		<a href="#" title=""><img src="data1/tooltips/1.jpg" alt="" /></a>
		<a href="#" title=""><img src="data1/tooltips/2.jpg" alt="" /></a>
		<a href="#" title=""><img src="data1/tooltips/3.jpg" alt="" /></a>
		<a href="#" title=""><img src="data1/tooltips/4.jpg" alt="" /></a>
		<a href="#" title=""><img src="data1/tooltips/5.jpg" alt="" /></a>
		<a href="#" title=""><img src="data1/tooltips/111.jpg" alt="" /></a>
		
	</div>
</div>

<audio src="engine1/ek_hazaaron_mein_meri_behna_hai_title_songmymp3singer.net.mp3"></audio>
<script type="text/javascript" src="engine1/swfobject.js"></script><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">wowslider.com</a> by WOWSlider.com v8.7</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->


<script>
<%
  try{
	String msg=request.getParameter("msg");  
	 if(msg.equals("loscs")){ 
		 %>
		 
		 //out.println("alert(\"You have logged out from your account successfully!\")");
		  alert("You have logged out Successfully!");
		<%
	 }
  }catch(Exception e){}
%>
</script>
<%@include file="footer.jsp" %>
