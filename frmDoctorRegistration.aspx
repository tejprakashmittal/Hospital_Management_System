<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="frmDoctorRegistration.aspx.cs" Inherits="frmDoctorRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="font_icon_css/font-awesome.min.css"rel="stylesheet"type="text/css"/>
    <style>
        div.bod {
            color: #373C40;
            font-family: Verdana,Arial, Helvetica, sans-serif;
            width: 800px;
            margin: 20px auto 0px auto;
            height: 630px;
            background-color: rgb(241,241,241);
            padding: 5px;
            border-radius: 5px;
        }

        .tb {
            background-color: rgba(255, 255, 255, 0.4);
            border: 1px solid rgba(122, 192, 0, 0.15);
            padding: 7px;
            font-family: Keffeesatz, Arial;
            color: #4b4b4b;
            font-size: 14px; /*margin-bottom: 15px; margin-top: -10px;*/
            border-radius: 3px;
        }

            .tb:focus {
                border: 1px solid #ff5400;
                background-color: rgba(255, 255, 255, 1);
                border-radius: 3px;
            }

        .cmb {
            border-radius: 2px;
            box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
            border: 0px solid #FFF;
            color: #555;
            font-size: inherit;
            margin: 0;
            overflow: hidden;
            padding-top: 5px;
            padding-bottom: 5px;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .btn {
            background: #4b8df9;
            display: inline-block;
            padding: 5px 10px 6px;
            color: #fbf7f7;
            text-decoration: none;
            font-weight: bold;
            line-height: 1;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -moz-box-shadow: 0 1px 3px #999;
            -webkit-box-shadow: 0 1px 3px #999;
            box-shadow: 0 1px 3px #999;
            text-shadow: 0 -1px 1px #222;
            border: none;
            position: relative;
            cursor: pointer;
            font-size: 14px;
            font-family: Verdana, Geneva, sans-serif;
        }

            .btn:hover {
                background-color: #2a78f6;
            }

        table {
            border-collapse: collapse;
            width: 538px;
        }
        /*tr
        {
            vertical-align:bottom;
            padding: 7px 0 7px 0;
            font-weight: 500;
            font-size: 11pt;
        }*/
        h2 {
            font-weight: 200;
            color: #888888;
            font-size: 16pt;
            background: transparent url(../img/h1.png) no-repeat center left;
            padding-left: 33px;
            margin: 7px 5px 8px 8px;
        }

        h4 {
            padding: 1px;
            color: #ACACAC;
            font-size: 9pt;
            font-weight: 100;
            text-transform: uppercase;
        }

        .ddl {
            border: 1px solid #7d6754;
            border-radius: 3px;
            padding: 3px;
            -webkit-appearance: textarea;
            -moz-appearance: textfield-multiline;
            background-image: url('Images/Arrow.png');
            background-position: right;
            background-repeat: no-repeat;
            text-indent: 0.01px;
            text-overflow: ellipsis;
        }

        .auto-style2 {
            width: 261px;
            height: 36px;
        }

        .auto-style3 {
            height: 36px;
        }

        .auto-style5 {
            width: 261px;
        }

        .auto-style6 {
            width: 2in;
            height: 38px;
        }

        .auto-style7 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="bod">
    <h2>Doctor Registration</h2>
    <asp:Panel ID="Panel1" runat="server" GroupingText="Account Details" HorizontalAlign="Left" Width="571px" BorderColor="#CCFF99" Font-Bold="False">
    <table border="0">
        <tr><td>Name : </td><td><asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox></td></tr>
        <tr><td>Email : </td><td><asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td></tr>
        <tr><td>Password : </td><td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server" CssClass="tb" TextMode="Password"></asp:TextBox></td></tr>
        <tr><td>Confirm Password : </td><td class="auto-style7"><asp:TextBox ID="TextBox4" runat="server" CssClass="tb" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="*Password does not match" ForeColor="#CC0000" Font-Size="Smaller" Text="*"></asp:CompareValidator></td></tr>
        <tr><td>Mobile : </td><td><asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox></td></tr>
        <tr><td>Specialist : </td><td><asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox></td></tr>
        <tr><td>Qualification : </td><td><asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox></td></tr>
        <tr><td>City : </td><td><asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox></td></tr>
        <tr><td>State : </td><td><asp:DropDownList ID="DropDownList1" runat="server" Width="186px" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Verdana" CssClass="ddl" ViewStateMode="Disabled">
            <asp:ListItem Text="State">
            </asp:ListItem>
                                 <asp:ListItem>Uttar Pradesh</asp:ListItem>
            <asp:ListItem>Rajasthan</asp:ListItem>
            <asp:ListItem>New Delhi</asp:ListItem>
            <asp:ListItem>Bihar</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>West Bengal</asp:ListItem>
            <asp:ListItem>Madhya Pradesh</asp:ListItem>
            <asp:ListItem>Tamil Nadu</asp:ListItem>
            <asp:ListItem>Rajashthan</asp:ListItem>
            <asp:ListItem>Karnataka</asp:ListItem>
            <asp:ListItem>Gujarat</asp:ListItem>
            <asp:ListItem>Andhra Pradesh</asp:ListItem>
            <asp:ListItem>Odisha</asp:ListItem>
            <asp:ListItem>Kerala</asp:ListItem>
            <asp:ListItem>Jharkhand</asp:ListItem>
            <asp:ListItem>Assam</asp:ListItem>
            <asp:ListItem>Punjab</asp:ListItem>
            <asp:ListItem>Chhattisgarh</asp:ListItem>
            <asp:ListItem>Haryana</asp:ListItem>
            <asp:ListItem>Jammu & Kashmir</asp:ListItem>
            <asp:ListItem>Uttarrkhnad</asp:ListItem>
            <asp:ListItem>Himachal Pradesh</asp:ListItem>
            <asp:ListItem>Meghalaya</asp:ListItem>
            <asp:ListItem>Manipur</asp:ListItem>
            <asp:ListItem>Nagaland</asp:ListItem>
            <asp:ListItem>Goa</asp:ListItem>
            <asp:ListItem>Sikkim</asp:ListItem>
            <asp:ListItem>Chandigarh</asp:ListItem>
            <asp:ListItem>Mizoram</asp:ListItem>
                                 </asp:DropDownList>
        </td></tr>
        <tr><td class="auto-style5" rowspan="1" colspan="1" style="width: 2in">Upload Photo : </td><td><asp:FileUpload ID="FileUpload1" runat="server" style="margin:10px auto" /></td></tr>
        <tr><td><asp:Image ID="Image1" runat="server" Height="80px" Width="70px" /></td><td><asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click" /><br /> 
        <asp:Label ID="Label1" runat="server" Font-Size="Smaller"></asp:Label></td></tr>
      <tr><td><asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" style="margin:20px auto" /></td><td class="auto-style5" rowspan="1" colspan="1" style="width: 2in">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Size="Smaller" ForeColor="#CC0000" Width="2in" />
            </td></tr>
    </table>
        </asp:Panel>
   
        </div>
</asp:Content>

