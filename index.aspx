<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="photoweb2.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside id="colorlib-hero">
           <div class="container-fluid">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/cover4.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1">Creative Photography</h1>
					   					<h2 class="head-2">Photo Collection</h2>
					   					
					   					<p class="category"><span>Creative Photography... Click your happy time and store it...</span></p>
					   					<p><a href="#" class="btn btn-primary"> just click </a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/BW_2.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1" >Emotions and Happiness</h1>
					   					<h2 class="head-2">Photo Collection</h2>
					   					<p class="category"><span>Creative Photography... Click your happy time and store it...</span></p>
					   					
					   					<p><a href="#" class="btn btn-primary">just click</a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/gal-5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-sm-6 offset-sm-3 text-center slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
					   					<h1 class="head-1">Unique Moments</h1>
					   					<h2 class="head-2">Photo Collection</h2>
					   					<p class="category"><span>Creative Photography... Click your happy time and store it...</span></p>
					   					
					   					<p><a href="#" class="btn btn-primary">just click</a></p>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
            </div>
		</aside>
		<div class="colorlib-intro">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						<h1 class=" head-1">We're Creative photography a small and enthusiastic photography studio based in Gargoti.
                                       We love photography and travel for meeting new beautiful people all over the world.  </h2>
					</div>
				</div>
			</div>
		</div>
        <div class="container">
		<div class="colorlib-product">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-6 text-center">
						<div class="featured">
							<a href="#" class="featured-img " style="background-image: url(images/Cover1.jpg);"></a>
							<div class="desc">
								<h2>Click</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-6 text-center">
						<div class="featured">
							<a href="#" class="featured-img  " style="background-image: url(images/studio.jpg);"></a>
							<div class="desc">
								<h2>Place</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
          

</asp:Content>
