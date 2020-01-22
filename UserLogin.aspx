<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UserLogin.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    
<link rel="shortcut icon" type="image/icon" href="css/logo.png"/>


  <link rel="stylesheet" href="css/shads.css" type="text/css" media="screen" />
     
         
       <style  type ="text/css" >
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #FD7E00;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding:5px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
    <style type="text/css" >
    
.btn:hover
{
	
    text-align: center;
    background-color:#FD7E00 !important;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
 
   


}
    
    
    .selectbox
{
    width: 98%;
    height: 27px;
    background-color: #FFF;
    font: 400 12px/18px 'Open Sans' , sans-serif;
    color: #624462;
    font-weight: normal;
    border: 1px solid #ccc;
    margin: 5px 0 0 0;
    padding: 5px;
}

       .textboxroundcmtbx
        {
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            border-bottom-left-radius: 8px;
            border-bottom-right-radius: 8px;
        } 


      .textbox20
        {
        	  border-top-left-radius: 6px;
            border-top-right-radius: 6px;
            border-bottom-left-radius: 6px;
            border-bottom-right-radius: 6px;
             -webkit-box-shadow: 0 1px 6px -2px black;
	        -moz-box-shadow: 0 1px 6px -2px black;
	        box-shadow: 0 1px 6px -2px black;
        }

    </style>
    
    
        <style type="text/css">
.footer {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    background-color: #FFFFFF;
    color: white;
    text-align: left;
}

.one-edge-shadow-thin4anaaylitics {
	-webkit-box-shadow: 0 5px 5px -5px black;
	   -moz-box-shadow: 0 5px 5px -5px black;
	        box-shadow: 0 5px 5px -5px black;

 
}

.navbar {
    overflow: hidden;
    background-color: #333;
    position: fixed; /* Set the navbar to fixed position */
    top: 0; /* Position the navbar at the top of the page */
    width: 100%; /* Full width */
}

/* Links inside the navbar */
.navbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change background on mouse-over */
.navbar a:hover {
    background: #ddd;
    color: black;
}

/* Main content */
.main {
    margin-top: 30px; /* Add a top margin to avoid content overlay */
}


</style>
     
 
</head>
<body style="background-color: #DDDDDD">
    <form id="form1" runat="server">
         <div class="footer one-edge-shadow-thin4anaaylitics" style="/*height: 45px;*/ padding-top: 5px; padding-left: 10px; vertical-align: middle;padding-bottom: 5px;">
    <table style="margin-left: 100px">
      <tr align ="left" valign="top">
        <td style="width: 300px">
     
            
         <asp:Image ID="Image1" runat="server" ImageUrl="http://app.titleleader.com/Content/images/logo.png" Height="60" />
        </td>
        </tr>
    </table>
    </div>

    <center>
        <br />
<br />
<br />
<br />
<br />
<br />
<div style="width: 470px; height: 470px; background-color: #FFFFFF" class ="textbox20">
<table>
<tr>
<td style="font-family: Candara; font-size: xx-large; font-weight: bold; color: #660066; height: 100px;"  align ="center">
Admin Login
</td>
</tr>
<tr>
<td style="color: #999999">
User Id :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox1" runat="server"  Width="250" Height="50" ></asp:TextBox>
</td>
</tr>
<tr>
<td style="height: 30px">

</td>
</tr>
<tr>
<td style="color: #999999">
User Password :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox2" runat="server"  Width="250" Height="50" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td style="height: 30px">

</td>
</tr>
<tr>
<td align ="center">
 <asp:Button ID="Button1" runat="server" Text="Login" Width="250" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
</td>
</tr>
</table>
</div>
</center>
    </form>
</body>
</html>
