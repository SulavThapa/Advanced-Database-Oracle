<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourDetails.aspx.cs" Inherits="connectDatabase.TourDetails" %>

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
                                <li><a href="Customer.aspx">Customers</a></li>
                                <li><a href="Designation.aspx">Designation</a></li>
                                <li><a href="Package.aspx">Packages</a></li>
                                <li><a href="Tour_Guide.aspx">Tour Guides</a></li>
                                <li><a href="Role.aspx">Roles</a></li>
                                <li><a href="ComplexPackage.aspx">Tour Details</a></li>                                
                            </ul>
                           
                            <ul class="nav nav-sidebar">
                                <li class="active"><a href="#">Tour Details</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                                <asp:DropDownList ID="DropDownList1" runat="server"
                                    DataSourceID="SqlDataSource2"
                                    DataTextField="PACKAGE_NAME"
                                    AppendDataBoundItems="true"
                                    AutoPostBack="true">
                                    <%--<asp:ListItem>
                                        All ITEMS
                                    </asp:ListItem>--%>
                                    <asp:ListItem Value="">All Packages</asp:ListItem>
                                </asp:DropDownList>
                            <hr />

                            <h1 class="page-header">Tour Details</h1>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="CUSTOMER_ID,PACKAGE_ID" AllowSorting="True">
                                <RowStyle cssClass="RowStyle" />
                                <AlternatingRowStyle cssClass="AlternateRowStyle" BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" ReadOnly="True"/>
                                    <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
                                    <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                                    <asp:BoundField DataField="CUSTOMER_PHONE" HeaderText="CUSTOMER_PHONE" SortExpression="CUSTOMER_PHONE" />
                                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                                     
                                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                                    <asp:BoundField DataField="DIFFICULTY" HeaderText="DIFFICULTY" SortExpression="DIFFICULTY" />
                                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                                     
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.customer_id, c.customer_name, c.customer_address, c.customer_phone, p.package_id, p.package_name, p.difficulty, p.start_date
FROM customer c
JOIN customer_link cl
ON c.customer_id = cl.customer_id
JOIN package p
ON p.package_id = cl.package_id" FilterExpression="PACKAGE_NAME='{0}'">
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="PACKAGE_NAME" PropertyName="SelectedValue"/>
            </FilterParameters>
        </asp:SqlDataSource>
    </form>

    
</html>
