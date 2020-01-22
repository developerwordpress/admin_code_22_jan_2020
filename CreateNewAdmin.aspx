<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CreateNewAdmin.aspx.vb" Inherits="Dashboard2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin Panel</title>
    <link rel="shortcut icon" type="image/icon" href="css/logo.png"/>
     <link rel="stylesheet" href="css/shads.css" type="text/css" media="screen" />
     
       <!-- ================= Favicon ================== -->
        <!-- Standard -->
        <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
        <!-- Retina iPad Touch Icon-->
        <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
        <!-- Retina iPhone Touch Icon-->
        <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
        <!-- Standard iPad Touch Icon-->
        <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
        <!-- Standard iPhone Touch Icon-->
        <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

        <!-- Styles -->
        <link href="css/lib/weather-icons.css" rel="stylesheet" />
        <link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
        <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
        <link href="css/lib/font-awesome.min.css" rel="stylesheet">
        <link href="css/lib/themify-icons.css" rel="stylesheet">
        <link href="css/lib/sidebar.css" rel="stylesheet">
        <link href="css/lib/bootstrap.min.css" rel="stylesheet">
        <link href="css/lib/helper.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
   <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
            <div class="nano">
                   <div class="nano-content">
                    <div class="logo"><a href="#"><!-- <img src="assets/images/logo.png" alt="" /> --><span>Title Leader</span></a></div>
                    <ul>
                        <li class="label">Main</li>
                        <li class="active"><a class="sidebar-sub-toggle"><i class="ti-home"></i> Account <span class="badge badge-primary"></span> <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                            <li><asp:LinkButton ID="mnuUsers" runat="server">Users</asp:LinkButton></li>
                            <li><asp:LinkButton ID="mnuChangePassword" runat="server">Change Password</asp:LinkButton></li>
                          <%--  <li><asp:LinkButton ID="mnuSingleOrderCost" runat="server">Single Oreder Cost</asp:LinkButton></li>--%>
                        <%--    <li><asp:LinkButton ID="mnuDefaultOrderCost" runat="server">Default Order Cost</asp:LinkButton></li>--%>
                            <li><asp:LinkButton ID="mnuPricing" runat="server">Pricing</asp:LinkButton></li>
                            <li><asp:LinkButton ID="mnuInvoiceReport" runat="server">Invoice Report</asp:LinkButton></li>
                           </ul>
                        </li>

                     
                   <%--     <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i>  Reports  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                            <li><asp:LinkButton ID="mnuSaleReport" runat="server">Sale Report</asp:LinkButton></li>
                            <li><asp:LinkButton ID="mnuPastDueInvoice" runat="server">Past Due Invoice</asp:LinkButton></li>
                                                          
                            </ul>
                        </li>--%>
                        
                           <li><a class="sidebar-sub-toggle"><i class="ti-panel"></i>  Orders  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                              <li><asp:LinkButton ID="mnuAllOrders" runat="server">All Orders</asp:LinkButton></li>
                            
                           <%--   <li><asp:LinkButton ID="mnuSearchByUser" runat="server">Search By User</asp:LinkButton></li>--%>
                            
                                                   
                            </ul>
                        </li>
                        
                        
                             <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid2-alt"></i>  Global Settings  <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                            <ul>
                            <%--<li><asp:LinkButton ID="mnuDefaultOrderPrice" runat="server"> Default Order Price</asp:LinkButton></li>--%>
                            <li><asp:LinkButton ID="mnuCreateNewAdmin" runat="server"> Create New Admin</asp:LinkButton></li>
                            
                                                </ul>
                        </li>
                        
                        

             
                        <li class="label">Features</li>
                   
                 
                   
                
               
                    
                   
                        <li><a href ="userlogin.aspx"><i class="ti-close"></i> Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /# sidebar -->


        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="float-left">
                            <div class="hamburger sidebar-toggle">
                                <span class="line"></span>
                                <span class="line"></span>
                                <span class="line"></span>
                            </div>
                        </div>
                        <div class="float-right">
                            <ul>

                                <li class="header-icon dib"><i class="ti-bell"></i>
                                    <div class="drop-down">
                                        <div class="dropdown-content-heading">
                                            <span class="text-left">Recent Notifications</span>
                                        </div>
                               
                                    </div>
                                </li>
                                <li class="header-icon dib"><i class="ti-email"></i>
                  
                                </li>
                            
                       <li class="header-icon dib" ><asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="UserLogin.aspx"> Logout</asp:LinkButton></li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="content-wrap">
            <div class="main">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 p-r-0 title-margin-right">
                            <div class="page-header">
                                <div class="page-title">
                                    <h1>Hello, <span>Welcome Here</span></h1>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                        <div class="col-lg-4 p-l-0 title-margin-left">
                            <div class="page-header">
                                <div class="page-title">
                                    <ol class="breadcrumb">
                                          <li class="breadcrumb-item">
                                            <asp:LinkButton ID="Dashboard" runat="server">Dashboard</asp:LinkButton></li>
                                        <li class="breadcrumb-item active">Create New Admin</li>
                                         <asp:TextBox ID="sessionnnn" runat="server" Visible="False"></asp:TextBox>
                                        <asp:ListBox ID="lstbxusers" runat="server" Visible="False"></asp:ListBox>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                    <section id="main-content" >
        
                        <!-- /# row -->

    
                        <div class="row"  >
                            <!-- column -->
                            <center>
                          
                            <div class="col-lg-8" >
                       
                            
                                <div class="card" style="width: 800px">
                                    <div class="card-body"  >
                                       <%-- <h4 class="card-title">Sales Overview</h4>--%>
                                        <div  >
                                        <center>
                                    
                                   <table border ="0">

<tr>
<td style="color: #999999" align ="right">
New User Id :
</td>
<td style="width: 100px">

</td>
<td rowspan ="14" valign="top">
    <asp:ListBox ID="ListBox1" runat="server" Width="300" Height="500" SelectionMode="Multiple" ForeColor="#999999" Font-Size="X-Large">
    <asp:ListItem>Users</asp:ListItem>
    <asp:ListItem>ChangePassword</asp:ListItem>
    <asp:ListItem>SingleOrderCost</asp:ListItem>
    <asp:ListItem>DefaultOrderCost</asp:ListItem>
    <asp:ListItem>Pricing</asp:ListItem>
    <asp:ListItem>InvoiceReport</asp:ListItem>
    <asp:ListItem>SaleReport</asp:ListItem>
     <asp:ListItem>PastDueInvoice</asp:ListItem>
    <asp:ListItem>AllOrders</asp:ListItem>
    <asp:ListItem>SearchByUser</asp:ListItem>
    <asp:ListItem>DefaultOrderPrice</asp:ListItem>
    <asp:ListItem>CreateNewAdmin</asp:ListItem>
    
    </asp:ListBox>
</td>
<td rowspan ="14" valign="top">

</td>
</tr>
<tr>
<td>
 <asp:TextBox ID="TextBox3" runat="server"  Width="50" Height="50" Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox1" runat="server"  Width="250" Height="50" placeholder="     mandatory"></asp:TextBox>
   
</td>
</tr>

<tr>
<td style="color: #999999">
New User Password :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox2" runat="server"  Width="250" Height="50" placeholder="     mandatory" ></asp:TextBox>
</td>
</tr>

<tr>
<td style="color: #999999">
New User Name :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox4" runat="server"  Width="250" Height="50" placeholder="     mandatory"></asp:TextBox>
</td>
</tr>
<tr>
<td style="color: #999999">
New User E Mail :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox5" runat="server"  Width="250" Height="50" ></asp:TextBox>
</td>
</tr>
<tr>
<td style="color: #999999">
New User Phone No. :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox6" runat="server"  Width="250" Height="50" ></asp:TextBox>
</td>
</tr>
<tr>
<td style="color: #999999">
New User Address :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox7" runat="server"  Width="250" Height="50" ></asp:TextBox>
</td>
</tr>

<tr>
<td align ="center">
 <asp:Button ID="Button1" runat="server" Text="Save" Width="250" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
</td>
</tr>
</table>
<br />
<div style="height: 500px; overflow: auto">


        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" 
            EmptyDataText="No data" DataKeyNames ="id" >
             <Columns >

                                     <asp:TemplateField>
                     <ItemTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>

                  <asp:BoundField DataField="id" HeaderText="User ID" ReadOnly="True" HeaderStyle-Width="100" FooterStyle-Width="100" ItemStyle-HorizontalAlign="NotSet" />   
                    <asp:BoundField DataField="firstname" HeaderText="First Name" ReadOnly="True" HeaderStyle-Width="190" FooterStyle-Width="190" ItemStyle-HorizontalAlign="NotSet" />   
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" ReadOnly="True" HeaderStyle-Width="190" FooterStyle-Width="190" ItemStyle-HorizontalAlign="NotSet" />   
    <asp:BoundField DataField="state" HeaderText="State Name" ReadOnly="True" HeaderStyle-Width="120" FooterStyle-Width="120" ItemStyle-HorizontalAlign="NotSet" />   
    <asp:BoundField DataField="city" HeaderText="City Name" ReadOnly="True" HeaderStyle-Width="120" FooterStyle-Width="120" ItemStyle-HorizontalAlign="NotSet" />   

                   <asp:TemplateField Visible ="false">
                              <ItemTemplate>
                <asp:Label ID="lblpin" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>  

             </Columns>
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#98ACC2" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#98ACC2" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            
            </asp:GridView>
            </div>
                                        </center>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                              </center>
                            <!-- column -->
                             

                        </div>

             

       
      <center>
                            <div style="padding: 10px; margin: 20px; border: 1px solid #999999;
         background-color: #FFFFFF;" class="textbox2"  >
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            EmptyDataText="No data" DataKeyNames="sl_no" AllowPaging="true"
             OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
             <Columns >
                <asp:BoundField DataField="sl_no" HeaderText="Sl No." HeaderStyle-Width="45" FooterStyle-Width="45" ItemStyle-HorizontalAlign="NotSet" />   
          <asp:BoundField DataField="User_ID" HeaderText="User ID" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
          <asp:BoundField DataField="User_Password" HeaderText="Password" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                    <asp:BoundField DataField="User_Name" HeaderText="Name" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                    <asp:BoundField DataField="User_E_Mail" HeaderText="E Mail" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                                <asp:BoundField DataField="User_Ph_No" HeaderText="Phone No." HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                                <asp:BoundField DataField="User_Address" HeaderText="Address" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   

             <asp:TemplateField>
            <ItemTemplate >
                 <asp:Button ID="lbtnDelete" runat="server" Text="delete"  CommandName="Delete" 
            OnClientClick="return confirm('Are you sure you want to delete this user ?')"
             CausesValidation="false" CommandArgument = '<%# Eval("sl_no") %>' 
             BackColor="#FF3300" ForeColor="White" BorderStyle="None" />
             </ItemTemplate>
        </asp:TemplateField>
           

    <asp:TemplateField HeaderText="" Visible="False">
    <ItemTemplate >
        <asp:Label ID="txtslno" runat="server" Text='<%#Eval("sl_no") %>' Visible="false"/>
    </ItemTemplate>
     </asp:TemplateField>

             </Columns>
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#98ACC2" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#98ACC2" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            
            </asp:GridView>
         
         </div>
         </center>



      
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="footer">
                                    <p>2019 © Admin Board. - <a href="#">www.titleleader.com</a></p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    
        <!-- jquery vendor -->
        <script src="css/js/jquery.min.js"></script>
        <script src="css/js/jquery.nanoscroller.min.js"></script>
        <script src="css/js/sidebar.js"></script>
        <script src="css/js/bootstrap.min.js"></script>
        <script src="css/js/scripts.js"></script>
        <!-- scripit init-->
    </form>
</body>
</html>
