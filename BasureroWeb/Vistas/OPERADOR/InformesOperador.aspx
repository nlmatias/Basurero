﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformesOperador.aspx.cs" Inherits="BasureroWeb.Vistas.OPERADOR.Informes" %>

<!DOCTYPE html>

<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Basurero inteligente</title>


    <link href="../../Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../../Content/css/animate.css" rel="stylesheet">
    <link href="../../Content/css/style.css" rel="stylesheet">

    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0,0,0,0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
    </style>
</head>

<body class="fixed-navigation  pace-done">
    <form runat="server" method="post" id="form1">
        <div class="pace  pace-inactive">
            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
                <div class="pace-progress-inner"></div>
            </div>
            <div class="pace-activity"></div>
        </div>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <span>
                                    <img alt="image" class="img-circle" src="../../img/user.png" />
                                </span>
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="clear"><span class="block m-t-xs"><strong class="font-bold">
                                        <asp:Label ID="txtBienvenidoAdmin" runat="server"></asp:Label></strong>
                                    </span><span class="text-muted text-xs block">
                                        <asp:Label runat="server" ID="txtCargo"></asp:Label><b class="caret"></b></span></span></a>
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a class="dropdown-item" data-toggle="modal" data-target="#perfilModal">Perfil</a></li>
                                    <li class="divider"></li>
                                    <li><a class="dropdown-item" data-toggle="modal" data-target="#logoutModal">Logout </a></li>
                                </ul>
                            </div>
                            <div class="logo-element">
                                IN+
                            </div>
                        </li>
                        <%--<li>
                            <a href="layouts.html"><i class="fa fa-diamond"></i><span class="nav-label">Layouts</span></a>
                        </li>--%>
                        <li class="special_link">
                            <a href="../Operador.aspx"><i class="fa fa-ellipsis-v"></i><span class="nav-label">Menu principal</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-trash-o"></i><span class="nav-label">Modulo basurero</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="BasureroOperador.aspx"><i class="fa fa-trash"></i><span class="nav-label">Agregar basurero</span></a></li>
                                <li><a href="Lista_basOperador.aspx"><i class="fa fa-list-alt"></i><span class="nav-label">Listado basureros</span></a></li>
                                <li><a href="ModBasureroOperador.aspx"><i class="fa fa-edit"></i><span class="nav-label">Modificar basurero</span></a></li>
                                <li><a href="UbicacionOperador.aspx"><i class="fa fa-location-arrow"></i><span class="nav-label">Agregar Ubicacion</span></a></li>
                                <li><a href="BodegaOperador.aspx"><i class="fa fa-archive"></i><span class="nav-label">Agregar Bodega</span></a></li>
                                <li><a href="EstadoBasureroOperador.aspx"><i class="fa fa-empire"></i><span class="nav-label">Agregar Estado</span></a></li>
                            </ul>
                        </li>
                        <li class="special_link">
                            <a href="InformesOperador.aspx"><i class="fa fa-file-pdf-o"></i><span class="nav-label">Modulo informes</span></a>
                        </li>
                    </ul>

                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg sidebar-content" style="min-height: 661px;">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i></a>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <span class="m-r-sm text-muted welcome-message">Bienvenido.</span>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope"></i><span class="label label-warning"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <%-- lista mensajes--%>
                                    </li>
                                    <li class="divider"></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                                    <i class="fa fa-trash"></i>
                                    <asp:Label ID="txt_count" runat="server" class="label label-primary"></asp:Label>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <div>
                                            <i class="fa fa-bell fa-fw"></i><b> Basureros en alerta</b>
                                        </div>
                                        <br />
                                        <asp:Label ID="txt_message" runat="server" class="label label-danger btn"></asp:Label>
                                    </li>                   
                                </ul>
                            </li>
                            <li>
                                <a class="dropdown-item" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fa fa-sign-out"></i>Log out
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="wrapper wrapper-content">
                    <%--   CENTRO--%>
                    <div class="container alert-secondary" style="padding: 5px">
                        <div style="padding: 50px">
                            <div class="form-row">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="ibox">
                                            <div class="ibox-content product-box" style="background-color: lightsteelblue">
                                                <div class="product-imitation">
                                                    <i class="fa fa-trash fa-3x" style="color: black"></i>
                                                    <br />
                                                    <h2 style="color: black">Informe de basureros</h2>
                                                </div>
                                                <div class="product-desc">
                                                    <small class="text-muted">PDF</small><br />
                                                    <asp:Button ID="btn_pdfbasurero" OnClick="btn_pdfbasurero_Click" runat="server" Text="Descargar" CssClass="btn btn-success" Style="text-align: center; display: block; margin-right: auto; width: 190px;" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="ibox">
                                            <div class="ibox-content product-box" style="background-color: lightsteelblue">
                                                <div class="product-imitation">
                                                    <i class="fa fa-trash-o fa-3x" style="color: black"></i>
                                                    <br />
                                                    <h2 style="color: black">Detalle Basureros</h2>
                                                </div>
                                                <div class="product-desc">
                                                    <small class="text-muted">PDF</small><br />
                                                    <asp:Button ID="btn_pdfDetalleBasurero" OnClick="btn_pdfDetalleBasurero_Click" runat="server" Text="Descargar" CssClass="btn btn-success" Style="text-align: center; display: block; margin-right: auto; width: 190px;" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%----ALERTA---%>
                                <%---PANEL ES EQUIVALENTE A UN DIV DE HTML--%>
                                <div class="col-md-4"></div>
                                <div style="align-content: center" class="col-md-4">
                                    <asp:Panel runat="server" ID="alerta" Visible="false">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <div class="text-center">
                                            <asp:Label runat="server" ID="mensaje"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div class="col-md-4"></div>
                                <%--FIN ALERTA --%>
                            </div>
                        </div>
                    </div>
                    <asp:Timer ID="Timer1" runat="server" ></asp:Timer>
                    <%-- FIN CENTRO --%>
                </div>
                <div class="footer">
                    <div class="pull-right">
                        <strong>Derechos reservados</strong>.
                    </div>
                    <div>
                        <strong>Desarrollado</strong> Team Juvenal © 2019
                    </div>
                </div>
            </div>
        </div>
        <!-- Logout Modal-->
        <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Quiere cerrar sesion?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">¿Esta seguro de querer su cerrar su sesion?.</div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                <asp:LinkButton ID="btn_deslog1" runat="server" OnClick="btn_deslog_Click" CssClass="nav-link  badge badge-success badge-danger dropdown-toggle" Font-Size="20px">Salir</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <!--FIN LOG -->
        <!--PERFIL -->
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal fade" id="perfilModal" tabindex="-1" role="dialog" aria-labelledby="perfilModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="perfilModalLabel">Perfil</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-footer">
                                <div class="contact-box">
                                    <a href="#">
                                        <div class="col-sm-4">
                                            <div>
                                                <img alt="image" class="img-circle m-t-xs img-responsive" src="../../img/user.png">
                                                <div class="font-bold text-left"><%=Session["userCargo"] %></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <h3><strong><%=Session["user"]%></strong></h3>
                                            <p><i class="fa fa-map-marker"></i><%=Session["userDire"]%></p>
                                            <p><i class="fa fa-location-arrow"></i><%=Session["userCiu"]%></p>
                                            <p><i class="fa fa-phone"></i><%=Session["userCel"]%></p>
                                            <p><i class="fa fa-signal"></i><%=Session["userEst"]%></p>

                                        </div>
                                        <div class="clearfix"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <!--FIN -->
    </form>
    <div>
        <!-- Mainly scripts -->
        <script src="../../Content/js/jquery-2.1.1.js"></script>
        <script src="../../Content/js/bootstrap.min.js"></script>
        <script src="../../Content/js/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="../../Content/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Flot -->
        <script src="../../Content/js/plugins/flot/jquery.flot.js"></script>
        <script src="../../Content/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="../../Content/js/plugins/flot/jquery.flot.spline.js"></script>
        <script src="../../Content/js/plugins/flot/jquery.flot.resize.js"></script>
        <script src="../../Content/js/plugins/flot/jquery.flot.pie.js"></script>
        <script src="../../Content/js/plugins/flot/jquery.flot.symbol.js"></script>
        <script src="../../Content/js/plugins/flot/curvedLines.js"></script>

        <!-- Peity -->
        <script src="../../Content/js/plugins/peity/jquery.peity.min.js"></script>
        <script src="../../Content/js/demo/peity-demo.js"></script>

        <!-- Custom and plugin javascript -->
        <script src="../../Content/js/inspinia.js"></script>
        <script src="../../Content/js/plugins/pace/pace.min.js"></script>

        <!-- jQuery UI -->
        <script src="../Content/js/plugins/jquery-ui/jquery-ui.min.js"></script>

        <!-- Jvectormap -->
        <script src="../../Content/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="../../Content/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

        <!-- Sparkline -->
        <script src="../../Content/js/plugins/sparkline/jquery.sparkline.min.js"></script>

        <!-- Sparkline demo data  -->
        <script src="../../Content/js/demo/sparkline-demo.js"></script>

        <!-- ChartJS-->
        <script src="../../Content/js/plugins/chartJs/Chart.min.js"></script>
    </div>



</body>
</html>
