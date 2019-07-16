<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_User.master" AutoEventWireup="true" CodeFile="frmSymptoms.aspx.cs" Inherits="frmSymptoms" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
        .loader {
                    text-align: center;
                }
        .loader span {
                    display: inline-block;
                    vertical-align: middle;
                    width: 10px;
                    height: 10px;
                    margin: 50px auto;
                    background: black;
                    border-radius: 50px;
                    -webkit-animation: loader 0.9s infinite alternate;
                    -moz-animation: loader 0.9s infinite alternate;
                    }
        .loader span:nth-of-type(2) {
                    -webkit-animation-delay: 0.3s;
                    -moz-animation-delay: 0.3s;
                    }
            .loader span:nth-of-type(3) {
                -webkit-animation-delay: 0.6s;
                -moz-animation-delay: 0.6s;
            }
                @-webkit-keyframes loader {
                0% {
                width: 10px;
                height: 10px;
                opacity: 0.9;
                -webkit-transform: translateY(0);
                }
                100% {
                width: 24px;
                height: 24px;
                opacity: 0.1;
                -webkit-transform: translateY(-21px);
                }
                }
                @-moz-keyframes loader {
                0% {
                width: 10px;
                height: 10px;
                opacity: 0.9;
                -moz-transform: translateY(0);
                }
                100% {
                width: 24px;
                height: 24px;
                opacity: 0.1;
                -moz-transform: translateY(-21px);
                }
                }
                .modalback
                {
                    background-color:black;
                    filter:alpha(opacity=90);
                    opacity:0.8;
                }
                .modalpopup
                {
                    background-color:#ffffff;
                    box-shadow:0px 0px 0px 8px rgba(0,0,0,0.3);
                    padding-top:10px;
                    padding-left:10px;
                    width:5in;
                    height:6in;
                }
                .completionListElement
                {
                visibility : hidden;
                margin : 0px! important;
                background-color : inherit;
                color : black;
                border : solid 1px gray;
                cursor : pointer;
                text-align : left;
                list-style-type : none;
                font-family : Verdana;
                font-size: 11px;
                padding : 0;
                }
                .listItem
                {
                background-color: white;
                padding : 1px;
                }
                .highlightedListItem
                {
                background-color: #c3ebf9;
                padding : 1px;
                }
                div.smpt
                {
                    background:url(Images/sethoscope.png) left top no-repeat;
                    background-size:120px 120px;
                    width:700px;
                    height:8in;
                    color:white;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><div>
        <br />
        <table>
        <tr><td><h2>Symptom Checker</h2></td><td><img src="Media/stethoscope-red-th.png"</td></tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb1"></asp:TextBox>
                <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" TargetControlID="TextBox1" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetNames" CompletionListCssClass="completionListElement" CompletionListHighlightedItemCssClass="highlightedListItem" CompletionListItemCssClass="listItem" >
                </ajaxToolkit:AutoCompleteExtender>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkText="Enter sour symptom">
                </ajaxToolkit:TextBoxWatermarkExtender>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Go" Height="33" OnClick="Button1_Click" CssClass="btn" ToolTip="Find causes and consultants" />
           </td></tr>
            <tr><td><br />
                <asp:LinkButton ID="btnShow" runat="server" CssClass="linkbutton" ToolTip="Click here to view a list of symptoms" >Give me symptoms to choose from >></asp:LinkButton>
                </td></tr>
         </table>
        <%--<div class="loader">
        <span></span>
            <span></span>
            <span></span>
            </div>--%>
        <br />
        <br /><ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel2" TargetControlID="btnShow" CancelControlID="btnClose" BackgroundCssClass="modalback"></ajaxToolkit:ModalPopupExtender>
        <asp:UpdatePanel ID="Panel2" runat="server" CssClass="modalpopup" Align="Center" ><ContentTemplate><font style="font-family:'Great Vibes',cursive" color="#9853a2" size="8">Find Symptom</font>
          <br /><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="SqlDataSource1" Height="400px" Width="300px"><FooterStyle BackColor="#999999" Font-Bold="true" ForeColor="White" /><HeaderStyle BackColor="#5d7b9d" Font-Bold="true" ForeColor="White" /><RowStyle BackColor="#FFFBD6" ForeColor="#333333" /><PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" /><SelectedRowStyle BackColor="#FFCC66" Font-Bold="true" ForeColor="Navy" /><AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="S.NO." ReadOnly="True" SortExpression="Sno" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Names="verdana" HeaderStyle-Height="40px" ItemStyle-Font-Names="arial" />
                    <asp:BoundField DataField="category" HeaderText="CATEGORY" SortExpression="category" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Names="verdana" ItemStyle-Font-Names="arial" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSconnection %>" SelectCommand="SELECT * FROM [symptom]"></asp:SqlDataSource>
            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div></center>
</asp:Content>

