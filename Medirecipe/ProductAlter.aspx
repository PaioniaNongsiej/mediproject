﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductAlter.aspx.cs" Inherits="Medirecipe.ProductAlter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>MediRecipe | Alter Product</title>
       
        
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico /">

        <!-- plugin css -->
        <link href="assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

        <!-- Layout Js -->
        <script src="assets/js/layout.js"></script>
        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css"  rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
      
      <link href="assets/css/app.min.css"  rel="stylesheet" type="text/css" />
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
     <script>
            //Image Upload Preview
            function ShowImagePreview(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#imagePreview').prop('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }

     </script>
    <style type="text/css">
        .auto-style1 {
            width: 565px
        }
        .auto-style2 {
            display: block;
            width: 100%;
            font-size: .875rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            border-radius: .25rem;
            -webkit-transition: none;
            transition: none;
            height: 57px;
            background-color: var(--bs-tertiary-bg);
        }
        .auto-style3 {
            width: 565px;
            height: 21px;
        }
    </style>
</head>
<body data-sidebar="colored">
    <form id="form1" runat="server">
        <!--#include file="sidepanel.html"-->
                    <!-- Sidebar -->
      <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        
                        

                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-md flex-shrink-0">
                                                <span class="avatar-title bg-subtle-primary text-primary rounded fs-2">
                                                <i class="fa-solid fa-carrot"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden ms-4">
                                                <p class="text-muted text-truncate font-size-15 mb-2"> Total Recipe</p>
                                                <h3 class="fs-4 flex-grow-1 mb-3"><asp:Label ID="total_recipe" runat="server"></asp:Label></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-md flex-shrink-0">
                                                <span class="avatar-title bg-subtle-primary text-primary rounded fs-2">
                                                    <i class="fa-solid fa-clipboard"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden ms-4">
                                                <p class="text-muted text-truncate font-size-15 mb-2"> Total Category</p>
                                                <h3 class="fs-4 flex-grow-1 mb-3"><asp:Label ID="total_category" runat="server"></asp:Label></h3>
                                            </div>
                     
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-md flex-shrink-0">
                                                <span class="avatar-title bg-subtle-primary text-primary rounded fs-2">
                                                    <i class="fa-brands fa-product-hunt"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden ms-4">
                                                <p class="text-muted text-truncate font-size-15 mb-2"> Total Products</p>
                                                <h3 class="fs-4 flex-grow-1 mb-3"><asp:Label ID="total_product" runat="server"></asp:Label></h3>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar-md flex-shrink-0">
                                                <span class="avatar-title bg-subtle-primary text-primary rounded fs-2">
                                                    <i class="fa-brands fa-jedi-order"></i>
                                                </span>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden ms-4">
                                                <p class="text-muted text-truncate font-size-15 mb-2"> Total Orders</p>
                                                <h3 class="fs-4 flex-grow-1 mb-3"><asp:Label ID="total_order" runat="server"></asp:Label></h3>
                                            </div>
                                         
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END ROW -->

                         <!-- FORM -->
                         <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Alter Product</h4>
                                        <p class="card-title-desc">
                                            <asp:TextBox ID="product_id" runat="server" ReadOnly="true"/>    
                                               </p>
                                            <div>
                                                <table>    
                                              
                                               <td class="auto-style3">    
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />    
                                                   <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                                               </td>    
                                              
                                                  <div class="row">
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label>Product Name</label>
                                                          <asp:TextBox ID="product_name"  class="form-control"  runat="server" placeholder="Product name..."></asp:TextBox>   
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <label>Caption</label>
                                                        <asp:TextBox ID="s_des" runat="server" class="form-control"  placeholder="short line about the product" ></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>  
                                       
                                                   <div class="mb-3">
                                                      <label>Product Description</label>
                                                     <asp:TextBox id="long_des" runat="server" class="form-control"  placeholder="detail description" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                              
                                                <p class="text">upload image</p>
                                                                <asp:Image ID="imagePreview" runat="server" CssClass="img-thumbnail" ImageUrl="~/images/default-avatar.png" Width="139px" Height="188px" />  
                                                                    <div class="custom-file">  
                                                                        <br/>
                                                                        <br/>
                                                                        <label class="custom-file-label">  
                                                                        <asp:FileUpload ID="first_file_upload_btn" runat="server" class="form-control"  onchange="ShowImagePreview(this);" />  
                                                                        </label>  
                                                                    </div>  
                                                               
                                                    <div class="upload_image_sec">
                                                <!-- upload inputs -->
                                               <%-- <div class="upload_catalouge">--%>
                                                    <div class="col-sm-3 col-md-3 col-xs-12">  
                                                                <div class="form-group"> 
                                                                </div>  
                                                            </div>  
                                                </div>  
                                           <div class="row">
                                                   <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label>Actual Price</label>
                        
                                                         <asp:TextBox ID="actual_price" class="form-control"  runat="server" type="number" placeholder="actual price"></asp:TextBox>   
                                                       
                                                    </div>
                                                 </div>
                                                <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label>Discount</label>
                                                       <asp:TextBox ID="discount" class="form-control"  runat="server" type="number" placeholder="discount percentage"></asp:TextBox>
                                                    </div>
                                                </div>

                                             <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label>Selling Price</label>
                                                        <asp:TextBox ID="sell_price" class="form-control" runat="server" type="number" placeholder="selling price"></asp:TextBox>
                                                    </div>
                                                </div>
                                              </div>
                                                   <div class="col-md-4">
                                                    <div class="mb-3">
                                                        <label>Stock</label>
                                                           <asp:TextBox ID="stock" runat="server" min="20" type="varchar" class="form-control"   placeholder="item in stocks (minimum 20)"></asp:TextBox>
                                                    </div>
                                                  </div>

                                                     <div class="col-md-4">
                                                        <div class="mb-3">
                                             
                                                               <asp:DropDownList ID="category_ID" class="form-select" runat="server">
                                               
                                                               </asp:DropDownList>
                                                        </div>
                                                      </div>
                                              
                                           <tr>    
                                               <td align="center" class="auto-style1">    
                                                    &nbsp;</td>    
                                               <td align="center">    
                                                   &nbsp;</td>    
                                           </tr>    
                                        </table>
                                            </div>
    </form>
     <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>

        <!-- Icon -->
        <script src="unicons.iconscout.com/release/v2.0.1/script/monochrome/bundle.js"></script>

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Vector map-->
        <script src="assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
        <script src="assets/libs/jsvectormap/maps/world-merc.js"></script>

        <script src="assets/js/pages/dashboard.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>
</body>
</html>