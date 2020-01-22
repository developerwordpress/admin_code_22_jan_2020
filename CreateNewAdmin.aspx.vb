Imports System.IO
Imports System.Drawing
Imports System
Imports System.Configuration
Imports System.Collections
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
'Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Partial Class Dashboard2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim dr As SqlDataReader
    Dim idx As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        On Error Resume Next
        If Session.Contents("USER_TYPE") = Nothing Then
            Response.Redirect("UserLogin.aspx")
        End If

        If Session.Contents("USER_TYPE") <> "titleleaderadmin" Then
            Response.Redirect("createnewadmin.aspx")
        End If
        sessionnnn.Text = Request.QueryString("u")
        con = New SqlConnection
        con.ConnectionString = ConfigurationManager.ConnectionStrings("TitleLeaderDBConnection").ToString
        If Not Page.IsPostBack Then
            shad()

      
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
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        On Error Resume Next

        If TextBox1.Text <> "" And TextBox2.Text <> "" And TextBox4.Text <> "" And TextBox3.Text = "" Then
            con.Open()
            Dim cmdA As New SqlCommand
            cmdA.CommandType = CommandType.Text
            cmdA.Connection = con
            cmdA.CommandText = "select max(sl_no) from Admin_Screen_Allotment"
            Dim a As Integer = cmdA.ExecuteScalar
            TextBox3.Text = a + 1
            If TextBox3.Text = "" Then
                TextBox3.Text = 1
            End If
            con.Close()

            con.Open()
            Dim cmd2 As New SqlCommand
            cmd2.Connection = con
            Dim i As Integer
            For i = 0 To ListBox1.Items.Count - 1
                If (ListBox1.Items(i).Selected) Then
                    cmd2.CommandText = "insert into Admin_Screen_Allotment (Sl_No,User_ID,User_Password,User_Screen,User_Name,User_E_Mail,User_Ph_No,User_Address) values('" & TextBox3.Text & "','" & TextBox1.Text & _
                    "','" & TextBox2.Text & "','" & "mnu" + ListBox1.Items(i).Text & "','" & TextBox4.Text & "','" & TextBox5.Text & _
                    "','" & TextBox6.Text & "','" & TextBox7.Text & "')"
                    cmd2.ExecuteNonQuery()
                End If
            Next
            con.Close()


            For Each row As GridViewRow In GridView2.Rows
                If row.RowType = DataControlRowType.DataRow Then
                    Dim isChecked As Boolean = row.Cells(0).Controls.OfType(Of CheckBox)().FirstOrDefault().Checked
                    If isChecked Then
                        Dim cmd As New SqlCommand("insert into user_user(sl_no,User_id,user_no) values('" & TextBox3.Text & _
                                                  "','" & TextBox1.Text & "','" & GridView2.DataKeys(row.RowIndex).Value & "')", con)
                        con.Open()
                        cmd.ExecuteNonQuery()
                        con.Close()
                    End If
                End If
            Next


            shad()
            '------------------------------------------
            Response.Redirect(Request.Url.AbsoluteUri)
        End If
        '===============================================================================================
    End Sub
    Protected Sub shad()
        On Error Resume Next
        con.Open()
        Dim cmd5 As New SqlCommand("select sl_no,User_ID,User_Password,User_Name,User_E_Mail,User_Ph_No,User_Address from Admin_Screen_Allotment where not user_id='" & "ADMIN" & "' group by sl_no,User_ID,User_Password,User_Name,User_E_Mail,User_Ph_No,User_Address order by sl_no", con)
        Dim da5 As New SqlDataAdapter(cmd5)
        Dim ds5 As New DataSet

        da5.Fill(ds5)
        GridView1.DataSource = ds5
        GridView1.DataBind()
        con.Close()


        con.Open()
        Dim cmd6 As New SqlCommand("select * from usermaster order by state", con)
        Dim da6 As New SqlDataAdapter(cmd6)
        Dim ds6 As New DataSet

        da6.Fill(ds6)
        GridView2.DataSource = ds6
        GridView2.DataBind()
        con.Close()

    End Sub
    Protected Sub OnPageIndexChanging(ByVal sender As Object, ByVal e As GridViewPageEventArgs)
        On Error Resume Next
        GridView1.PageIndex = e.NewPageIndex
        shad()
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        On Error Resume Next
        Dim txtslno As Label
        idx = Integer.Parse(e.RowIndex)
        txtslno = GridView1.Rows(idx).Cells(0).FindControl("txtslno")
        con.Open()
        Dim rs As New SqlCommand
        rs.Connection = con
        rs.CommandText = "delete from Admin_Screen_Allotment where sl_no like '" & txtslno.Text & "'"
        rs.ExecuteNonQuery()
        con.Close()
        shad()
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
