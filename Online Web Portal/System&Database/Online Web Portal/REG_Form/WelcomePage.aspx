<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var image1 = new Image()
    image1.src = "Images/ImageSlider/1.jpg";
    var image2 = new Image()
    image2.src = "Images/ImageSlider/2.jpg";
    var image3 = new Image()
    image3.src = "Images/ImageSlider/3.jpg";
    var image4 = new Image()
    image4.src = "Images/ImageSlider/4.jpg";
    var image5 = new Image()
    image5.src = "Images/ImageSlider/5.jpg";
    var image7 = new Image()
    image7.src = "Images/ImageSlider/7.jpg";
    
           
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
<div id="news"><marquee direction="right"><strong>Large collection of used vehicles available...Sell any vehicle from used cars, bikes to bicycles and other vehicles...</strong></marquee></div>
   <div style="float: left; width: 400px; margin-left:250px; height: 350px; background-color:#33CCFF;">
   <img src="Images/ImageSlider/1.jpg" alt="vehicle images" name="slide" width="400" 
           style="height: 350px; margin-top: 0px"/><br />
&nbsp;
<script type="text/javascript">
    var step = 1
    function ImageSlider() {
        document.images.slide.src = eval("image" + step + ".src");
        if (step < 5)
            step++
        else
            step = 1
        setTimeout("ImageSlider()", 2500)
    }
    ImageSlider()
  </script>
   </div> 
   <div id="login" 
        style="margin-left:700px; width: 500px; height: 350px; box-shadow:0 5px 10px #aaa; background-color:#919191">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnMemberLogin" runat="server" Height="233px" 
           ImageUrl="~/Images/Login-icon.png" onclick="ibtnMemberLogin_Click" 
           Width="145px" ToolTip="Click Here for Free Subscriber Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnRegister" runat="server" Height="233px" 
           ImageUrl="~/Images/Login-Registration-icon.png" onclick="ibtnRegister_Click" 
           style="margin-top: 0px" Width="145px" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <marquee direction="right" style="width: 318px; height: 31px; font-size: medium;">   <asp:LinkButton ID="lbtnGiveFeedback" runat="server" 
           onclick="lbtnGiveFeedback_Click">Give Feedback</asp:LinkButton></marquee>&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnFeedback" runat="server" Height="84px" 
           ImageUrl="~/Images/feedback-icon.png" onclick="ibtnFeedback_Click" 
           Width="101px" style="margin-left: 0px; margin-top: 0px" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br />
       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;
       </div>
</asp:Content>

