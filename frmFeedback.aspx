<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_User.master" AutoEventWireup="true" CodeFile="frmFeedback.aspx.cs" Inherits="frmFeedback" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <%--<script type="text/javascript">
          function pageLoad(sender, args) {
              if (!args.get_isPartialLoad()) {
                  $addHandler(document, "keydown", onKeyDown);
              }
          }
          function onKeyDown(e) {
              if (e && e.KeyCode == Sys.UI.Key.esc) {
                  $find('mdlPopupExtender1').hide();
              }
          }
    </script>--%>
    <style>
        .modalback
                {
                    background-color:black;
                    filter:alpha(opacity=90);
                    opacity:0.8;
                }
                .modalpopup
                {
                    background-color:#f8f8f8;
                    /*border:7px solid rgba(255,0,0,.5);*/
                    /*background-clip:padding-box;*/
                    box-shadow:0px 0px 0px 8px rgba(0,0,0,0.3);
                    /*border-style:outset;*/
                    /*border-color:black;*/
                    padding-top:10px;
                    padding-left:10px;
                    width:8.4in;
                    height:3.4in;
                }
                h3
                {
                    color:green;
                    font-family:sans-serif,'Helvetica';
                    font-weight:bold;
                    font-size:18px;
                    transform:rotate();
                }
                th.rotate
                {
                    height:140px;
                    white-space:nowrap;
                }
                th.rotate > div{
                    transform:translate(25px, 51px) rotate(315deg);
                    width:30px;
                }
                th.rotate > div > span{
                    border-bottom:1px solid #ccc;
                    padding:5px 10px;
                }
                hr
                {
                    display:block;
                    position:relative;
                    padding:0;
                    margin:8px auto;
                    height:0;
                    width:88%;
                    max-height:0;
                    font-size:1px;
                    line-height:0;
                    border-top:1px solid #aaaaaa;
                    border-bottom:1px solid #ffffff;
                }
                .linkbutton
                {
                    /*float:left;*/
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <center><br /><br />
    <h2>Patient Reg Id</h2>
    <table>
        <tr>
            <td><asp:TextBox ID="TextBox1" runat="server" CssClass="tb1" placeholder="Enter your ID"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Start Feedback" CssClass="btn" />
    <ajaxToolkit:ModalPopupExtender ID="mdlPopupExtender1" runat="server" BackgroundCssClass="modalback" TargetControlID="Button1" PopupControlID="Panel1" CancelControlID="Button2" OnLoad="mdlPopupExtender1_Load" ></ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ><ContentTemplate>
        <h3>Please give your feedback
            </h3><hr />
        <table width="700px">
            <tr style="background-color:#115172"><th style="color:white;font-family:Verdana">
                Q.<asp:Label ID="id" runat="server" OnLoad="id_Load" Text="1"></asp:Label>
                &nbsp;:
                <asp:Label ID="txtQuestion" runat="server" Text="Label" OnLoad="txtQuestion_Load"></asp:Label>
                </th></tr>
            <tr><td><asp:RadioButton ID="RadioButton1" GroupName="rad" runat="server" Text="Very Good" CssClass="radiobutton" /></td></tr>
            <tr><td><asp:RadioButton ID="RadioButton2" GroupName="rad" runat="server" Text="Good" CssClass="radiobutton"/></td></tr>
            <tr><td><asp:RadioButton ID="RadioButton3" GroupName="rad" runat="server" Text="Fair" CssClass="radiobutton" /></td></tr>
            <tr><td><asp:RadioButton ID="RadioButton4" GroupName="rad" runat="server" Text="Poor to Fair" CssClass="radiobutton" /></td></tr>
        </table>
        <hr />
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton" OnClick="LinkButton1_Click" >Previous</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkbutton" OnClick="LinkButton2_Click" >Next</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="linkbutton" Visible="False">Submit</asp:LinkButton>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Close" OnClick="Button2_Click" />
        </ContentTemplate>
            <%--<Triggers>
                <asp:AsyncPostBackTrigger ControlID="LinkButton2" EventName="Click" />
            </Triggers>--%>
        </asp:UpdatePanel>
    </asp:Panel>
    </center>
</asp:Content>

