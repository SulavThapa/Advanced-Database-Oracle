<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tour_Guide.aspx.cs" Inherits="connectDatabase.Tour_Guide" %>

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
                                <li class="active"><a href="#">Tour Guides</a></li>
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
                                            <label for="inputEmail4">
                                            Email</label>
                                            <input id="inputEmail4" class="form-control" type="email"> </input></div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">
                                            Password</label>
                                            <input id="inputPassword4" class="form-control" type="password"> </input></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">
                                        Address</label>
                                        <input id="inputAddress" class="form-control" placeholder="1234 Main St" type="text"> </input></div>
                                    <div class="form-group">
                                        <label for="inputAddress2">
                                        Address 2</label>
                                        <input id="inputAddress2" class="form-control" placeholder="Apartment, studio, or floor" type="text"> </input></div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputCity">
                                            City</label>
                                            <input id="inputCity" class="form-control" type="text"> </input></div>
                                        <div class="form-group col-md-4">
                                            <label for="inputState">
                                            State</label>
                                            <select id="inputState" class="form-control">
                                                <option selected="">Choose...</option>
                                                <option>...</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="inputZip">
                                            Zip</label>
                                            <input id="inputZip" class="form-control" type="text"> </input></div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input id="gridCheck" class="form-check-input" type="checkbox">
                                            <label class="form-check-label" for="gridCheck">
                                            Check me out
                                            </label>
                                            </input></div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">
                                        Sign in
                                    </button>
                                    <hr />
                                </div>
                            </div>


                            <h1 class="page-header">Tour Guide Table Details</h1>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="PACKAGE_ID,STAFF_ID" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" SortExpression="PACKAGE_ID" ReadOnly="True" />
                                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" SortExpression="STAFF_ID" ReadOnly="True" />
                                     
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=sulav;Password=sulav;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;TOUR_GUIDE&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;TOUR_GUIDE&quot; WHERE &quot;PACKAGE_ID&quot; = :original_PACKAGE_ID AND &quot;STAFF_ID&quot; = :original_STAFF_ID" InsertCommand="INSERT INTO &quot;TOUR_GUIDE&quot; (&quot;PACKAGE_ID&quot;, &quot;STAFF_ID&quot;) VALUES (:PACKAGE_ID, :STAFF_ID)" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_PACKAGE_ID" Type="String" />
                <asp:Parameter Name="original_STAFF_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PACKAGE_ID" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </InsertParameters>
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
