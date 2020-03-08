﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="connectDatabase.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advanced Database Coursework</title>
    <environment names="Development">
        <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.css" />
        <link rel="stylesheet" href="~/css/site.css" />
    </environment>
    <environment names="Staging,Production">
        <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.6/css/bootstrap.min.css"
              asp-fallback-href="~/lib/bootstrap/dist/css/bootstrap.min.css"
              asp-fallback-test-class="sr-only" asp-fallback-test-property="position" asp-fallback-test-value="absolute" />
        <link rel="stylesheet" href="~/css/site.min.css" asp-append-version="true" />
    </environment>
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- Custom styles for this template -->
    <link href="StyleSheet1.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <nav class="navbar navbar-inverse navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#" style="color: white">Advanced Database</a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">Dashboard</a></li>
                                <li><a href="#">Settings</a></li>
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-3 col-md-2 sidebar">
                            <ul class="nav nav-sidebar">
                                 <li><a href="Staff.aspx">Staff</a></li>
                                <li class="active"><a href="#">Customers</a></li>
                                <li><a href="Designation.aspx">Designation</a></li>
                                <li><a href="Package.aspx">Packages</a></li>
                                <li><a href="Tour_Guide.aspx">Tour Guides</a></li>
                            </ul>
                         
                            <ul class="nav nav-sidebar">
                                <li><a href="TourDetails.aspx">Tour Details</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                            <button class=" btn btn-success" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                Add Details
                            </button>
                            <hr />
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="imputName">
                                            Name</label>
                                            <input id="inputName" class="form-control" type="text" placeholder="Ram Khadka"> </input></div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPhone">
                                            Phone</label>
                                            <input id="inputPhone" class="form-control" type="text" placeholder="123456789"> </input></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">
                                        Address</label>
                                        <input id="inputAddress" class="form-control" placeholder="Bhaktapur" type="text"> </input></div>
                                    <button class="btn btn-primary" type="submit">
                                        Submit
                                    </button>
                                    <hr />
                                </div>
                            </div>


                            <h1 class="page-header">Customer Table Details</h1>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="CUSTOMER_ID" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" ReadOnly="True" />
                                    <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
                                    <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                                    <asp:BoundField DataField="CUSTOMER_PHONE" HeaderText="CUSTOMER_PHONE" SortExpression="CUSTOMER_PHONE" />
                                    
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
            </asp:Panel>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=sulav;Password=sulav;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMER_ID&quot; = :original_CUSTOMER_ID AND &quot;CUSTOMER_NAME&quot; = :original_CUSTOMER_NAME AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;CUSTOMER_PHONE&quot; = :original_CUSTOMER_PHONE" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMER_ID&quot;, &quot;CUSTOMER_NAME&quot;, &quot;CUSTOMER_ADDRESS&quot;, &quot;CUSTOMER_PHONE&quot;) VALUES (:CUSTOMER_ID, :CUSTOMER_NAME, :CUSTOMER_ADDRESS, :CUSTOMER_PHONE)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUSTOMER_NAME&quot; = :CUSTOMER_NAME, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS, &quot;CUSTOMER_PHONE&quot; = :CUSTOMER_PHONE WHERE &quot;CUSTOMER_ID&quot; = :original_CUSTOMER_ID AND &quot;CUSTOMER_NAME&quot; = :original_CUSTOMER_NAME AND &quot;CUSTOMER_ADDRESS&quot; = :original_CUSTOMER_ADDRESS AND &quot;CUSTOMER_PHONE&quot; = :original_CUSTOMER_PHONE">
            <DeleteParameters>
                <asp:Parameter Name="original_CUSTOMER_ID" Type="Decimal" />
                <asp:Parameter Name="original_CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_PHONE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_PHONE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_PHONE" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ID" Type="Decimal" />
                <asp:Parameter Name="original_CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="original_CUSTOMER_PHONE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

    </div>
        </div>
      </div>
    </div>

    <environment names="Development">
        <script src="~/lib/jquery/dist/jquery.js"></script>
        <script src="~/lib/bootstrap/dist/js/bootstrap.js"></script>
        <script src="~/js/site.js" asp-append-version="true"></script>
    </environment>
    <environment names="Staging,Production">
        <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-2.2.0.min.js"
                asp-fallback-src="~/lib/jquery/dist/jquery.min.js"
                asp-fallback-test="window.jQuery">
        </script>
        <script src="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.6/bootstrap.min.js"
                asp-fallback-src="~/lib/bootstrap/dist/js/bootstrap.min.js"
                asp-fallback-test="window.jQuery && window.jQuery.fn && window.jQuery.fn.modal">
        </script>
        <script src="~/js/site.min.js" asp-append-version="true"></script>
    </environment>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</html>
