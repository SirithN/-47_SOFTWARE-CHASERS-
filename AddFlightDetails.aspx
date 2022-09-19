<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFlightDetails.aspx.cs" Inherits="ProjectAirlines.AddFlightDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>


</head>
<body>
    <form id="form1" runat="server">

        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap"></use></svg>

            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="AdminHomePage.aspx" class="nav-link" aria-current="page">Home</a></li>
                <li class="nav-item"><a href="AddFlightDetails.aspx" class="nav-link">Dashboard</a></li>
                <li class="nav-item"><a href="LoginPage.aspx" class="nav-link">Logout</a></li>

            </ul>
        </header>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="FlightId" DataSourceID="sqlAddFlightDetails" CellPadding="4" ForeColor="#333333">
                <EditItemTemplate>
                    <div class="card-body">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td>FlightId:</td>
                                    <td>
                                        <asp:Label ID="FlightIdLabel1" runat="server" Text='<%# Eval("FlightId") %>' /></td>
                                </tr>
                                <tr>
                                    <td>Departure:</td>
                                    <td>
                                        <asp:TextBox ID="DepartureTextBox" runat="server" Text='<%# Bind("Departure") %>' /></td>
                                </tr>
                                <tr>
                                    <td>AirlineID:</td>
                                    <td>
                                        <asp:TextBox ID="AirlineIDTextBox" runat="server" Text='<%# Bind("AirlineID") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Destination:</td>
                                    <td>
                                        <asp:TextBox ID="DestinationTextBox" runat="server" Text='<%# Bind("Destination") %>' /></td>
                                </tr>
                                <tr>
                                    <td>DepartTime:</td>
                                    <td>
                                        <asp:TextBox ID="DepartTimeTextBox" runat="server" Text='<%# Bind("DepartTime") %>' /></td>
                                </tr>
                                <tr>
                                    <td>ArrivalTime:</td>
                                    <td>
                                        <asp:TextBox ID="ArrivalTimeTextBox" runat="server" Text='<%# Bind("ArrivalTime") %>' /></td>
                                </tr>

                                <tr>
                                    <td>Fare:</td>
                                    <td>
                                        <asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("Fare") %>' /></td>
                                </tr>

                                <tr>
                                    <td>AvaiSeats:</td>
                                    <td>
                                        <asp:TextBox ID="AvaiSeatsTextBox" runat="server" Text='<%# Bind("AvaiSeats") %>' /></td>
                                </tr>

                                <tr>
                                    <td>Class:</td>
                                    <td>
                                        <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>




                    <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>

                    <div class="form-group">
                        <table>
                           <tr>
                               <td>Departure:       </td>
                               <td><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Departure") %>' /></td>
                           </tr>
                            <tr>
                                <td>Airline ID:</td>
                                <td><asp:TextBox ID="AirlineIDTextBox" runat="server" Text='<%# Bind("AirlineID") %>' /></td>
                            </tr>
                            <tr>
                                <td>Destination:</td>
                                <td><asp:TextBox ID="DestinationTextBox" runat="server" Text='<%# Bind("Destination") %>' /></td>
                            </tr>
                            <tr>
                                <td>Depart Time:</td>
                                <td><asp:TextBox ID="DepartTimeTextBox" runat="server" Text='<%# Bind("DepartTime") %>' /></td>
                            </tr>
                            <tr>
                                <td>Arrival Time:</td>
                                <td> <asp:TextBox ID="ArrivalTimeTextBox" runat="server" Text='<%# Bind("ArrivalTime") %>' /></td>
                            </tr>
                            <tr>
                                <td>Fare:</td>
                                <td><asp:TextBox ID="FareTextBox" runat="server" Text='<%# Bind("Fare") %>' /></td>
                            </tr>
                            <tr>
                                <td> Available Seats  :</td>
                                <td><asp:TextBox ID="AvaiSeatsTextBox" runat="server" Text='<%# Bind("AvaiSeats") %>' /></td>
                            </tr>
                            <tr>
                                <td>Class:</td>
                                <td><asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' /></td>
                            </tr>
                        </table>
                    </div>
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <div class="align-item-center">
                        FlightId:
                    <asp:Label ID="FlightIdLabel" runat="server" Text='<%# Eval("FlightId") %>' />
                        <br />
                        Departure:
                    <asp:Label ID="DepartureLabel" runat="server" Text='<%# Bind("Departure") %>' />
                        <br />
                        AirlineID:
                    <asp:Label ID="AirlineIDLabel" runat="server" Text='<%# Bind("AirlineID") %>' />
                        <br />
                        Destination:
                    <asp:Label ID="DestinationLabel" runat="server" Text='<%# Bind("Destination") %>' />
                        <br />
                        DepartTime:
                    <asp:Label ID="DepartTimeLabel" runat="server" Text='<%# Bind("DepartTime") %>' />
                        <br />
                        ArrivalTime:
                    <asp:Label ID="ArrivalTimeLabel" runat="server" Text='<%# Bind("ArrivalTime") %>' />
                        <br />
                        Fare:
                    <asp:Label ID="FareLabel" runat="server" Text='<%# Bind("Fare") %>' />
                        <br />
                        AvaiSeats:
                    <asp:Label ID="AvaiSeatsLabel" runat="server" Text='<%# Bind("AvaiSeats") %>' />
                        <br />
                        Class:
                    <asp:Label ID="ClassLabel" runat="server" Text='<%# Bind("Class") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New" />
                    </div>
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AirlineId" DataSourceID="sqlAddFlights" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="AirlineId" HeaderText="AirlineId" InsertVisible="False" ReadOnly="True" SortExpression="AirlineId">
                        <ControlStyle CssClass="btn btn-primary" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AirlineName" HeaderText="AirlineName" SortExpression="AirlineName" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlAddFlights" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Project_Airline_DBConnectionString %>" DeleteCommand="DELETE FROM [Airline_Name] WHERE [AirlineId] = @original_AirlineId AND (([AirlineName] = @original_AirlineName) OR ([AirlineName] IS NULL AND @original_AirlineName IS NULL))" InsertCommand="INSERT INTO [Airline_Name] ([AirlineName]) VALUES (@AirlineName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [AirlineId], [AirlineName] FROM [Airline_Name]" UpdateCommand="UPDATE [Airline_Name] SET [AirlineName] = @AirlineName WHERE [AirlineId] = @original_AirlineId AND (([AirlineName] = @original_AirlineName) OR ([AirlineName] IS NULL AND @original_AirlineName IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_AirlineId" Type="Int32" />
                    <asp:Parameter Name="original_AirlineName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AirlineName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AirlineName" Type="String" />
                    <asp:Parameter Name="original_AirlineId" Type="Int32" />
                    <asp:Parameter Name="original_AirlineName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>


        <div>

            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FlightId" DataSourceID="sqlAddFlightDetails">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="FlightId" HeaderText="FlightId" InsertVisible="False" ReadOnly="True" SortExpression="FlightId" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
                    <asp:BoundField DataField="AirlineID" HeaderText="AirlineID" SortExpression="AirlineID" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="DepartTime" HeaderText="DepartTime" SortExpression="DepartTime" />
                    <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                    <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare" />
                    <asp:BoundField DataField="AvaiSeats" HeaderText="AvaiSeats" SortExpression="AvaiSeats" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlAddFlightDetails" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Project_Airline_DBConnectionString %>" DeleteCommand="DELETE FROM [Flight_Details] WHERE [FlightId] = @original_FlightId AND (([Departure] = @original_Departure) OR ([Departure] IS NULL AND @original_Departure IS NULL)) AND (([AirlineID] = @original_AirlineID) OR ([AirlineID] IS NULL AND @original_AirlineID IS NULL)) AND (([Destination] = @original_Destination) OR ([Destination] IS NULL AND @original_Destination IS NULL)) AND (([DepartTime] = @original_DepartTime) OR ([DepartTime] IS NULL AND @original_DepartTime IS NULL)) AND (([ArrivalTime] = @original_ArrivalTime) OR ([ArrivalTime] IS NULL AND @original_ArrivalTime IS NULL)) AND (([Fare] = @original_Fare) OR ([Fare] IS NULL AND @original_Fare IS NULL)) AND (([AvaiSeats] = @original_AvaiSeats) OR ([AvaiSeats] IS NULL AND @original_AvaiSeats IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL))" InsertCommand="INSERT INTO [Flight_Details] ([Departure], [AirlineID], [Destination], [DepartTime], [ArrivalTime], [Fare], [AvaiSeats], [Class]) VALUES (@Departure, @AirlineID, @Destination, @DepartTime, @ArrivalTime, @Fare, @AvaiSeats, @Class)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [FlightId], [Departure], [AirlineID], [Destination], [DepartTime], [ArrivalTime], [Fare], [AvaiSeats], [Class] FROM [Flight_Details]" UpdateCommand="UPDATE [Flight_Details] SET [Departure] = @Departure, [AirlineID] = @AirlineID, [Destination] = @Destination, [DepartTime] = @DepartTime, [ArrivalTime] = @ArrivalTime, [Fare] = @Fare, [AvaiSeats] = @AvaiSeats, [Class] = @Class WHERE [FlightId] = @original_FlightId AND (([Departure] = @original_Departure) OR ([Departure] IS NULL AND @original_Departure IS NULL)) AND (([AirlineID] = @original_AirlineID) OR ([AirlineID] IS NULL AND @original_AirlineID IS NULL)) AND (([Destination] = @original_Destination) OR ([Destination] IS NULL AND @original_Destination IS NULL)) AND (([DepartTime] = @original_DepartTime) OR ([DepartTime] IS NULL AND @original_DepartTime IS NULL)) AND (([ArrivalTime] = @original_ArrivalTime) OR ([ArrivalTime] IS NULL AND @original_ArrivalTime IS NULL)) AND (([Fare] = @original_Fare) OR ([Fare] IS NULL AND @original_Fare IS NULL)) AND (([AvaiSeats] = @original_AvaiSeats) OR ([AvaiSeats] IS NULL AND @original_AvaiSeats IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FlightId" Type="Int32" />
                    <asp:Parameter Name="original_Departure" Type="String" />
                    <asp:Parameter Name="original_AirlineID" Type="Int32" />
                    <asp:Parameter Name="original_Destination" Type="String" />
                    <asp:Parameter Name="original_DepartTime" Type="DateTime" />
                    <asp:Parameter Name="original_ArrivalTime" Type="DateTime" />
                    <asp:Parameter Name="original_Fare" Type="Int64" />
                    <asp:Parameter Name="original_AvaiSeats" Type="Int32" />
                    <asp:Parameter Name="original_Class" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="AirlineID" Type="Int32" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="DepartTime" Type="DateTime" />
                    <asp:Parameter Name="ArrivalTime" Type="DateTime" />
                    <asp:Parameter Name="Fare" Type="Int64" />
                    <asp:Parameter Name="AvaiSeats" Type="Int32" />
                    <asp:Parameter Name="Class" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="AirlineID" Type="Int32" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="DepartTime" Type="DateTime" />
                    <asp:Parameter Name="ArrivalTime" Type="DateTime" />
                    <asp:Parameter Name="Fare" Type="Int64" />
                    <asp:Parameter Name="AvaiSeats" Type="Int32" />
                    <asp:Parameter Name="Class" Type="String" />
                    <asp:Parameter Name="original_FlightId" Type="Int32" />
                    <asp:Parameter Name="original_Departure" Type="String" />
                    <asp:Parameter Name="original_AirlineID" Type="Int32" />
                    <asp:Parameter Name="original_Destination" Type="String" />
                    <asp:Parameter Name="original_DepartTime" Type="DateTime" />
                    <asp:Parameter Name="original_ArrivalTime" Type="DateTime" />
                    <asp:Parameter Name="original_Fare" Type="Int64" />
                    <asp:Parameter Name="original_AvaiSeats" Type="Int32" />
                    <asp:Parameter Name="original_Class" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <br />

        </div>
    </form>
</body>
</html>
