<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Users.aspx.vb" Inherits="Dashboard2" %>

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
                                        <li class="breadcrumb-item active">Users</li>
                                         <asp:TextBox ID="sessionnnn" runat="server" Visible="False"></asp:TextBox>
                                        <asp:ListBox ID="lstbxusers" runat="server" Visible="False"></asp:ListBox>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- /# column -->
                    </div>
                    <!-- /# row -->
                   
        
                        <!-- /# row -->

    
                 
                            <!-- column -->
                     
                             <center>
                            <div style="padding: 10px; margin: 20px; border: 1px solid #999999;
         background-color: #FFFFFF;" class="textbox2"  >
                      
                            
                   
                                
                                      
                                    
                                 
       <table border ="0">
<tr>
<td style="display:none;">
Between Date :
</td>
<td style="display:none;">
    <asp:TextBox ID="TextBox1" runat="server" Width="120" placeholder="MM/dd/yyyy"></asp:TextBox>
</td>
<td style="display:none;">
    <asp:TextBox ID="TextBox2" runat="server" Width="120" placeholder="MM/dd/yyyy"></asp:TextBox>
</td>
<td style="display:none;">
    <asp:CheckBox ID="CheckBox1" runat="server" />
</td>

<td>
State :
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="120" AutoPostBack="True">
    </asp:DropDownList>
</td>
<td>

</td>
<td>
    <asp:CheckBox ID="CheckBox2" runat="server" />
</td>
<td>
City :
</td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server" Width="120">
    </asp:DropDownList>
</td>
<td>

</td>
<td>
    <asp:CheckBox ID="CheckBox3" runat="server" />
</td>

<td>

                                    <asp:Button ID="Button1" runat="server" Text="Filter" Width="70" Height="20" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false" OnClientClick="return checkp();"
                                 CssClass ="" />
                                 
                                   <asp:Button ID="Button2" runat="server" Text="XL" Width="70" Height="20" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false" OnClientClick="return checkp();"
                                 CssClass ="" Visible="False" />
                                 
                                    <asp:Button ID="Button3" runat="server" Text="Clear" Width="70" Height="20" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false" OnClientClick="return checkp();"
                                 CssClass ="" />
</td>
</tr>
</table>
                                 
                             
                                 
                              
     
                                      
                                   
                                        
                                    </div>
                                      </center>
                             
                                <center>
<br />
 <div style="padding: 10px; margin: 20px; border: 1px solid #999999;
         background-color: #FFFFFF;" class="textbox2"  >
         
         <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            EmptyDataText="No data" >
             <Columns >
                        <asp:BoundField DataField="Id" HeaderText="ID" HeaderStyle-Width="75" FooterStyle-Width="75" ItemStyle-HorizontalAlign="NotSet" />   
                 <asp:BoundField DataField="Firstname" HeaderText="Fst. Name" HeaderStyle-Width="105" FooterStyle-Width="105" ItemStyle-HorizontalAlign="NotSet" />   
                 <asp:BoundField DataField="Lastname" HeaderText="Lst. Name" HeaderStyle-Width="105" FooterStyle-Width="105" ItemStyle-HorizontalAlign="NotSet" />   
                 <asp:BoundField DataField="CompanyName" HeaderText="Company" HeaderStyle-Width="155" FooterStyle-Width="155" ItemStyle-HorizontalAlign="NotSet" />   
                <asp:BoundField DataField="PhoneNumber" HeaderText="Ph. No." HeaderStyle-Width="100" FooterStyle-Width="100" ItemStyle-HorizontalAlign="NotSet" />   

   <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-Width="155" FooterStyle-Width="155" ItemStyle-HorizontalAlign="NotSet" />   
                  <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-Width="185" FooterStyle-Width="185" ItemStyle-HorizontalAlign="NotSet" />   
                 <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-Width="105" FooterStyle-Width="105" ItemStyle-HorizontalAlign="NotSet" />   
                  <asp:BoundField DataField="Zip" HeaderText="Zip" HeaderStyle-Width="125" FooterStyle-Width="125" ItemStyle-HorizontalAlign="NotSet" />   
                  <asp:BoundField DataField="Status" HeaderText="Status" HeaderStyle-Width="100" FooterStyle-Width="100" ItemStyle-HorizontalAlign="NotSet" /> 
                 <asp:BoundField DataField="CreateDate" HeaderText="Create Dt." DataFormatString = "{0:d}"   ReadOnly="True" HeaderStyle-Width="120" FooterStyle-Width="120" ItemStyle-HorizontalAlign="NotSet" />   
                


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
                             
                            <!-- column -->
              

                        </div>

             

       




      
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
