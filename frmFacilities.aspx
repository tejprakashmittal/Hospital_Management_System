<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_User.master" AutoEventWireup="true" CodeFile="frmFacilities.aspx.cs" Inherits="frmFacilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        div.facilities
        {
            background-color:white;
            width:1210px;
            height:8.03in;
            padding-top:10px;
        }
        h3
        {
            font-weight: 200;
            color: #888888;
            font-size: 16pt;
            padding-left: 33px;
            margin: 7px 5px 8px 8px;
            font-style:italic;
            text-align:left;
        }
        h4
        {
            font-weight: 200;
            color: #d72424;
            font-size: 14pt;
            padding-left: 33px;
            margin: 7px 5px 8px 8px;
            font-style:italic;
            text-align:left;
        }
        div.left
        {
            float:left;
            width:50%;
            height:7in;
            background-color:#F6F6F6;
        }
        div.middle1
        {
            float:right;
            width:25%;
            height:7in;
            text-align:left;
            padding-left:30px;
            font-family:Cambria,sans-serif;
        }
        div.right
        {
            float:right;
            width:20%;
            height:7in;
        }
        p
        {
            padding-left:40px;
            text-align:left;
            font-size: 0.875em;
	        line-height: 1.5em;
	        color: #777;
	        font-family: 'Open Sans', sans-serif;
	        width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="facilities">
        <h3>Convenience & Facillities</h3>
        <div class="left">
            <h4>24 Hours Chemist Shop</h4>
            <p>All your medicine needs are taken care of at our day and night chemist shop. Right from rare
drugs to surgical material, this shop stocks them all. Stringent quality controls ensure that
medicines at the shop are completely updated and are of the highest quality.</p><br />
            <h4>Ambulance Service</h4>
            <p>State-of the-art Ambulances at the hospital, equipped to handle most complex emergencies are
available to our patients 24 hrs of the day and night. These ambulances carry, as standard
equipment, a ventilator, a Defibrillator, Oxygen and all the other life saving drugs. Staff manning
these ambulances is well trained in managing emergencies in their respective fields.</p><br />
            <h4>ATM</h4>
            <p>Make your financial transaction worries a thing of the past.</p><br />
            <h4>Cafeteria</h4>
            <p>From delicious Breakfasts and Lunches to mouth- watering snacks and Dinners wide choice
awaits the gourment at this Cafeteria. This cafeteria is well supported by the Diet Kitchen in the
Hospital, which also servies the need of all the patients in the house, serving them healthy
vegetarian food.</p><br />
            <h4>Patient coordinator for the Critical Care Units.</h4>
            <p>A vital link between the relatives of the critically ill patients in an ICU and the spital, this person is able to provide you with current
and updated information on your loved ones who are getting well with us.</p>
        </div>
        <div class="middle1"><h4>Our Specialities</h4>Dept. of Anesthesia<br />
Dept. of Cardiology<br />
Dept. of Chest<br />
Dept. of Critical Care<br />
Dept. of ENT<br />
Dept. of Endocrinology<br />
Dept. of Gynaecology<br />
Dept. of Gastroenterology<br />
Dept. of Gen. & Minimal Access Sur.<br />
Dept. of Medicine<br />
Dept. of Neuro Surgery<br />
Dept. of Nephrology<br />
Dept. of Neurology<br />
Dept. of Oral & Maxillofacial Surgery<br />
Dept. of Orthopedics<br />
Dept. of Ophthalmology<br />
Dept. of Oncology<br />
Dept. of Plastic Surgery<br />
Dept. of Pediatric & Neonatology<br />
Dept. of Skin & Laser Surgery<br />
Dept. of Urology<br />
Allied Services</div>
        <div class="right"><img src="Images/Ambulance.jpg" height="70" width="100" /></div>
    </div>
</asp:Content>

