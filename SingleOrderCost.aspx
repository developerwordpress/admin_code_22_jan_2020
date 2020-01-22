<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SingleOrderCost.aspx.vb" Inherits="Dashboard2" %>

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
                                        <li class="breadcrumb-item active">Single Order Cost</li>
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
                       
                            
                                <div class="card" style="width: 600px">
                                    <div class="card-body"  >
                                       <%-- <h4 class="card-title">Sales Overview</h4>--%>
                                        <div  >
                                        <center>
                                    
                                    <asp:Image ID="Image1" runat="server" ImageUrl="css/dashbord-bg3.jpg" Width="500"></asp:Image>
                                        </center>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                              </center>
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
