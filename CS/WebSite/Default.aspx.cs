using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using DevExpress.XtraPivotGrid;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ASPxPivotGrid1_CustomCallback(object sender, DevExpress.Web.ASPxPivotGrid.PivotGridCustomCallbackEventArgs e)
    {
        int dataFieldIndex = Convert.ToInt32(e.Parameters);
        Label1.Text = ASPxPivotGrid1.GetFieldByArea(PivotArea.DataArea, dataFieldIndex).SummaryType.ToString();
    }
}

