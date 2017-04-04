<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Anifigures.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="welcome">

        <h1>Welcome to Anifigures!</h1>

            <p>A store dedicated to bringing you your beloved characters in figure form!</p>

    </div>

    <div class="products">

        <!-- Product 1 -->

            <div class="pro">
                <button class="po">Pre-order</button> 
                    <a href="/"><img src="/images/figures/nendo-arisa/1.jpg" alt="Nendoroid Arisa"/>
                       <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/524822.jpg?r=1489681239  -->

                    <p>Arisa Ichigaya - Nendoroid</p></a>
                    <div class="series">BanG Dream!</div> 
                    <div class="manufacturer">Good Smile Company</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$66.00</div>
             </div>

        <!-- Product 2 -->

            <div class="pro">
                <button class="po">Pre-order</button> 
                    <a href="/"><img src="/images/figures/alter-eli/1.jpg" alt="Café Maid Eli"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/317826.jpg?r=1484100996 -->

                    <p>Eli Ayase - Café Maid (1/8)</p></a>
                    <div class="series">Love Live!</div> 
                    <div class="manufacturer">Alter</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$290.00</div>
             </div>

        <!-- Product 3 -->

            <div class="pro">
                <button class="po">Pre-order</button> 
                    <a href="/"><img src="/images/figures/stronger-luka/1.jpg" alt="Hanairogoromo Luka"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/467223.jpg?r=1485914722 -->

                    <p>Megurine Luka - Hanairogoromo (1/8)</p></a>
                    <div class="series">VOCALOID</div> 
                    <div class="manufacturer">Stronger</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$240.00</div>
             </div>

        <!-- Product 4 -->

            <div class="pro">
                <button class="po">Pre-order</button> 
                    <a href="/"><img src="/images/figures/stronger-kaito/1.jpg"  alt="Hanairogoromo Kaito"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/394593.jpg?r=1472691336 -->

                    <p>KAITO - Hanairogoromo (1/8)</p></a>
                    <div class="series">VOCALOID</div> 
                    <div class="manufacturer">Stronger</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$205.00</div>
             </div>

        <!-- Product 5 -->

            <div class="pro">
                <button class="na">New Arrival</button> 
                    <a href="/"><img src="/images/figures/nendo-saitama/1.jpg"  alt="Nendoroid Saitama"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/330989.jpg?r=1469539186 -->

                    <p>Saitama - Nendoroid</p></a>
                    <div class="series">One Punch Man</div> 
                    <div class="manufacturer">Good Smile Company</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$55.00</div>
             </div>

        <!-- Product 6 -->

            <div class="pro">
                <button class="na">New Arrival</button> 
                    <a href="/"><img src="/images/figures/nendo-genos/1.jpg"  alt="Nendoroid Genos"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/370230.jpg?r=1481522675 -->

                    <p>Genos - Nendoroid</p></a>
                    <div class="series">One Punch Man</div> 
                    <div class="manufacturer">Good Smile Company</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$55.00</div>
             </div>

        <!-- Product 7 -->

            <div class="pro">
                <button class="is">In-Stock</button> 
                    <a href="/"><img src="/images/figures/stronger-nico/1.jpg"  alt="Birthday Figure Nico"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/285431.jpg?r=1489584129 -->

                    <p>Nico Yazawa - Birthday Figure (1/8)</p></a>
                    <div class="series">Love Live!</div> 
                    <div class="manufacturer">Stronger</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$125.00</div>
             </div>

        <!-- Product 8 -->

            <div class="pro">
                <button class="is">In-Stock</button> 
                    <a href="/"><img src="/images/figures/mf-mugi/1.jpg"  alt="Waitress Mugi"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/42037.jpg?r=1322839158 -->

                    <p>Tsumugi Kotobuki - Waitress Ver. (1/7)</p></a>
                    <div class="series">K-ON!</div> 
                    <div class="manufacturer">Max Factory</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$94.00</div>
             </div>

        <!-- Product 9 -->

            <div class="pro">
                <button class="is">In-Stock</button> 
                    <a href="/"><img src="/images/figures/alter-nozomi/1.jpg"  alt="Kung Fu Star Nozomi"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/317823.jpg?r=1469724309 -->

                    <p>Nozomi Toujou - Kung Fu Star (1/7)</p></a>
                    <div class="series">Love Live!</div> 
                    <div class="manufacturer">Alter</div>

                <button class="atc">Add to Cart</button>
                    <div class="price">$285.00</div>
            
             </div>

        <!-- Product 10 -->

            <div class="pro">
                <button class="oos">Out of Stock</button> 
                    <a href="/"><img src="/images/figures/mf-len/1.jpg"  alt="Tony Len"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/large/149558.jpg?r=1473064099 -->

                    <p>Kagamine Len - Tony Ver. (1/7)</p></a>
                    <div class="series">VOCALOID</div> 
                    <div class="manufacturer">Max Factory</div>

                <button class="bo">Request Backorder</button>
                    <div class="price">$110.00</div>
            
             </div>

        <!-- Product 11 -->

            <div class="pro">
                <button class="oos">Out of Stock</button> 
                    <a href="/"><img src="/images/figures/alter-mio/1.jpg"  alt="School Festival Live Costume Mio"/>
                        <!-- Image retrieved from http://s1.tsuki-board.net/pics/figure/big/27635.jpg?r=1322820990 -->

                    <p>Mio Akiyama - School Festival Live (1/8)</p></a>
                    <div class="series">K-ON!</div> 
                    <div class="manufacturer">Alter</div>

                <button class="bo">Request Backorder</button>
                    <div class="price">$80.00</div>
            
             </div>

        <!-- Product 12 -->

            <div class="pro">
                <button class="oos">Out of Stock</button> 
                    <a href="/"><img src="/images/figures/stronger-umi/1.jpg"  alt="Birthday Figure Umi"/>
                        <!-- Image retrieved from http://myfigurecollection.net/item/285428 -->

                    <p>Umi Sonoda - Birthday Figure (1/8)</p></a>
                    <div class="series">Love Live!</div> 
                    <div class="manufacturer">Stronger</div>

                <button class="bo">Request Backorder</button>
                    <div class="price">$120.00</div>
            
             </div>

    </div>

</asp:Content>
