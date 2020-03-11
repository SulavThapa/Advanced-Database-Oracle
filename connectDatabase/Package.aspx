<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="connectDatabase.Package" %>

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
                                <li class="active"><a href="#">Packages</a></li>
                                <li><a href="Role.aspx">Roles</a></li>
                                <li><a href="ComplexPackage.aspx">Tour Details</a></li>
                                <li><a href="Tour_Guide.aspx">Tour Guides</a></li>
                            </ul>
                         
                            <ul class="nav nav-sidebar">
                                <li><a href="TourDetails.aspx">Tour Details</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                           


                            <h1 class="page-header">Package Table Details</h1>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    PACKAGE_ID:
                                    <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                                    <br />
                                    PACKAGE_NAME:
                                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                                    <br />
                                    DIFFICULTY:
                                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                                    <br />
                                    START_DATE:
                                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                                    <br />
                                    END_DATE:
                                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                                    <br />
                                    DAY:
                                    <asp:TextBox ID="DAYTextBox" runat="server" Text='<%# Bind("DAY") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    PACKAGE_ID:
                                    <asp:TextBox ID="PACKAGE_IDTextBox" runat="server" Text='<%# Bind("PACKAGE_ID") %>' />
                                    <br />
                                    PACKAGE_NAME:
                                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                                    <br />
                                    DIFFICULTY:
                                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                                    <br />
                                    START_DATE:
                                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                                    <br />
                                    END_DATE:
                                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                                    <br />
                                    DAY:
                                    <asp:TextBox ID="DAYTextBox" runat="server" Text='<%# Bind("DAY") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    PACKAGE_ID:
                                    <asp:Label ID="PACKAGE_IDLabel" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                                    <br />
                                    PACKAGE_NAME:
                                    <asp:Label ID="PACKAGE_NAMELabel" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                                    <br />
                                    DIFFICULTY:
                                    <asp:Label ID="DIFFICULTYLabel" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                                    <br />
                                    START_DATE:
                                    <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                                    <br />
                                    END_DATE:
                                    <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                                    <br />
                                    DAY:
                                    <asp:Label ID="DAYLabel" runat="server" Text='<%# Bind("DAY") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                            </asp:FormView>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="100%" DataKeyNames="PACKAGE_ID" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" SortExpression="PACKAGE_ID" ReadOnly="True" />
                                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                                    <asp:BoundField DataField="DIFFICULTY" HeaderText="DIFFICULTY" SortExpression="DIFFICULTY" />
                                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                                    <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                                     
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=sulav;Password=sulav;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :original_PACKAGE_ID AND &quot;PACKAGE_NAME&quot; = :original_PACKAGE_NAME AND &quot;DIFFICULTY&quot; = :original_DIFFICULTY AND &quot;START_DATE&quot; = :original_START_DATE AND &quot;END_DATE&quot; = :original_END_DATE AND &quot;DAY&quot; = :original_DAY" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;DIFFICULTY&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;DAY&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :DIFFICULTY, :START_DATE, :END_DATE, :DAY)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;DIFFICULTY&quot; = :DIFFICULTY, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;DAY&quot; = :DAY WHERE &quot;PACKAGE_ID&quot; = :original_PACKAGE_ID AND &quot;PACKAGE_NAME&quot; = :original_PACKAGE_NAME AND &quot;DIFFICULTY&quot; = :original_DIFFICULTY AND &quot;START_DATE&quot; = :original_START_DATE AND &quot;END_DATE&quot; = :original_END_DATE AND &quot;DAY&quot; = :original_DAY">
            <DeleteParameters>
                <asp:Parameter Name="original_PACKAGE_ID" Type="String" />
                <asp:Parameter Name="original_PACKAGE_NAME" Type="String" />
                <asp:Parameter Name="original_DIFFICULTY" Type="String" />
                <asp:Parameter Name="original_START_DATE" Type="DateTime" />
                <asp:Parameter Name="original_END_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DAY" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PACKAGE_ID" Type="String" />
                <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                <asp:Parameter Name="DIFFICULTY" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="DAY" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                <asp:Parameter Name="DIFFICULTY" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="DAY" Type="Decimal" />
                <asp:Parameter Name="original_PACKAGE_ID" Type="String" />
                <asp:Parameter Name="original_PACKAGE_NAME" Type="String" />
                <asp:Parameter Name="original_DIFFICULTY" Type="String" />
                <asp:Parameter Name="original_START_DATE" Type="DateTime" />
                <asp:Parameter Name="original_END_DATE" Type="DateTime" />
                <asp:Parameter Name="original_DAY" Type="Decimal" />
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
