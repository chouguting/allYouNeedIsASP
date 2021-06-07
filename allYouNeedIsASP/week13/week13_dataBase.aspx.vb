Imports System.Data
Imports System.Data.SqlClient
Partial Class week13_week13_dataBase
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim objDR As SqlDataReader
        Dim strDbCon, strSQL As String
        strDbCon = "Data Source=(LocalDB)\MSSQLLOCALDB;" &
                   "AttachDbFilename=" &
                   Server.MapPath("..\App_Data\School.mdf") &
                   ";Integrated Security=True"
        objCon = New SqlConnection(strDbCon)
        objCon.Open()

        strSQL = "SELECT * FROM Students"
        objCmd = New SqlCommand(strSQL, objCon)
        objDR = objCmd.ExecuteReader()
        If objDR.HasRows Then
            outputLabel.Text = "資料表紀錄:<hr/>"
            Do While objDR.Read()  '讀下一列 如果有下一列
                '就印出下一列的這三個資料
                outputLabel.Text &= objDR("sid") & "-"
                outputLabel.Text &= objDR("name") & "-"
                outputLabel.Text &= objDR("tel") & "<br/>"
            Loop
        Else
            outputLabel.Text = "DATABASE中沒有資料"
        End If
        objDR.Close()
        objCon.Close()
    End Sub

    Protected Sub adapterOutputButton_Click(sender As Object, e As EventArgs) Handles adapterOutputButton.Click
        Dim objCon As SqlConnection
        Dim objDataAdapter As SqlDataAdapter
        Dim strDbCon, strSQL As String
        strDbCon = "Data Source=(LocalDB)\MSSQLLOCALDB;" &
                   "AttachDbFilename=" &
                   Server.MapPath("..\App_Data\School.mdf") &
                   ";Integrated Security=True"
        objCon = New SqlConnection(strDbCon)
        objCon.Open()

        strSQL = "SELECT * FROM Students"
        objDataAdapter = New SqlDataAdapter(strSQL, objCon)
        Dim objDataSet As DataSet = New DataSet()
        objDataAdapter.Fill(objDataSet, "Students")
        Dim objRow As DataRow
        For Each objRow In objDataSet.Tables("Students").Rows
            adapterOutput.Text &= objRow("sid") & "-"
            adapterOutput.Text &= objRow("name") & "-"
            adapterOutput.Text &= objRow("tel") & "-"
            adapterOutput.Text &= objRow("birthday") & "<br/>"

        Next
        objCon.Close()
    End Sub

    Protected Sub scalarOutputButton_Click(sender As Object, e As EventArgs) Handles scalarOutputButton.Click
        Dim objCon As SqlConnection
        Dim objCmd As SqlCommand
        Dim strDbCon, strSQL As String
        strDbCon = "Data Source=(LocalDB)\MSSQLLOCALDB;" &
                   "AttachDbFilename=" &
                   Server.MapPath("..\App_Data\School.mdf") &
                   ";Integrated Security=True"
        objCon = New SqlConnection(strDbCon)
        objCon.Open()
        strSQL = "SELECT * FROM Students"
        objCmd = New SqlCommand(strSQL, objCon)
        scalerOutput.Text = "查詢結果:" & objCmd.ExecuteScalar() '回傳第一列的第一個資料
        objCon.Close()
    End Sub
End Class
