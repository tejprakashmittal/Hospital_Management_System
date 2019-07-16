<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_User.master" AutoEventWireup="true" CodeFile="frmContact.aspx.cs" Inherits="frmContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    	<script  src="script/jquery-1.3.2.min.js"></script>
                <style>
                        @font-face {
	                        font-family: 'YanoneKaffeesatzRegular';
	                        src: url('yanonekaffeesatz-regular-webfont.eot');
	                        src: url('yanonekaffeesatz-regular-webfont.eot?#iefix') format('embedded-opentype'),
	                        url('yanonekaffeesatz-regular-webfont.woff') format('woff'),
	                        url('yanonekaffeesatz-regular-webfont.ttf') format('truetype'),
	                        url('yanonekaffeesatz-regular-webfont.svg#YanoneKaffeesatzRegular') format('svg');
	                        font-weight: normal;
	                        font-style: normal;
                        }

body {color: #7c7873; font-family: 'Yanone Kaffeesatz';}
                            p {text-shadow:0 1px 0 #fff; font-size:24px;text-align:left;}
                            #wrap {width:530px; height:847px;margin-top:-.5in;}
                            h3 {font-weight:bold;font-family: 'Yanone Kaffeesatz';margin-bottom:20px; text-align:center;font-size:48px; text-shadow:0 1px 0 #ede8d9; }


	#form_wrap { overflow:hidden; height:446px; position:relative; top:0px;
		-webkit-transition: all 1s ease-in-out .3s;
		-moz-transition: all 1s ease-in-out .3s;
		-o-transition: all 1s ease-in-out .3s;
		transition: all 1s ease-in-out .3s;
	}
	
	#form_wrap:before {content:"";
		position:absolute;
		bottom:128px;left:0px;
		background:url('images/before.png');
		width:530px;height: 316px;}
	
	#form_wrap:after {content:"";position:absolute;
		bottom:0px;left:0;
		background:url('images/after.png');
		width:530px;height: 260px; }

	#form_wrap.hide:after, #form_wrap.hide:before {display:none;}
	#form_wrap:hover {height:776px;top:-200px;}

    .form {background:#f7f2ec url('images/letter_bg.png'); 
		position:relative;top:200px;overflow:hidden;
		height:200px;width:400px;margin:0px auto;padding-left:20px;padding-right:20px; 
		border: 1px solid #fff;
		border-radius: 3px; 
		-moz-border-radius: 3px; -webkit-border-radius: 3px;
		box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 27px #fff;
		-moz-box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 14px #fff;
		-webkit-box-shadow: 0px 0px 3px #9d9d9d, inset 0px 0px 27px #fff;
		-webkit-transition: all 1s ease-in-out .3s;
		-moz-transition: all 1s ease-in-out .3s;
		-o-transition: all 1s ease-in-out .3s;
		transition: all 1s ease-in-out .3s;}


		#form_wrap:hover .form {height:530px;}

		.lbl {
			font-size: 16px; color: #b3aba1;
			text-transform: uppercase; 
			text-shadow: 0px 1px 0px #fff;
            float:left;
		}

		.TextBox, .textarea {
			font: 14px normal normal uppercase helvetica, arial, serif;
			color: #7c7873;background:none;
			width: 380px; height: 36px; padding: 0px 10px; margin: 0 0 10px 0;
			border:1px solid #f8f5f1;
			-moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
			-moz-box-shadow: inset 0px 0px 1px #726959;
			-webkit-box-shadow:  inset 0px 0px 1px #b3a895; 
			box-shadow:  inset 0px 0px 1px #b3a895;
		}	
        #counter
        {
            font: 14px normal normal uppercase helvetica, arial, serif;
			color: #7c7873;background:none;
			width: 25px; height: 25px; padding: 0px 10px; margin: 0 0 10px 0;
			border:1px solid #f8f5f1;
			-moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
			-moz-box-shadow: inset 0px 0px 1px #726959;
			-webkit-box-shadow:  inset 0px 0px 1px #b3a895; 
			box-shadow:  inset 0px 0px 1px #b3a895;
            float:right;
        }

		.textarea { height: 80px; padding-top:14px;}

		.textarea:focus, .TextBox:focus {background:rgba(255,255,255,.35);}

		
		#form_wrap .submit {
			position:relative;font-family: 'Yanone Kaffeesatz'; 
			font-size:24px; color: #7c7873;text-shadow:0 1px 0 #fff;
			width:100%; opacity:0;text-align:center;
			background:none;
			cursor: pointer;
			-moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; 
			-webkit-transition: opacity .6s ease-in-out 0s;
			-moz-transition: opacity .6s ease-in-out 0s;
			-o-transition: opacity .6s ease-in-out 0s;
			transition: opacity .6s ease-in-out 0s;
		}

		#form_wrap:hover .submit {z-index:1;opacity:1;
			-webkit-transition: opacity .5s ease-in-out 1.3s;
			-moz-transition: opacity .5s ease-in-out 1.3s;
			-o-transition: opacity .5s ease-in-out 1.3s;
			transition: opacity .5s ease-in-out 1.3s;}

			#form_wrap:hover .submit:hover {color:#435c70;}
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><div id="wrap">
		<h3>Send a message</h3>
		<div id='form_wrap'>
            <div class="form">
				<p>Hello ...,</p>
                <asp:Label ID="Label3" runat="server" Text="Your Message :" CssClass="lbl"></asp:Label>
                <input value="150" name="text_num" id="counter" disabled="disabled">
				<textarea maxlength="150"  name="message" id="message"  class="textarea" onkeyup="textCounter(this,'counter',150);"></textarea>
                <asp:Label ID="Label2" runat="server" Text="Name :" CssClass="lbl"></asp:Label>                
                <asp:TextBox ID="name" runat="server" CssClass="TextBox"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="Email :" CssClass="lbl"></asp:Label>
                <asp:TextBox ID="email" runat="server" CssClass="TextBox"></asp:TextBox>
<%--                <asp:Button ID="button1" runat="server" Text="Now, I send, thanks!" CssClass="submit" />--%>
                <asp:LinkButton ID="linkbutton1" runat="server" CssClass="submit" Font-Underline="false" >Now, I send, thanks!</asp:LinkButton>
<%--				<input type="submit" name ="submit" value="Now, I send, thanks!" />--%>
                </div>
		</div>
	</div></center>

</asp:Content>

