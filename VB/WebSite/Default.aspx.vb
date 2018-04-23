Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Collections.Generic
Imports DevExpress.XtraPivotGrid

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub ASPxPivotGrid1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxPivotGrid.PivotGridCustomCallbackEventArgs)
		Dim dataFieldIndex As Integer = Convert.ToInt32(e.Parameters)
		Label1.Text = ASPxPivotGrid1.GetFieldByArea(PivotArea.DataArea, dataFieldIndex).SummaryType.ToString()
	End Sub
End Class

