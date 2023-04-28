﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recipes_add.aspx.cs" Inherits="Medirecipe.recipes_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>ADD RECIPE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link href='https://unpkg.com/css.gg@2.0.0/icons/css/unsplash.css' rel='stylesheet'/>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src="js/token.js"></script>
    <script src="js/InsertForm.js"></script>

     <link rel="stylesheet" href="css/signup.css"/>
    <link rel="stylesheet" href="css/InsertForm.css"/>
    <style>
        html, body, h1, h2, h3, h4, h5 {
            font-family: "Raleway", sans-serif
        }
    </style>

</head>
<body>
   
    <div class="alert-box">
        <img src="img/error.png" class="alert-img" alt=""/>
        <p class="alert-msg"></p>
    </div>
    

    <!-- Top container -->
    <div class="w3-bar w3-top w3-large w3-white" style="z-index:4">
        <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-black" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
        <span class="w3-bar-item w3-right">MediRecipe</span>
    </div>
    
    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar">
        <br/>
        <div class="w3-container w3-row">
            <div class="w3-col s4">
                <img src="image/logouser.png" class="w3-circle w3-margin-right" style="width:46px"/>
            </div>
            <div class="w3-col s8 w3-bar">
                <span>Welcome, <strong>Admin</strong></span><br />
                <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
                <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
            </div>
        </div>
        <hr/>
        <div class="w3-container">
            <h5>Dashboard</h5>
        </div>
        <div class="w3-bar-block">
            <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
            <a href="homepage.aspx" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i> Dashboard</a>
            
            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-comment fa-fw"></i>  Manage feedbacks</a>

            <a onclick="myRecipe()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn1">
              <div class="w3-bar-item w3-button w3-padding w3-blue"> <i class="fa fa-bookmark fa-fw"></i>Recipe <i class="fa fa-caret-down"></i></div>
            </a>
            <div id="recipe" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">view Recipe</a>
                <a href="recipes.add" class="w3-bar-item w3-button, w3-bar-item w3-button w3-padding w3-blue">Add Recipe</a>
                <a href="#" class="w3-bar-item w3-button">Edit Recipes</a>
            </div>

            <a onclick="myUser()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
               <i class="fa fa-users fa-fw"></i> Users <i class="fa fa-caret-down"></i>
            </a>
            <div id="user" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Users</a>
            </div>

             <a onclick="myCategory()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn6">
               <i class="fas fa-clone fa-fw"></i> Category <i class="fa fa-caret-down"></i>
            </a>
            <div id="category" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Category</a>
                <a href="category_add.aspx" class="w3-bar-item w3-button">Add Category</a>
                <a href="#" class="w3-bar-item w3-button">Alter Category</a>
            </div>

            <a onclick="myProduct()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn3">
               <i class="fa fa-bullseye fa-fw"></i> Product <i class="fa fa-caret-down"></i>
            </a>
            <div id="product" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button" > View Product</a>
                <a href="product_add.aspx" class="w3-bar-item w3-button">Add Product</a>
                <a href="#" class="w3-bar-item w3-button">Edit Products</a>
            </div>
            
            <a onclick="myOrder()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn4">
               <i class="fas fa-chalkboard"></i> Orders <i class="fa fa-caret-down"></i>
            </a>
            <div id="order" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Orders</a>
                <a href="#" class="w3-bar-item w3-button">Orders details</a>
            </div>

            <a onclick="myShipper()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn5">
               <i class="fa fa-bank fa-fw"></i> Shippers <i class="fa fa-caret-down"></i>
            </a>
            <div id="shipper" class="w3-bar-block w3-hide w3-padding-large w3-medium">
   
                <a href="#" class="w3-bar-item w3-button">View Shippers</a>
                <a href="#" class="w3-bar-item w3-button">Add Shipper</a>
                <a href="#" class="w3-bar-item w3-button">Edit/Remove Shipper</a>
            </div>

            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cog fa-fw"></i>  Settings</a><br/><br />
        </div>
    </nav>


    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
    
    <!--cards -->
    <div class="w3-main" style="margin-left:300px;margin-top:43px;">

        <!-- Header -->
        <header class="w3-container" style="padding-top:22px">
            <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-padding-16" style="box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);">
                    <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Feedbacks</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16"  style="box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);">
                    <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Views</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16"  style="box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);">
                    <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>0</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>sales</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16"  style="box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>2</h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Users</h4>
                </div>
            </div>
        </div>
    </div>
    <!-- !PAGE CONTENT! -->

    <div class="w3-main" style="margin-left:350px;margin-right:100px;text-align: center">
        <form class="formbody" runat="server">
        <!-- Header -->

        <header class="w3-container" style="padding-top:22px">
            <h5><b>Recipe</b></h5>
        </header>

       <div class="form">
           
           <asp:TextBox ID="product_name" class="w3-border w3-padding"  runat="server" placeholder="recipe name"></asp:TextBox>   
            <br />
            <br/>
           <asp:TextBox ID="serving" runat="server" class="w3-border w3-padding" type="integer" placeholder="Servings" ></asp:TextBox>
             <br />
             <br/>
           <asp:TextBox ID="s_des" runat="server" class="w3-border w3-padding" placeholder="short line about the recipe(caption)" ></asp:TextBox>
             <br />
             <br/>
           <textarea id="ingredient" rows="2" class="w3-border w3-padding,tarea" placeholder="ingredient"></textarea>
           <br />
             <br/>
            <textarea id="l_des" rows="2" class="w3-border w3-padding,tarea" placeholder="detail description"></textarea>
           <br />
             <br/>
           
    <!-- recipe image -->
    <div class="product_info">
       
        <div class="product_image"><p class="text">recipe image</p></div>
        <div class="upload_image_sec">
            <!-- upload inputs -->
            <p class="text">
                <img src="img/camera.png" alt="" />upload image</p>
            <div class="upload_catalouge">
                <asp:FileUpload ID="first_file_upload_btn" type="file" class="fileupload" runat="server"/>
                <asp:Label  runat="server"  for="first-file-upload-btn" class="upload_image"></asp:Label>
                
                 <asp:FileUpload ID= "second_file_upload_btn" type="file" class="fileupload" runat="server"/>
                 <asp:Label runat="server"  for="second_file_upload_btn" class="upload_image"></asp:Label>
                
                  <asp:FileUpload ID= "third_file_upload_btn" type="file" class="fileupload" runat="server"/>
                 <asp:Label runat="server"  for="third_file_upload_btn" class="upload_image"></asp:Label>
                
                 <asp:FileUpload ID= "fourth_file_upload_btn" type="file" class="fileupload" runat="server"/>
               <asp:Label runat="server" for="fourth_file_upload_btn" class="upload_image"></asp:Label>
                
            </div>
        </div>
    </div>

    
    <div class="buttons">
        <button class="btn" id="add_btn">add product</button>
        
    </div>
    </div>
    </form>
            
            <p>Powered by  <a href="#" target="_blank">Medusind</a></p>
</div>
        <div class="w3-container">
         

        <!-- Footer -->

        <!-- End page content -->
    </div>

    <script>
        // Get the Sidebar
        var mySidebar = document.getElementById("mySidebar");

        // Get the DIV with overlay effect
        var overlayBg = document.getElementById("myOverlay");

        // Accordion 
        function myAccFunc() {
            var x = document.getElementById("demoAcc");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        function myRecipe() {
            var x = document.getElementById("recipe");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myUser() {
            var x = document.getElementById("user");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myCategory() {
            var x = document.getElementById("category");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myProduct() {
            var x = document.getElementById("product");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myOrder() {
            var x = document.getElementById("order");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        function myShipper() {
            var x = document.getElementById("shipper");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        // Click on the "Jeans" link on page load to open the accordion for demo purposes
        document.getElementById("myBtn").click();
        document.getElementById("myBtn1").click();
        document.getElementById("myBtn2").click();
        document.getElementById("myBtn3").click();
        document.getElementById("myBtn4").click();
        document.getElementById("myBtn5").click();
        document.getElementById("myBtn6").click();
        // Toggle between showing and hiding the sidebar, and add overlay effect
        function w3_open() {
            if (mySidebar.style.display === 'block') {
                mySidebar.style.display = 'none';
                overlayBg.style.display = "none";
            } else {
                mySidebar.style.display = 'block';
                overlayBg.style.display = "block";
            }
        }

        // Close the sidebar with the close button
        function w3_close() {
            mySidebar.style.display = "none";
            overlayBg.style.display = "none";
        }
    </script>

</body>
</html>


