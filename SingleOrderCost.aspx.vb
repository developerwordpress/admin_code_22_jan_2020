Imports System
Imports System.Configuration
Imports System.Collections
Imports System.Data.SqlClient

Imports System.Data
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Imports System.Xml
Imports System.Data.Odbc
Imports InfoSoftGlobal
Partial Class Dashboard2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim ds As SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        On Error Resume Next
        If Session.Contents("USER_TYPE") = Nothing Then
            Response.Redirect("UserLogin.aspx")
        End If

        If Session.Contents("USER_TYPE") <> "titleleaderadmin" Then
            Response.Redirect("singleordercost.aspx")
        End If
        sessionnnn.Text = Request.QueryString("u")
        con = New SqlConnection
        con.ConnectionString = ConfigurationManager.ConnectionStrings("TitleLeaderDBConnection").ToString

        If Not Page.IsPostBack Then
            con.Open()
            Dim cmd As New SqlCommand("select distinct User_Screen from Admin_Screen_Allotment where User_ID='" & _
                        sessionnnn.Text & "'", con)
            Dim rd As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            rd.Fill(dt)
            lstbxusers.DataSource = dt
            lstbxusers.DataTextField = "user_screen"
            lstbxusers.DataValueField = "user_screen"
            lstbxusers.DataBind()
            con.Close()

            '=================================================================='
            Dim i, f As Integer
            For Each ctrl As Control In form1.Controls
                If TypeOf ctrl Is LinkButton Then
                    f = 0
                    Dim mnu As LinkButton = ctrl
                    For i = 0 To lstbxusers.Items.Count - 1
                        If mnu.ID = lstbxusers.Items(i).Value Then
                            f = 1
                        End If
                    Next
                    If f = 1 Then
                        mnu.Enabled = True
                    Else
                        mnu.Enabled = False
                    End If
                End If
            Next
            '=================================================================
        End If
    End Sub
    Protected Sub Dashboard_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Dashboard.Click
        Server.Transfer("dashboard.aspx?u=" & sessionnnn.Text)
    End Sub
    Protected Sub mnuAllOrders_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuAllOrders.Click
        Server.Transfer("allorders.aspx?u=" & sessionnnn.Text)
    End Sub
    Protected Sub mnuChangePassword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuChangePassword.Click
        Server.Transfer("changepassword.aspx?u=" & sessionnnn.Text)
    End Sub
    Protected Sub mnuCreateNewAdmin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuCreateNewAdmin.Click
        Server.Transfer("createnewadmin.aspx?u=" & sessionnnn.Text)
    End Sub
    'Protected Sub mnuDefaultOrderCost_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuDefaultOrderCost.Click
    '    Server.Transfer("DefaultOrderCost.aspx?u=" & sessionnnn.Text)
    'End Sub
    'Protected Sub mnuDefaultOrderPrice_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuDefaultOrderPrice.Click
    '    Server.Transfer("DefaultOrderPrice.aspx?u=" & sessionnnn.Text)
    'End Sub
    Protected Sub mnuInvoiceReport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuInvoiceReport.Click
        Server.Transfer("InvoiceReport.aspx?u=" & sessionnnn.Text)
    End Sub
    'Protected Sub mnuPastDueInvoice_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuPastDueInvoice.Click
    '    Server.Transfer("PastDueInvoice.aspx?u=" & sessionnnn.Text)
    'End Sub
    'Protected Sub mnuSaleReport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuSaleReport.Click
    '    Server.Transfer("SaleReport.aspx?u=" & sessionnnn.Text)
    'End Sub
    'Protected Sub mnuSearchByUser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuSearchByUser.Click
    '    Server.Transfer("SearchByUser.aspx?u=" & sessionnnn.Text)
    'End Sub
    'Protected Sub mnuSingleOrderCost_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuSingleOrderCost.Click
    '    Server.Transfer("SingleOrderCost.aspx?u=" & sessionnnn.Text)
    'End Sub
    Protected Sub mnuUsers_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuUsers.Click
        Server.Transfer("Users.aspx?u=" & sessionnnn.Text)
    End Sub

    Protected Sub mnuPricing_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles mnuPricing.Click
        Server.Transfer("pricing.aspx?u=" & sessionnnn.Text)
    End Sub
End Class
