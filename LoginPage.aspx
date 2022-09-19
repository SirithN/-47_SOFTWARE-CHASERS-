<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ProjectAirlines.LoginPage" %>

<!DOCTYPE html>
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <link href="Style/StyleSheet1.css" rel="stylesheet" type="style/css" />

</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #87CEEB;">
            <div class="header">
                <h1>Airline Reservation System</h1>
                <div class="header-right">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col col-xl-10">
                                <div class="card" style="border-radius: 1rem;">
                                    <div class="row g-0">
                                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                                            <img src="https://images.pexels.com/photos/163792/model-planes-airplanes-miniatur-wunderland-hamburg-163792.jpeg?auto=compress&cs=tinysrgb&w=15000"
                                                class="img-fluid" style="border-radius: 1rem 0 0 1rem; height: 500px" />
                                        </div>
                                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                            <div class="card-body p-4 p-lg-5 text-black">

                                                <div class="d-flex align-items-center mb-3 pb-1">
                                                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                    <span class="h1 fw-bold mb-0"></span>
                                                </div>

                                                <h4 class="font-weight-bold" style="letter-spacing: 1px">Admin! Login to your account</h4>
                                                <br />

                                                <div class="form-outline mb-4">
                                                    &nbsp;<asp:Label ID="Label3" runat="server" class="form-label" for="form2Example17" Placeholder="Enter your UserName" Text="User Name"></asp:Label>


                                                    <asp:TextBox ID="txtUserName" class="form-control form-control-lg" runat="server"></asp:TextBox>
                                                </div>
                                                <br />
                                                <asp:Label ID="Label2" runat="server" Placeholder="Enter your password" Text="Password"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="txtPassword" class="form-control form-control-lg" TextMode="Password" runat="server"></asp:TextBox>
                                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label><br />
                                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" class="btn btn-primary" />
                                            </div>
                                        </div>
                                        <br />

                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

    </form>

</body>
</html>