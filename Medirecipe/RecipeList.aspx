﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecipeList.aspx.cs" Inherits="Medirecipe.RecipeList" EnableEventValidation = "false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>MediRecipe | Recipe List</title>
       
        
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
      
    <link href="css/CSS.css" rel="stylesheet" type="text/css" /> 
      <link href="assets/css/app.min.css"  rel="stylesheet" type="text/css" />
      
    <style type="text/css">
        .auto-style1 {
            height: 52px;
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
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <h4 class="card-title">Recipe List</h4>
                                         <asp:TextBox ID="txtSearch" runat="server" class="txtSearch"></asp:TextBox>
                                        <asp:Button Text="Search" runat="server" OnClick="Search" Width="77px"/>
                                        <asp:Button Text="Export" runat="server" OnClick="Export" Width="77px"/>
                                        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <div>
                                            <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="false" AllowPaging="True"
                                                OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="recipe_id" PageSize="3" OnPageIndexChanging="OnPaging"
                                                OnRowEditing="gvImage_RowEditing" OnRowDeleting="gvImage_RowDeleting"
                                                 OnRowCommand="GridView1_RowCommand" 
                                                EmptyDataText="No records has been added." CssClass="table table-bordered table-hover display nowrap margin-top-7 w-p80 table-responsive" Width="1020px">
                                                <Columns>
                                                   <asp:BoundField DataField="recipe_id" HeaderText="Product Id" /> 
                                                    <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("recipe_name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("recipe_name") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Servings" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblservings" runat="server" Text='<%# Eval("servings") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="servings" runat="server" Text='<%# Eval("servings") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                     <asp:TemplateField HeaderText="Ingredient" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblingredient" runat="server" Text='<%# Eval("ingredient") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="ingredient" runat="server" Text='<%# Eval("ingredient") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="caption" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblcaption" runat="server" Text='<%# Eval("short_des") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="s_des" runat="server" Text='<%# Eval("short_des") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                     <asp:TemplateField HeaderText="Description" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbldes" runat="server" Text='<%# Eval("long_des") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="long_des" runat="server" Text='<%# Eval("long_des") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>                           
                                                    <asp:TemplateField HeaderText="Recipe Image" HeaderStyle-Width="200px">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("first_img") %>'
                                                                Height="80px" Width="100px" />
                                                        </ItemTemplate>
                                                        <EditItemTemplate>
                                                            <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("first_img") %>'
                                                                Height="80px" Width="100px" /><br />
                                                        </EditItemTemplate>
                                                    </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="Action">  
                                                        <ItemTemplate>  
                                                            <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary btn-sm"  CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  runat="server"><span class="badge badge-pill badge-danger"/>Edit</asp:LinkButton>
                                                             <asp:LinkButton ID="LkB11" CssClass="btn btn-primary btn-sm"  CommandName="Delete"  runat="server"><span class="badge badge-pill badge-danger"/>Delete</asp:LinkButton>
                                                       <%--<asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>--%>
                                                        </ItemTemplate>  
                                                    </asp:TemplateField>  
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </table>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->
                     </div>
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © MediRecipe
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                
            </div>
    </form>

     <!-- Required datatable js -->
        <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
        <script src="assets/libs/jszip/jszip.min.js"></script>
        <script src="assets/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="assets/libs/pdfmake/build/vfs_fonts.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>

        <script src="assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <script src="assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
        
        <!-- Responsive examples -->
        <script src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

        <!-- Datatable init js -->
        <script src="assets/js/pages/datatables.init.js"></script>

        <script src="assets/js/app.js"></script>
</body>
</html>