<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
Inherits="DolcePeccato.WEBUI.WebSitePages.Default" 
MasterPageFile="~/WebSitePages/Templates/master.Master"%>


<asp:Content ID="Content1" ContentPlaceHolderID="doctitle" runat="server">
    <title>Dolce Peccato - Chocolates Artesanais</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<!-- Slides jQuery plugin -->
<script type="text/javascript" src="js/slides.min.jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        // Set starting slide to 1
        var startSlide = 1;
        // Initialize Slides
        $('#slides').slides({
            preload: true,
            preloadImage: 'img/loading.gif',
            generatePagination: true,
            play: 5000,
            pause: 2500,
            hoverPause: true,
            crossfade: true,
            effect: 'slide, fade',
            // Get the starting slide
            start: startSlide,
            animationStart: function () {
                $('#slides .right').hide();
            },
            animationComplete: function (current) {
                // Set the slide number as a hash
                $('#slides .right').fadeIn('slow');
                $('#slides .next').fadeIn('slow');
                $('#slides .prev').fadeIn('slow');
            }
        });
        $('#slides .prev').click(function () {
            $(this).hide();
            $('#slides .next').hide();
        });
        $('#slides .next').click(function () {
            $(this).hide();
            $('#slides .prev').hide();
        })
        $('#slides .pagination li a').click(function () {
            $('#slides .prev').hide();
            $('#slides .next').hide();
        });
    });
</script>


</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
	<div id="slides">
				<div class="slides_container">
					<div class="slide">
                    	<div class="left">
                            <div class="page-image">
                                <img src="img/slide1.jpg"/>
                            </div>
                            <div class="img-shadow"></div>
                        </div>
                        <div class="right">
                            <p class="page-title">Suspendisse vitae mauris varius convallis</p>
                            <div class="slide-text">
                                <p><b>Ingredientes:</b></p>
                                <p>Donec non sapien sit amet turpis blandit feugiat. Etiam sit amet nunc est sagittis condimentum. Etiam laoreet nisi erat bibendum fermentum. Nulla vitae sapien vel turpis egestas lobortis.</p>
                            </div>
                            <div class="price-slide">
                                <span class="currency">R$ </span>
                                <span class="value">39</span>
                                <span class="cents">,90</span>
                            </div>
                            <a class="bt-yellow-big" href="#">Comprar</a>
                            <a class="bt-more-big" href="#">Mais Produtos</a>
                        </div>
					</div>
					<div class="slide">
						<div class="left">
                            <div class="page-image">
                                <img src="img/slide2.jpg"/>
                            </div>
                            <div class="img-shadow"></div>
                        </div>
						<div class="right">
                            <p class="page-title">Suspendisse vitae mauris varius convallis</p>
                            <div class="slide-text">
                                <p><b>Ingredientes:</b></p>
                                <p>Donec non sapien sit amet turpis blandit feugiat. Etiam sit amet nunc est sagittis condimentum. Etiam laoreet nisi erat bibendum fermentum. Nulla vitae sapien vel turpis egestas lobortis.</p>
                            </div>
                            <div class="price-slide">
                                <span class="currency">R$ </span>
                                <span class="value">39</span>
                                <span class="cents">,90</span>
                            </div>
                            <a class="bt-yellow-big" href="#">Comprar</a>
                            <a class="bt-more-big" href="#">Mais Produtos</a>
                        </div>
					</div>
				</div>
				<a href="#" class="prev"></a>
				<a href="#" class="next"></a>
			</div>

</asp:Content>

