<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
            oncustomcallback="ASPxPivotGrid1_CustomCallback" DataSourceID="SqlDataSource1"
            OptionsData-DataProcessingEngine="Optimized" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dxwpg:PivotGridField ID="fieldProductName" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldCompanyName" Area="RowArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="CompanyName" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldProductAmount" Area="DataArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldProductAmount1" Area="DataArea" AreaIndex="1" Caption="Count" SummaryType="Count">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldProductAmount5" Area="DataArea" AreaIndex="2" Caption="Min" SummaryType="Min">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldProductAmount2" Area="DataArea" AreaIndex="3" Caption="Max" SummaryType="Max">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldProductAmount3" Area="DataArea" AreaIndex="4" Caption="Average" SummaryType="Average">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
            </Fields>
            <ClientSideEvents CellClick="function(s, e) {
   s.PerformCallback(e.DataIndex);
}" />

<OptionsData DataProcessingEngine="Optimized"></OptionsData>

        </dxwpg:ASPxPivotGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [CustomerReports]"></asp:SqlDataSource>

    
    </div>
        <asp:Label ID="Label1" runat="server" Width="80px"></asp:Label>
    </form>
</body>
</html>
