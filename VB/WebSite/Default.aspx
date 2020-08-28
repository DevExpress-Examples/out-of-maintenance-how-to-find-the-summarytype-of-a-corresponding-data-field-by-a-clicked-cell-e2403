<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dxwpg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" EnableCallBacks="False" 
			oncustomcallback="ASPxPivotGrid1_CustomCallback" DataSourceID="AccessDataSource1">
			<Fields>
				<dxwpg:PivotGridField ID="fieldProductName" AreaIndex="0" FieldName="ProductName">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldCompanyName" Area="RowArea" AreaIndex="0" FieldName="CompanyName">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldProductAmount" Area="DataArea" AreaIndex="0" FieldName="ProductAmount">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldProductAmount1" Area="DataArea" AreaIndex="1" Caption="Count"
					FieldName="ProductAmount" SummaryType="Count">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldProductAmount2" Area="DataArea" AreaIndex="2" Caption="Min"
					FieldName="ProductAmount" SummaryType="Min">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldProductAmount3" Area="DataArea" AreaIndex="3" Caption="Max"
					FieldName="ProductAmount" SummaryType="Max">
				</dxwpg:PivotGridField>
				<dxwpg:PivotGridField ID="fieldProductAmount4" Area="DataArea" AreaIndex="4" Caption="Average"
					FieldName="ProductAmount" SummaryType="Average">
				</dxwpg:PivotGridField>
			</Fields>
			<ClientSideEvents CellClick="function(s, e) {
   s.PerformCallback(e.DataIndex);
}" />

		</dxwpg:ASPxPivotGrid>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT * FROM [CustomerReports]"></asp:AccessDataSource>

	</div>
		<asp:Label ID="Label1" runat="server" Width="80px"></asp:Label>
	</form>
</body>
</html>