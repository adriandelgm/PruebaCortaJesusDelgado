<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lobby.aspx.cs" Inherits="PruebaCortaJesusDelgado.View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.1.2/lux/bootstrap.min.css" />
    <link href="../css/resorts.css" rel="stylesheet" />
    <script src="../js/site.js"></script>
    <title>My Bookings</title>
</head>
<body>
    <form id="Lobby" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Booking.com</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarColor01">
                        <ul class="navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="Lobby.aspx">Resorts</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br/>
            <asp:Repeater ID="repResorts" runat="server">
                <HeaderTemplate>
                    <div class="container">
                        <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="card" style="width: 27rem; margin-left: 5px">
                        <br/>
                        <img src="<%# Eval("Photo")%>" class="card-img-top" style="width: 400px; height: 350px" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name")%></h5>
                            <p class="card-text"><%# Eval("Description")%></p>
                            <hr/>
                            <p class="card-text">Book! by $<%# Eval("Price")%> per night!</p>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                    </div>
               
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
