<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        div.main
        {
            width:1150px;
            height:8in;
            background-color:#ffffff;
            border-radius:5px;
            margin-top:.25in;
            margin-bottom:.2in;
        }
        div.doc
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
            background:url(Images\\Doctors.png) left no-repeat;
        }
        div.plus
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
            background:url(images\\patient.png) left no-repeat;
        }
        div.ward
        {
          width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px; 
        }
        div.pharmacy
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
            background:url(images\\pharmacy1.png) left no-repeat;
        }
        div.billing
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
            background:url(images\\billing.png) left no-repeat;
        }
        div.IPD
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
            background:url(images\\ipd1.png) left no-repeat;
        }
        div.opd
        {
            width:166px;
            height:90px;
            border:inset;
            -webkit-box-shadow:3px 3px 3px 8px #eae9e9;
            box-shadow:0px 0px 0px 8px #eae9e9;
            box-sizing:padding-box;
            text-align:right;
            border-radius:5px;
        }
        a
        {
            font-family:Yanone Kaffeesatz;
            font-size:18px;
            text-decoration:none;
            background: transparent url(../img/h1.png) no-repeat center left;
            padding-right:14px;
        }
        a:hover
        {
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main"><embed src="Media/Welcome Tone.mp3" autostart="true" loop="true" width="0" height="0" />
    <br /><br />
        <table style="height: 400px; width: 416px">
        <tr><td><div class="doc"><br /><br /><a href="frmDoctorRegistration.aspx">Doctors</a></div></td><td><div class="plus"><br /><br /><a href="#">Patients</a></div></td></tr><br />
            <tr><td><div class="pharmacy"><br /><a href="#">Pharmacy &<br /> Inventory</a></div></td><td><div class="billing"><br /><br /><a href="#">Billing Wizard</a></div></td></tr>
            <tr><td><div class="IPD"><br /><a href="#">In-Patient<br />Department</a></div></td><td><div class="opd"><br /><a href="#">Out-Patient Department</a></div></td></tr>
            </table>
    </div>
</asp:Content>

