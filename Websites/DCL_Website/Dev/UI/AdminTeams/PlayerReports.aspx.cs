﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cricket;

public partial class AdminTeams_PlayerReports : PageBaseAdmin
{
    int updateDaysAfterEndDate = 7;
    ArrayList matchIDsForScoreUpdateAllowed = new ArrayList();

    protected override void OnLoad(System.EventArgs e)
    {
        base.OnLoad(e);

        // get the # of days we allow users to update the scores after the match date
        //updateDaysAfterEndDate = toInt(ConfigurationManager.AppSettings["DaysToAllowMatchScoreUpdatesAfterMatchDate"]);

        //// get the match ids that are defined in web config files that we need to allow match score updates for
        //string matchIds = ConfigurationManager.AppSettings["MatchIDsForScoreUpdateAllowedCommaSeperated"];
        //if (!string.IsNullOrEmpty(matchIds))
        //{
        //    string[] matchIdArray = matchIds.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
        //    matchIDsForScoreUpdateAllowed.AddRange(matchIdArray);
        //}

        if (!IsPostBack)
        {
            bindControls();
        }
    }

    protected void bindControls()
    {

        SqlDataReader dr = m_bl.getGroupNames();
        ddlTournament.DataSource = dr;
        ddlTournament.DataTextField = "group_name";
        ddlTournament.DataValueField = "group_name";
        ddlTournament.DataBind();
        dr.Close();

        ddlTournament.SelectedValue = "Summer 2017";

        LoadPlayerReport(ddlTournament.SelectedValue);

    }

    private void LoadPlayerReport(string groupName)
    {
        SqlDataReader dr = m_bl.getPlayerReport(groupName);
        dgrid_playerReport.DataSource = dr;
        dgrid_playerReport.DataBind();
        dr.Close();

        lblErrorMatches.Text = "";
        if (dgrid_playerReport.Items.Count <= 0)
            lblErrorMatches.Text = "There are no matches scheduled.";

        lblTournament.Text = groupName;
    }

    #region Web Form Designer generated code
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        //
        InitializeComponent();
        base.OnInit(e);
    }

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        this.dgrid_playerReport.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.dgrid_scores_ItemCommand);
        this.dgrid_playerReport.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.dgrid_scores_ItemDataBound);

    }
    #endregion

    private void dgrid_scores_ItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
    {
        //if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        //{
            //DateTime matchDate = DateTime.MinValue;
            //if (DateTime.TryParse(e.Item.Cells[0].Text, out matchDate))
            //    e.Item.Cells[0].Text = matchDate.ToShortDateString();

            // disable the edit option if the match date is in the past beyond the allowed # of days fro match score updates
            //if (DateTime.Now > matchDate.AddDays(updateDaysAfterEndDate))
            //{
            //    // check if there are any match Ids that we need explicitly allow updates for 
            //    // this is mainly for matches whose scores were not entered by the teams and has been delayed
            //    // this comes form the web configuration file 
            //    if (!matchIDsForScoreUpdateAllowed.Contains(e.Item.Cells[1].Text))
            //        e.Item.Cells[8].Enabled = false;
            //}
        //}
    }

    private void dgrid_scores_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
    {
        //if (e.CommandName == "Edit")
        //{
        //    string strMatchId = e.Item.Cells[1].Text;
        //    if (strMatchId.Length > 0)
        //    {
        //        Session["match_id"] = strMatchId;
        //        Server.Transfer("match_score.aspx");
        //    }
        //}
    }

    protected void ddlTournament_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadPlayerReport(ddlTournament.SelectedValue);
    }
}

