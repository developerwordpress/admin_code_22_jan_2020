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
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim rd As SqlDataReader
    Dim cmd1 As SqlCommand
    Dim rd1 As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Contents("USER_TYPE") = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        On Error Resume Next
        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            con = New SqlConnection
            con.ConnectionString = ConfigurationManager.ConnectionStrings("TitleLeaderDBConnection").ToString

            con.Open()
            cmd = New SqlCommand
            cmd.Connection = con
            cmd.CommandText = "select * from Admin_Screen_Allotment where  user_id='" & TextBox1.Text & "' and user_password='" & TextBox2.Text & "'"
            rd = cmd.ExecuteReader
            If rd.HasRows Then
                Session.Contents("USER_TYPE") = "titleleaderadmin"
                Response.Redirect("dashboard.aspx?u=" & TextBox1.Text)
            Else
                Dim lblMessageBox As New Label()
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "err_msg", "alert('" + "Invalid Username or Password" + "');", True)
                Page.Controls.Add(lblMessageBox)
            End If
            con.Close()



        End If
    End Sub
End Class
