Imports System.Data
Imports System.Data.SqlClient
Partial Class VB
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim strQuery As String = "select CustomerID,City,Country,PostalCode from customers"
        Dim cmd As New SqlCommand(strQuery)
        Dim dt As DataTable = GetData(cmd)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Protected Sub OnPaging(ByVal sender As Object, ByVal e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub
    Private Function GetData(ByVal cmd As SqlCommand) As DataTable
        Dim dt As New DataTable()
        Dim strConnString As String = System.Configuration.ConfigurationManager.ConnectionStrings("conString").ConnectionString()
        Dim con As New SqlConnection(strConnString)
        Dim sda As New SqlDataAdapter()
        cmd.CommandType = CommandType.Text
        cmd.Connection = con
        Try
            con.Open()
            sda.SelectCommand = cmd
            sda.Fill(dt)
            Return dt
        Catch ex As Exception
            Throw ex
        Finally
            con.Close()
            sda.Dispose()
            con.Dispose()
        End Try
    End Function
End Class
