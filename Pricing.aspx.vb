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

            con.Open()
            Dim cmd2 As New SqlCommand("select distinct display_name from OPTIONS where OPTION_ID='" & _
                        "1" & "' order by display_name", con)
            Dim rd2 As New SqlDataAdapter(cmd2)
            Dim dt2 As New DataTable()
            rd2.Fill(dt2)
            DropDownList1.DataSource = dt2
            DropDownList1.DataTextField = "display_name"
            DropDownList1.DataValueField = "display_name"
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, "-select-")
            DropDownList1.Items.Insert(1, "All")
            con.Close()

            con.Open()
            Dim cmd1 As New SqlCommand("select distinct NAME from OPTIONS where OPTION_ID='" & _
                        "2" & "' order by name", con)
            Dim rd1 As New SqlDataAdapter(cmd1)
            Dim dt1 As New DataTable()
            rd1.Fill(dt1)
            DropDownList2.DataSource = dt1
            DropDownList2.DataTextField = "NAME"
            DropDownList2.DataValueField = "NAME"
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, "-select-")
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

        If Not DropDownList1.Text = "-select" And Not DropDownList2.Text = "-select-" And TextBox1.Text <> "" And _
        TextBox4.Text <> "" And TextBox7.Text <> "" Then

            con.Open()
            Dim cmd2 As New SqlCommand
            cmd2.Connection = con
            cmd2.CommandText = "insert into search_rate (search_type,state,rate,gap_rate,created_by,created_on,updated_by,updated_on,county) values('" & _
            TextBox1.Text & "','" & DropDownList1.Text & "','" & TextBox4.Text & "','" & TextBox7.Text & "','" & _
            sessionnnn.Text & "','" & Now.Date & "','" & sessionnnn.Text & "','" & Now.Date & "','" & DropDownList3.Text & "')"
            cmd2.ExecuteNonQuery()
            con.Close()

            shad()
            '------------------------------------------
            Response.Redirect(Request.Url.AbsoluteUri)
        End If
        '===============================================================================================
    End Sub
    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged
        On Error Resume Next
        con.Open()
        Dim cmd3 As New SqlCommand
        cmd3.CommandText = "select id from options where name = '" & _
                DropDownList2.Text & "' and option_id like '" & "2" & "' order by id"
        cmd3.Connection = con
        Dim dr1 As SqlDataReader
        dr1 = cmd3.ExecuteReader

        If dr1.HasRows Then
            dr1.Read()
            TextBox1.Text = dr1.Item("id")
            dr1.Close()
        End If
        con.Close()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        On Error Resume Next
        TextBox2.Visible = Not TextBox2.Visible
        TextBox3.Visible = Not TextBox3.Visible
        Button2.Visible = Not Button2.Visible
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        On Error Resume Next
        TextBox5.Visible = Not TextBox5.Visible
        TextBox6.Visible = Not TextBox6.Visible
        Button5.Visible = Not Button5.Visible
    End Sub
    'Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
    '    On Error Resume Next
    '    TextBox8.Visible = Not TextBox8.Visible
    '    Button8.Visible = Not Button8.Visible
    'End Sub
    'Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
    '    On Error Resume Next

    '    If TextBox8.Text <> "" Then
    '        con.Open()
    '        Dim cmd2 As New SqlCommand
    '        cmd2.Connection = con
    '        cmd2.CommandText = "insert into options (OPTION_ID,NAME,DISPLAY_NAME,DISCRIPTION,DELETE_FLG,county) values('" & _
    '        "1" & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & _
    '        "" & "','" & "False" & "','" & TextBox8.Text & "')"
    '        cmd2.ExecuteNonQuery()
    '        con.Close()

    '        con.Open()
    '        Dim cmd3 As New SqlCommand("select distinct county from OPTIONS where display_name='" & _
    '                    DropDownList1.Text & "'", con)
    '        Dim rd3 As New SqlDataAdapter(cmd3)
    '        Dim dt3 As New DataTable()
    '        rd3.Fill(dt3)
    '        DropDownList3.DataSource = dt3
    '        DropDownList3.DataTextField = "county"
    '        DropDownList3.DataValueField = "county"
    '        DropDownList3.DataBind()
    '        DropDownList3.Items.Insert(0, "-select-")
    '        con.Close()



    '        TextBox8.Visible = False
    '        Button8.Visible = Not Button8.Visible
    '    End If
    'End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        On Error Resume Next
        If TextBox2.Text <> "" And TextBox3.Text <> "" Then
            con.Open()
            Dim cmd2 As New SqlCommand
            cmd2.Connection = con
            cmd2.CommandText = "insert into options (OPTION_ID,NAME,DISPLAY_NAME,DISCRIPTION,DELETE_FLG) values('" & _
            "1" & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & _
            "" & "','" & "False" & "')"
            cmd2.ExecuteNonQuery()
            con.Close()

            con.Open()
            Dim cmd3 As New SqlCommand("select distinct display_name from OPTIONS where OPTION_ID='" & _
                        "1" & "' order by display_name", con)
            Dim rd3 As New SqlDataAdapter(cmd3)
            Dim dt3 As New DataTable()
            rd3.Fill(dt3)
            DropDownList1.DataSource = dt3
            DropDownList1.DataTextField = "display_name"
            DropDownList1.DataValueField = "display_name"
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, "-select-")
            con.Close()

            TextBox2.Visible = Not TextBox2.Visible
            TextBox3.Visible = Not TextBox3.Visible
            Button2.Visible = Not Button2.Visible
        End If
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        On Error Resume Next
        If TextBox5.Text <> "" And TextBox6.Text <> "" Then
            con.Open()
            Dim cmd2 As New SqlCommand
            cmd2.Connection = con
            cmd2.CommandText = "insert into options (OPTION_ID,NAME,DISPLAY_NAME,DISCRIPTION,DELETE_FLG) values('" & _
            "2" & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & _
            "" & "','" & "False" & "')"
            cmd2.ExecuteNonQuery()
            con.Close()

            con.Open()
            Dim cmd1 As New SqlCommand("select distinct NAME from OPTIONS where OPTION_ID='" & _
                        "2" & "' order by name", con)
            Dim rd1 As New SqlDataAdapter(cmd1)
            Dim dt1 As New DataTable()
            rd1.Fill(dt1)
            DropDownList2.DataSource = dt1
            DropDownList2.DataTextField = "NAME"
            DropDownList2.DataValueField = "NAME"
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, "-select-")
            con.Close()

            TextBox5.Visible = Not TextBox5.Visible
            TextBox6.Visible = Not TextBox6.Visible
            Button5.Visible = Not Button5.Visible
        End If
    End Sub
    Protected Sub shad()
        On Error Resume Next
        If TextBox9.Text = "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If

        If TextBox9.Text <> "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' and " & DropDownList4.Text & " like '%" & TextBox9.Text & "%' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If


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
        rs.CommandText = "delete from search_rate where id like '" & txtslno.Text & "'"
        rs.ExecuteNonQuery()
        con.Close()
        shad()
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        On Error Resume Next
        con.Open()
        Dim cmd1 As New SqlCommand("select distinct COUNTY from OPTIONS where DISPLAY_NAME='" & _
                    DropDownList1.Text & "' order by county", con)
        Dim rd1 As New SqlDataAdapter(cmd1)
        Dim dt1 As New DataTable()
        rd1.Fill(dt1)
        DropDownList3.DataSource = dt1
        DropDownList3.DataTextField = "COUNTY"
        DropDownList3.DataValueField = "COUNTY"
        DropDownList3.DataBind()
        DropDownList3.Items.Insert(0, "-select-")
        DropDownList3.Items.Insert(1, "All")
        con.Close()
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

 
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Server.Transfer("PricingOverride.aspx?u=" & sessionnnn.Text)
    End Sub

  
    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        On Error Resume Next
        If Not DropDownList2.Text = "-select-" And TextBox7.Text <> "" Then
            con.Open()
            Dim cmd2 As New SqlCommand
            cmd2.Connection = con
            cmd2.CommandText = "update search_rate set gap_rate='" & TextBox7.Text & "' where search_type='" & TextBox1.Text & _
            "'"
            cmd2.ExecuteNonQuery()
            con.Close()
            Response.Redirect(Request.Url.AbsoluteUri)
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub
    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        On Error Resume Next
        con.Open()
        Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where " & DropDownList4.Text & " like '%" & TextBox9.Text & "%' order by id2 desc", con)
        Dim da5 As New SqlDataAdapter(cmd5)
        Dim ds5 As New DataSet

        da5.Fill(ds5)
        GridView1.DataSource = ds5
        GridView1.DataBind()
        con.Close()
    End Sub
    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        On Error Resume Next
        GridView1.EditIndex = -1
        If TextBox9.Text = "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If

        If TextBox9.Text <> "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' and " & DropDownList4.Text & " like '%" & TextBox9.Text & "%' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If
    End Sub
    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs) Handles GridView1.RowEditing
        On Error Resume Next
        GridView1.EditIndex = e.NewEditIndex
        If TextBox9.Text = "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If

        If TextBox9.Text <> "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' and " & DropDownList4.Text & " like '%" & TextBox9.Text & "%' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If
    End Sub
    Protected Sub OnRowUpdating(ByVal sender As Object, ByVal e As GridViewUpdateEventArgs)
        On Error Resume Next
        Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
        Dim idd As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
        Dim rate As Integer = (TryCast(row.FindControl("txtrate"), TextBox)).Text
        Dim gaprate As Integer = (TryCast(row.FindControl("txtgaprate"), TextBox)).Text

        Dim query As String = "UPDATE search_rate SET rate=@rate,gap_rate=@gaprate WHERE id like @idd"
        Dim constr As String = ConfigurationManager.ConnectionStrings("TitleLeaderDBConnection").ConnectionString

        Using con As SqlConnection = New SqlConnection(constr)
            Using cmd As SqlCommand = New SqlCommand(query)
                cmd.Parameters.AddWithValue("@idd", idd)
                cmd.Parameters.AddWithValue("@rate", rate)
                cmd.Parameters.AddWithValue("@gaprate", gaprate)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
        '------------------------to bank---------------------------------------------

        GridView1.EditIndex = -1
        If TextBox9.Text = "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If

        If TextBox9.Text <> "" Then
            con.Open()
            Dim cmd5 As New SqlCommand("select * from SEARCH_RATEq where option_id='" & "2" & "' and " & DropDownList4.Text & " like '%" & TextBox9.Text & "%' order by id2 desc", con)
            Dim da5 As New SqlDataAdapter(cmd5)
            Dim ds5 As New DataSet

            da5.Fill(ds5)
            GridView1.DataSource = ds5
            GridView1.DataBind()
            con.Close()
        End If

    End Sub
End Class
