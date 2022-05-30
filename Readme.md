<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2403)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to find the SummaryType of a corresponding Data Field by a clicked cell
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2403/)**
<!-- run online end -->


<p>To accomplish this task, it is necessary to handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientPivotGrid_CellClicktopic">ASPxClientPivotGrid.CellClick </a> event. There, you should send the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientClickEventArgs_DataIndextopic">ASPxClientClickEventArgs.DataIndex</a> parameter to the server side and then process it via the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomCallbacktopic">ASPxPivotGrid.CustomCallback</a> event.</p>

<br/>


