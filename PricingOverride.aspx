<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PricingOverride.aspx.vb" Inherits="Dashboard2" %>

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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
                                        <asp:Button ID="Button6" runat="server" Text="Pricing" Width="150" Height="35" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
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
                                        <li class="breadcrumb-item active">Pricing</li>
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
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
 <ContentTemplate>
                                   <table border ="0">
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
</td>
</tr>
<tr>
<td>

    <asp:DropDownList ID="DropDownList3" runat="server" Width="300" Height="50" AutoPostBack="True">
    <asp:ListItem>-select-</asp:ListItem>
     </asp:DropDownList>
</td>
</tr>
<tr>
<td style="color: #999999" align ="right">
State Name :
</td>
<td rowspan ="13" style="width: 100px">
    
</td>

</tr>

<tr>
<td>

    <asp:DropDownList ID="DropDownList1" runat="server" Width="250" Height="50" AutoPostBack="True">
    <asp:ListItem>-select-</asp:ListItem>
     </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" Text="+" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
   
</td>
</tr>

<tr>
<td>
 <asp:TextBox ID="TextBox2" runat="server"  Width="125" Height="50"  placeholder="   State Name"  Visible="false" ></asp:TextBox>
  <asp:TextBox ID="TextBox3" runat="server"  Width="122" Height="50"  placeholder="   Display Name" Visible="false" ></asp:TextBox>
   <asp:Button ID="Button2" runat="server" Text="Add" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" Visible="false" OnClientClick="this.disabled = true; this.value = 'Saving...';" 
                                  UseSubmitBehavior="false"/>
</td>
</tr>



<tr>
<td style="color: #999999" align ="right">
County Name :
</td>
<td rowspan ="13" style="width: 100px">
    
</td>

</tr>

<tr>
<td>

    <asp:DropDownList ID="DropDownList4" runat="server" Width="250" Height="50">
    <asp:ListItem>-select-</asp:ListItem>
     </asp:DropDownList>
        <asp:Button ID="Button7" runat="server" Text="+" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
   
</td>
</tr>

<tr>
<td>
 <asp:TextBox ID="TextBox8" runat="server"  Width="125" Height="50"  placeholder="   State Name"  Visible="false" ></asp:TextBox>
  <asp:TextBox ID="TextBox9" runat="server"  Width="122" Height="50"  placeholder="   Display Name" Visible="false" ></asp:TextBox>
   <asp:Button ID="Button8" runat="server" Text="Add" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" Visible="false" OnClientClick="this.disabled = true; this.value = 'Saving...';" 
                                  UseSubmitBehavior="false"/>
</td>
</tr>


<tr>
<td style="color: #999999" align ="center">
Search Type :
</td>
</tr>
<tr>
<td>


    <asp:DropDownList ID="DropDownList2" runat="server" Width="250" Height="50" AutoPostBack ="true" >
    <asp:ListItem>-select-</asp:ListItem>
    <asp:ListItem>KY</asp:ListItem>
    </asp:DropDownList>
           <asp:Button ID="Button4" runat="server" Text="+" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" />
      <asp:TextBox ID="TextBox1" runat="server"  Width="250" Height="50" Visible ="false" ></asp:TextBox>

</td>
</tr>
<tr>
<td>
 <asp:TextBox ID="TextBox5" runat="server"  Width="125" Height="50"  placeholder="   Search Name" Visible="false" ></asp:TextBox>
  <asp:TextBox ID="TextBox6" runat="server"  Width="122" Height="50"  placeholder="   Display Name" Visible="false" ></asp:TextBox>
   <asp:Button ID="Button5" runat="server" Text="Add" Width="50" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" Visible="false" OnClientClick="this.disabled = true; this.value = 'Saving...';" 
                                  UseSubmitBehavior="false"/>
</td>
</tr>


<tr>
<td style="color: #999999">
Cost :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox4" runat="server"  Width="305" Height="50" placeholder="     mandatory"></asp:TextBox>
</td>
</tr>

<tr>
<td style="color: #999999">
Gap Rate :
</td>
</tr>
<tr>
<td>

    <asp:TextBox ID="TextBox7" runat="server"  Width="305" Height="50" placeholder="     mandatory"></asp:TextBox>
</td>
</tr>

<tr>
<td align ="center">
 <asp:Button ID="Button1" runat="server" Text="Save" Width="305" Height="50" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" OnClientClick="this.disabled = true; this.value = 'Saving...';" 
                                  UseSubmitBehavior="false"/>
                               
</td>
</tr>
</table>
      
</ContentTemplate>
</asp:UpdatePanel>
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
           <br />
         <table>
         <tr>
         <td>
         Field :
         </td>
         <td>
         <asp:DropDownList ID="DropDownList5" runat="server" Width="287" Height="30">
         <asp:ListItem>Name</asp:ListItem>
         <asp:ListItem>State</asp:ListItem>
         <asp:ListItem>County</asp:ListItem>
         </asp:DropDownList>
         </td>
         <td>
         Search :
         </td>
         <td>
         <asp:TextBox ID="TextBox10" runat="server" Width="287" Height="30"></asp:TextBox>
         </td>
         <td>
          <asp:Button ID="Button9" runat="server" Text="Search" Width="105" Height="30" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" OnClientClick="this.disabled = true; this.value = 'Doing..';" 
                                  UseSubmitBehavior="false"/>
                                   <asp:Button ID="Button10" runat="server" Text="Refresh" Width="105" Height="30" ForeColor="White"
                                BackColor="#ACACAC" BorderStyle="None" Font-Bold="false"
                                 CssClass ="btn" OnClientClick="this.disabled = true; this.value = 'Doing..';" 
                                  UseSubmitBehavior="false"/>
         </td>
         </tr>
         </table>
         <br />

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            EmptyDataText="No data" DataKeyNames="override_id" AllowPaging="true"
             OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
             <Columns >
                <asp:BoundField DataField="override_id" HeaderText="Sl No." HeaderStyle-Width="45" FooterStyle-Width="45" ItemStyle-HorizontalAlign="NotSet" />   
                <asp:BoundField DataField="user_id" HeaderText="User ID" HeaderStyle-Width="75" FooterStyle-Width="75" ItemStyle-HorizontalAlign="NotSet" />   
          <asp:BoundField DataField="name" HeaderText="Search Type" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
          <asp:BoundField DataField="state" HeaderText="State" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                              <asp:BoundField DataField="county" HeaderText="County" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   

                    <asp:BoundField DataField="rate" HeaderText="Rate" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                    <asp:BoundField DataField="gap_rate" HeaderText="Gap Rate" HeaderStyle-Width="150" FooterStyle-Width="150" ItemStyle-HorizontalAlign="NotSet" />   
                  
             <asp:TemplateField>
            <ItemTemplate >
                 <asp:Button ID="lbtnDelete" runat="server" Text="delete"  CommandName="Delete" 
            OnClientClick="return confirm('Are you sure you want to delete this user ?')"
             CausesValidation="false" CommandArgument = '<%# Eval("override_id") %>' 
             BackColor="#FF3300" ForeColor="White" BorderStyle="None" />
             </ItemTemplate>
        </asp:TemplateField>
           

    <asp:TemplateField HeaderText="" Visible="False">
    <ItemTemplate >
        <asp:Label ID="txtslno" runat="server" Text='<%#Eval("override_id") %>' Visible="false"/>
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
