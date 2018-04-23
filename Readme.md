# How to find the SummaryType of a corresponding Data Field by a clicked cell


<p>To accomplish this task, it is necessary to handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientPivotGrid_CellClicktopic">ASPxClientPivotGrid.CellClick </a> event. There, you should send the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientClickEventArgs_DataIndextopic">ASPxClientClickEventArgs.DataIndex</a> parameter to the server side and then process it via the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_CustomCallbacktopic">ASPxPivotGrid.CustomCallback</a> event.</p>

<br/>


