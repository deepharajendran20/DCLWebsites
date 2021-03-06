<%@ Page Title="Home Page" Language="c#" MasterPageFile="~/Site.master" Inherits="Cricket._default" CodeFile="default.aspx.cs" CodeFileBaseClass="Cricket.PageBase" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 301px;
        }
    </style>

    <link rel="stylesheet" type="text/css" href="/styles/_shared/css/style.css">
    <link rel="stylesheet" type="text/css" href="/styles/jcarousel.basic.css">

    <script type="text/javascript" src="/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="/js/jcarousel.basic.js"></script>

</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="bodyoutline">
        <tr>
            <td align="center" valign="top">
                <table width="900" border="0" cellpadding="0" cellspacing="10">
                    <tr>
                        <td colspan="2" align="center">

                            <table width="100%" border="0" cellspacing="0" cellpadding="0">

                                <!--
                				<tr align="center" valign="top" width="600">
                                    <span class="subtitle">Youth Cricket Coaching Year Around. Slots are filling up fast <a href="/offerings/coachinginfo.aspx">(Regsiter ASAP) Or Call 469-939-8329!!!</a> </span>
                                    <br />
                                    <span class="subtitle"><Strong>Indoor Cricket Academy Location: </Strong>Extra Innings Address 2300 Coit Road Suite 400, Plano, TX 75075 </span> <br />
                                    <br />
                                </tr>
                                -->
                                                				<tr align="center" valign="top" width="600">

  <td colspan="5">
              <span class="subtitle">Youth Cricket Coaching Year Around. Slots are filling up fast <a href="/offerings/coachinginfo.aspx">(Regsiter ASAP) Or Call 972-814-3921 Or 469-939-8329!!!</a> </span> <br />
	<span class="subtitle"><Strong>Indoor Cricket Academy Location: </Strong>
Regular Coaching: Tuesday, Thursday: 6:30pm to 8:30 pm at Russell Creek Park ( G3, G4 ) Sunday:  6:30pm to 8:30 pm at Horseshoe Park
</span> <br />
	<span class="subtitle">Questions??? Send an email to <a href="mailto:dyclmgmt@gmail.com">dyclmgmt@gmail.com</a></span>
                                   </td> 
                               </tr>

                                <tr align="center" valign="top" width="600">
                                    <td colspan="3">

                                            <div class="jcarousel-wrapper">
                                            <div class="jcarousel">
                                                <ul>
                                                    <li><img src="/Images/sponsors/Slide1.JPG" alt="" width="850px" height="300" ></li>
                                                    <li><img src="/Images/sponsors/Slide2.JPG" alt="" width="850px" height="300" ></li>
                                                    <li><img src="/Images/sponsors/SlideDYCL.JPG" alt="" width="850px" height="300" ></li>
                                                    <li><img src="/Images/sponsors/SlideDWCL.JPG" alt="" width="850px" height="300" ></li>
                                                    <li><img src="/Images/sponsors/Slide5.JPG" alt="" width="850px" height="300" ></li>
                                                    <li><img src="/Images/sponsors/SlideChauka.JPG" alt="" width="850px" height="300" ></li>
                                                </ul>
                                            </div>

                                            <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                                            <a href="#" class="jcarousel-control-next">&rsaquo;</a>
                
                                            <p class="jcarousel-pagination"></p>
                                    </div>

                                    </td>
                                </tr>

                                <tr align="center" valign="top" width="600">
                                    <td >
                                        <a href="/offerings/coachinginfo.aspx"><img src="/Images/sponsors/coachingIcon.jpg" width="279" height="128" /></a>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;
                                        <a href="/offerings/lanerentals.aspx"><img src="/Images/sponsors/lanerentals.jpg"  width="279" height="128" /></a>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;
                                        <a href="/tournament/paymentMisc.aspx"><img src="/Images/sponsors/payments.jpg"  width="279" height="128" /></a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table width="900" height="225" border="0" cellpadding="0" cellspacing="10">
                    <tr>
                        <td align="left" valign="top" >
                            <table width="100%" height=225 border="1" cellpadding="0" cellspacing="0">
                                <tr align="left" valign="top" width="600">
                                    <td>
                                        <a href="/Main/Announcements.aspx"><span class="title2">Announcements</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="100%" class="" valign="top">
                                        <table id="1" border="0" cellpadding="10" cellspacing="1" width="100%">
                                            <tr>
                                                <td class="txt">
                                                <!--
                                                    <asp:Panel ID="ImgScroller" runat="server" Height="250px" Width="100%" ScrollBars=Auto >
                                                        <asp:Label ID="lblAnnouncement" runat="server"></asp:Label>
                                                    </asp:Panel>
                                                -->
                                                    <asp:DataGrid ID="dgrid_announcements" runat="server" CssClass="" AllowCustomPaging="false"
                                                        AllowPaging="false" AllowSorting="false" EnableViewState="False" Width="100%"
                                                        ShowFooter="False" ShowHeader="false" AutoGenerateColumns="False" CellPadding="0"
                                                        CellSpacing="0" GridLines="None" BorderStyle="None">
                                                        <AlternatingItemStyle CssClass="gridHomeRow2"></AlternatingItemStyle>
                                                        <ItemStyle CssClass="gridHomeRow1" ></ItemStyle>
                                                        <Columns>
                                                            <asp:BoundColumn DataField="created_dt" HeaderText="" DataFormatString="{0:MMM d, yyyy}">
                                                                <ItemStyle HorizontalAlign="left" Width="20%" CssClass="gridHomeCellData">
                                                                </ItemStyle>
                                                            </asp:BoundColumn>
                                                            <asp:HyperLinkColumn DataTextField="title"  DataNavigateUrlField="ID" DataNavigateUrlFormatString="/Main/Announcements.aspx?AnnouncementID={0}">
                                                                <ItemStyle HorizontalAlign="left" Width="80%" CssClass="gridHomeCellData">
                                                                </ItemStyle>
                                                            </asp:HyperLinkColumn>
                                                            <asp:BoundColumn DataField="ID" HeaderText="" Visible="false" >
                                                                <ItemStyle HorizontalAlign="left" Width="0%" CssClass="gridHomeCellData">
                                                                </ItemStyle>
                                                            </asp:BoundColumn>
                                                        </Columns>
                                                     </asp:DataGrid>
                                                     <!--
                                                    <table width=100%><tr><td width="100%" align="right"><a href="/Main/Announcements.aspx">more</a></td></tr></table>
                                                    -->
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="310" align="left" valign="top" bgcolor="#FFFFFF">
                            <table width="100%" height=225 border="1" cellpadding="0" cellspacing="0" >
                                <tr>
                                    <td align="center" valign="middle" class="">
                                        <a href="/Main/Tournaments.aspx"><span class="title2">Tournaments</span></a>
                                        <br />

                                        <table id="Table1" border="0" cellpadding="10" cellspacing="1" width="100%">
                                            <tr>
                                                <td class="" align="center">
                                        <asp:DataGrid ID="dgrid_tournaments" runat="server" CssClass="" AllowCustomPaging="false"
                                            AllowPaging="false" AllowSorting="false" EnableViewState="False" Width="100%"
                                            ShowFooter="False" ShowHeader="false" AutoGenerateColumns="False" CellPadding="0"
                                            CellSpacing="0" GridLines="None" BorderStyle="None" 
                                                        onitemdatabound="dgrid_tournaments_ItemDataBound">
                                            <AlternatingItemStyle CssClass="gridRow2" ></AlternatingItemStyle>
                                            <ItemStyle CssClass="gridRow1" ></ItemStyle>
                                            <Columns>
                                                <asp:BoundColumn DataField="tournament_id" HeaderText="TournamentId" Visible="false">
                                                    <HeaderStyle CssClass="rtColHeader2"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Right" Width="0%" CssClass="rtCellDataRight"></ItemStyle>
                                                </asp:BoundColumn>
                                                <asp:HyperLinkColumn  DataTextField="name" DataNavigateUrlField="tournament_id" DataNavigateUrlFormatString="/Tournament/default.aspx?TournamentID={0}">
                                                    <ItemStyle HorizontalAlign="center" Width="100%" CssClass="gridCellData" >
                                                    </ItemStyle>
                                                </asp:HyperLinkColumn>
                                                <asp:BoundColumn DataField="current" HeaderText="" Visible="false">
                                                    <HeaderStyle CssClass="rtColHeader2"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Right" Width="0%" CssClass="rtCellDataRight"></ItemStyle>
                                                </asp:BoundColumn>
                                            </Columns>
                                         </asp:DataGrid>
                                         <!--
                                        <table width=100%><tr><td width="100%" align="right"><a href="/Main/Tournaments.aspx">more</a></td></tr></table>
                                        -->
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td align="center" valign="top">

                <br />
                            <span class="infoData2" style="color:Navy">
                            Questions??? Send an email to <a href="mailto:dyclmgmt@gmail.com"><font color="green">dyclmgmt@gmail.com</font></a> 
                            <br />
                                (DYCL Parents/Teams Please add this Email address to your Email contacts)
                                 <br />
                            </span>
                <br />

<!-- 
               <table width="900" border="1" align="center" cellpadding="0" cellspacing="10">
                   <tr>
                        <td align="left" valign="top">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr align="center" valign="top" width="600">
                                    <td>
                                        <a href="/offerings/coachinginfo.aspx"><img src="/Images/sponsors/coachingIcon.jpg" /></a>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;
                                        <a href="/offerings/lanerentals.aspx"><img src="/Images/sponsors/lanerentals.jpg" /></a>
                                    </td>
                                </tr>
                            </table> 
                        </td>
                        <td width="307" align="left" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr align="left" valign="top" width="600">
                                    <td>
                                        <span class="title2">Sponsors</span>
                                    </td>
                                </tr>
                                <tr>
                                     <td align="left" valign="top">
                                        <a href ="<img src=/Images/sponsors/ICAFlyer1.jpg>" </a> 
    						            <img  src="/Images/sponsors/BombayChopstix.jpg"  /> --%>
                                    </td>
                                    <td align="center" valign="middle">
                                        <img src="/Images/sponsors/IndiaBazaar.jpg"  />
                                    </td>
                                </tr>
                            </table>
                         </td>
                    </tr>
                </table>
-->
                        </td>
                    </tr>
                </table>

            </td>
        </tr>


        </table>
    
</asp:Content>
