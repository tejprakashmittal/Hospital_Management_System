<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_User.master" AutoEventWireup="true" CodeFile="frmMain.aspx.cs" Inherits="frmMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="StyleSheet/style.css" />
    <link rel="stylesheet" href="StyleSheet/jquery.fancybox.css" />
    <link rel="stylesheet" href="StyleSheet/style1.css" />
    <link rel="stylesheet" href="StyleSheet/responsiveslides.css" />
    <style>
         h1
        {
           color:#007EAE;
           font-size:26px;
           text-align:justify;
           text-transform:capitalize;
           text-shadow:-1px 1px 3px black;
           font-weight:normal;
           font-family:'Julius Sans One';
           padding-top:10px;
        }
         h3
         {
             font-family: 'Amble';
	        color: green;
	        font-size: 2em;
	        margin-top: 0.8em;
         }
        .login
        {
            margin-top:20px;
        }
        .sign
        {
            margin-top:20px;
        }
        .mainservice
        {
            width:90%;
            background-color:white;
            margin-top:-12px;
            margin-left:80px;
        }
        .frmmain
        {
            width:1210px;
            height:10.03in;
            background-color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <div class="frmmain"><embed src="Media/Welcome Tone.mp3" autostart="true" loop="true" width="0" height="0" />
        <div class="mainservice"><div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/timer.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3>24x7 Servives</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
								<a class="grid-button" href="#">Read More</a>
								<div class="clear"> </div>
						</div>
						<div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/tool.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3 style="text-transform:inherit">CARE ADVICES</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
								<a class="grid-button" href="#">Read More</a>
								<div class="clear"> </div>
						</div>
						<div class="content-top-grid">
							<div class="content-top-grid-header">
								<div class="content-top-grid-pic">
									<a href="#"><img src="images/inject.png" title="image-name" /></a>
								</div>
								<div class="content-top-grid-title">
									<h3>EMERGENCY</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
								<a class="grid-button" href="#">Read More</a>
								<div class="clear"> </div>
						</div>
						<div class="clear"> </div>
					</div>
      <div class="content">
	<div class="wrp">
			<div class="content-top">
				<div class="col_1_of_3 span_1_of_3">
					<span class="image">
						<img src="images/pic.jpg" alt=""/>
					</span>
					<h3>Home Health Care</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#"><span class="italic">Read More</span></a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<span class="image">
						<img src="images/pic1.jpg" alt=""/>
					</span>
					<h3>Pediatric Care</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#"><span class="italic">Read More</span></a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<span class="image">
						<img src="images/pic2.jpg" alt=""/>
					</span>
					<h3>Services</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#"><span class="italic">Read More</span></a>
				</div>
				<div class="clear"></div>
			</div>
        <div class="content-bottom">
				<div class="cont span_2_of_3">
				       <h3>Our Mission</h3>
					   	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  <a href="#"><span class="italic">Read More</span></a></p>
				</div>
				<div class="rsidebar span_1_of_3">
				      <h3>Testimonials</h3>
					  <div class="testimonials">
					  	<div class="testi-item">
					  		<blockquote class="testi-item_blockquote">
						  		<figure class="featured-thumbnail">
						  			<img src="images/testi1.png" alt=""/>
						  		</figure>
						  		</blockquote>
						  	<p class="para">
						  		<a href="#">
						  			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.... 
						  		</a>
						  	</p>
					  		<div class="clear"></div>
					  	</div>
					 </div>
				</div>
				<div class="clear"></div>
		    </div>
		</div>
</div>
    </div>
</asp:Content>

