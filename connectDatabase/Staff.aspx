<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="connectDatabase.Staff" %>

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
                                <li class="active"><a href="#">Staff</a></li>
                                <li><a href="Customer.aspx">Customers</a></li>
                                <li><a href="Designation.aspx">Designation</a></li>
                                <li><a href="Package.aspx">Packages</a></li>
                                <li><a href="Tour_Guide.aspx">Tour Guides</a></li>
                                <li><a href="Role.aspx">Roles</a></li>
                                <li><a href="ComplexPackage.aspx">Tour Details</a></li>
                            </ul>

                            <ul class="nav nav-sidebar">
                                <li><a href="TourDetails.aspx">Tour Details</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                          


                            <h1 class="page-header">Staff Details</h1>
                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    STAFF_ID:
                                    <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                                    <br />
                                    STAFF_NAME:
                                    <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                                    <br />
                                    STAFF_ROLE:
                                    <asp:TextBox ID="STAFF_ROLETextBox" runat="server" Text='<%# Bind("STAFF_ROLE") %>' />
                                    <br />
                                    STAFF_ADDRESS:
                                    <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                                    <br />
                                    STAFF_PHONE:
                                    <asp:TextBox ID="STAFF_PHONETextBox" runat="server" Text='<%# Bind("STAFF_PHONE") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    STAFF_ID:
                                    <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
                                    <br />
                                    STAFF_NAME:
                                    <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                                    <br />
                                    STAFF_ROLE:
                                    <asp:TextBox ID="STAFF_ROLETextBox" runat="server" Text='<%# Bind("STAFF_ROLE") %>' />
                                    <br />
                                    STAFF_ADDRESS:
                                    <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                                    <br />
                                    STAFF_PHONE:
                                    <asp:TextBox ID="STAFF_PHONETextBox" runat="server" Text='<%# Bind("STAFF_PHONE") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    STAFF_ID:
                                    <asp:Label ID="STAFF_IDLabel" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                                    <br />
                                    STAFF_NAME:
                                    <asp:Label ID="STAFF_NAMELabel" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                                    <br />
                                    STAFF_ROLE:
                                    <asp:Label ID="STAFF_ROLELabel" runat="server" Text='<%# Bind("STAFF_ROLE") %>' />
                                    <br />
                                    STAFF_ADDRESS:
                                    <asp:Label ID="STAFF_ADDRESSLabel" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                                    <br />
                                    STAFF_PHONE:
                                    <asp:Label ID="STAFF_PHONELabel" runat="server" Text='<%# Bind("STAFF_PHONE") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="STAFF_ID" AllowSorting="True">
                                <RowStyle CssClass="RowStyle" />
                                <AlternatingRowStyle CssClass="AlternateRowStyle" BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF ID" SortExpression="STAFF_ID" ReadOnly="True" />
                                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                                    <asp:BoundField DataField="STAFF_ROLE" HeaderText="STAFF_ROLE" SortExpression="STAFF_ROLE" />
                                    <asp:BoundField DataField="STAFF_ADDRESS" HeaderText="STAFF_ADDRESS" SortExpression="STAFF_ADDRESS" />
                                    <asp:BoundField DataField="STAFF_PHONE" HeaderText="STAFF_PHONE" SortExpression="STAFF_PHONE" />
                                     
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=sulav;Password=sulav;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;STAFF&quot;" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;STAFF_ROLE&quot;, &quot;STAFF_ADDRESS&quot;, &quot;STAFF_PHONE&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :STAFF_ROLE, :STAFF_ADDRESS, :STAFF_PHONE)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;STAFF_ROLE&quot; = :STAFF_ROLE, &quot;STAFF_ADDRESS&quot; = :STAFF_ADDRESS, &quot;STAFF_PHONE&quot; = :STAFF_PHONE WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
                <asp:Parameter Name="STAFF_NAME" Type="String" />
                <asp:Parameter Name="STAFF_ROLE" Type="Decimal" />
                <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                <asp:Parameter Name="STAFF_PHONE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STAFF_NAME" Type="String" />
                <asp:Parameter Name="STAFF_ROLE" Type="Decimal" />
                <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                <asp:Parameter Name="STAFF_PHONE" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="Decimal" />
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
