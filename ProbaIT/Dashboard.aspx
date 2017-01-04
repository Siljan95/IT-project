<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ProbaIT.Dashboard" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/main.css" />
    <link rel="stylesheet" href="Styles/normalize.min.css" />
    <link rel="stylesheet" href="Styles/animate.min.css" />
    <script src="/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.4/jquery.jcarousel.js"></script>
    <link href="http://cdn.jsdelivr.net/jcarousel/0.2.8/skins/tango/skin.css" rel="Stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.1.1/jquery.rateyo.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.1.1/jquery.rateyo.min.js"></script>
    <link rel="stylesheet" href="Styles/jcarousel-styles.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-slimScroll/1.3.8/jquery.slimscroll.js"></script>


    <style type="text/css">
        * {
            font-family: 'Open Sans','Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        #control-container img {
            width: 150px;
            height: 150px;
            padding-top: 15px;
        }

        .box {
            background-color: rgba(0, 0, 0, 0.7);
            color: #FCFCDC;
            border-radius: 4px;
            text-align: center;
            margin-top: 15px;
            margin-bottom: 10px;
            padding: 30px 24px;
        }

        .backImgDashboard {
            height: 100%;
            position: relative;
        }

            .backImgDashboard::after {
                content: "";
                background-image: url('Styles/img/background2.jpg');
                height: 100%;
                background-repeat: no-repeat;
                background-size: cover;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                position: absolute;
                z-index: -1;
                opacity: 0.5;
            }

        .hovereffect {
            width: 100%;
            height: 100%;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            cursor: default;
            padding-top: 60px;
            font-family: sans-serif;
        }

        h4 {
            margin-bottom: 10px;
            padding: 0;
            position: relative;
            text-transform: uppercase;
            border-bottom: 1px solid white;
        }

        .hovereffect .overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            overflow: hidden;
            top: 0;
            left: 0;
            background-color: rgba(0,0,0,0.6);
            opacity: 0;
            filter: alpha(opacity=0);
            -webkit-transform: translate(460px, -100px) rotate(180deg);
            -ms-transform: translate(460px, -100px) rotate(180deg);
            transform: translate(460px, -100px) rotate(180deg);
            -webkit-transition: all 0.2s 0.4s ease-in-out;
            transition: all 0.2s 0.4s ease-in-out;
            cursor: pointer;
        }

        .hovereffect img {
            display: block;
            position: relative;
            -webkit-transition: all 0.2s ease-in;
            transition: all 0.2s ease-in;
            cursor: pointer;
        }

        .hovereffect h3 {
            text-transform: uppercase;
            color: #fff;
            text-align: center;
            position: relative;
            font-size: 17px;
            padding: 0;
            background: rgba(0, 0, 0, 0.6);
            cursor: pointer;
        }

            .hovereffect h3.info {
                display: inline-block;
                text-decoration: none;
                padding: 4px 14px;
                text-transform: uppercase;
                color: #fff;
                border: 1px solid #ffffff;
                margin: 20px 0 0 0;
                background-color: transparent;
                -webkit-transform: translateY(-200px);
                -ms-transform: translateY(-200px);
                transform: translateY(-200px);
                -webkit-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
                cursor: pointer;
            }

                .hovereffect h3.info:hover {
                    box-shadow: 0 0 5px #fff;
                }

        .hovereffect:hover .overlay {
            opacity: 1;
            filter: alpha(opacity=100);
            -webkit-transition-delay: 0s;
            transition-delay: 0s;
            -webkit-transform: translate(0px, 0px);
            -ms-transform: translate(0px, 0px);
            transform: translate(0px, 0px);
            cursor: pointer;
        }

        .hovereffect:hover h3 {
            -webkit-transform: translateY(0px);
            -ms-transform: translateY(0px);
            transform: translateY(0px);
            -webkit-transition-delay: 0.5s;
            transition-delay: 0.5s;
            cursor: pointer;
        }

        .hovereffect:hover h3 {
            -webkit-transform: translateY(0px);
            -ms-transform: translateY(0px);
            transform: translateY(0px);
            -webkit-transition-delay: 0.3s;
            transition-delay: 0.3s;
            cursor: pointer;
        }

        .close-modalCPU {
            cursor: pointer;
            color: #000000;
            text-align: right;
            width: 100%;
            padding-bottom: 10px;
            padding-top: 5px;
            padding-right: 10px;
        }

            .close-modalCPU img {
                width: 20px;
                height: 20px;
                margin-bottom: 5px;
            }

        #modalCPU, #modalPU, #modalMotherboards, #modalGraphicsCards, #modalHardDrives, #modalRAM {
            border-radius: 13px;
        }

        #pnlProcessor, #motherboardPanel, #powerUnitsPanel, #graphicsCardsPanel, #panelRAM, #panelHardDrives {
            margin-top: -50px;
        }

        .auto-style2 {
            width: 24%;
        }

        .blockUI {
            background: #222222;
            pointer-events: none;
        }

        .panel1 {
            text-align: center;
        }

        .lblPickProcessor {
            line-height: 2;
            vertical-align: middle;
            margin: 0;
        }

        .ddlProcessor {
            margin-top: 20px;
            padding: 10px;
        }

        
        .outerTable {
            width: 90%;
            height: 70%;
            margin-left: 5%;
            margin-top: 50px;
            margin-right: 5%;
            display: inline-flex;
        }

        .imageGroup {
            width: 20%;
            height: 100%;
            display: inline-block;
            margin-left: 20px;
        }

        .logoImage {
            height: 30%;
        }

        .productImage {
            height: 100%;
        }

            .productImage img {
                height: 150px;
                width: 200px;
            }

        #ImageProcessor {
            margin-top: 20px;
        }

        #ImageGraphicsCard, #ImageRAM, #ImagePowerUnit {
            height: 150px;
            width: 200px;
        }

        #ImageGraphicsCard {
            margin-left: -15px;
        }

        #ImageRAM {
            margin-left: -30px;
        }

        .productInfo {
            width: 60%;
            height: 100%;
            display: inline-block;
            padding-left: 40px;
        }

        .priceInfo {
            width: 20%;
            height: 100%;
            display: inline-block;
            border-radius: 5px;
            margin-left: -60px;
        }

            .priceInfo btn {
                margin-left: 0;
                font-weight: bolder;
            }

        .info-row {
            height: 10%;
            width: 100%;
            position: relative;
            margin-bottom: 10px;
        }

        .info-col1 {
            height: 100%;
            width: 30%;
            position: absolute;
        }

        .info-col2 {
            height: 100%;
            width: 70%;
            left: 20%;
            position: absolute;
        }

        .ddlMotherboard, .ddlHardDrive, .ddlGraphicsCard, .ddlRAM, .ddlPowerUnit {
            margin-top: 20px;
            padding: 10px;
            margin-left: 40%;
        }

        .priceHolder {
            height: 50%;
            box-shadow: 1px 1px 20px #c9c9c9;
            padding: 1em;
            border-radius: 20px;
        }

        .freeShipping {
            font-size: small;
            color: #8a8a8a;
        }
        .auto-style3 {
            margin-bottom: 0;
        }
        .auto-style4 {
            width: 20%;
            height: 100%;
            display: inline-block;
            border-radius: 5px;
            margin-left: -60px;
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10 backImgDashboard" style="height:100vh">
        <div class="row" style="margin: 0 auto; width: 78.2%;">
            <div class="col-md-12">
                <div class="box">
                    <img width="150" height="150" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDMyMCAzMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMyMCAzMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjU2cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yOTIuNjk3LDE5Ljk5NUgyNy4zMDNDMTIuMjIzLDE5Ljk5NSwwLDMyLjIxOSwwLDQ3LjI5OXYxNjMuODIyYzAsMTUuMDc5LDEyLjIyMywyNy4zMDQsMjcuMzAzLDI3LjMwNEgxMzMuNzl2MjQuNyAgIGgtMjEuNTQ0Yy0xMC4xODUsMC0xOC40MzksOC4yNTUtMTguNDM5LDE4LjQ0YzAsMTAuMTg0LDguMjU1LDE4LjQ0LDE4LjQzOSwxOC40NGg5NS41MDhjMTAuMTg2LDAsMTguNDQtOC4yNTYsMTguNDQtMTguNDQgICBjMC0xMC4xODUtOC4yNTQtMTguNDQtMTguNDQtMTguNDRIMTg2LjIxdi0yNC43aDEwNi40ODdjMTUuMDgsMCwyNy4zMDMtMTIuMjI1LDI3LjMwMy0yNy4zMDRWNDcuMjk5ICAgQzMyMCwzMi4yMTksMzA3Ljc3NywxOS45OTUsMjkyLjY5NywxOS45OTV6IE0zMi4xODEsMTc5Ljk2YzAtMTQuNCwxMS43MTUtMjYuMTE2LDI2LjExNS0yNi4xMTYgICBjMTQuNDAxLDAsMjYuMTE1LDExLjcxNiwyNi4xMTUsMjYuMTE2YzAsMTQuNC0xMS43MTMsMjYuMTE2LTI2LjExNSwyNi4xMTZDNDMuODk2LDIwNi4wNzYsMzIuMTgxLDE5NC4zNiwzMi4xODEsMTc5Ljk2eiAgICBNMjg4LjMyOCwyMDYuNzUySDEyNy41NzljMC43MzQtMS44NzQsMC4yNS00LjA0LTEuMjkyLTUuNDA5bC0xMC40NzktOS4zMDhjMC44MTctMy44OTgsMS4yNTEtNy45MzgsMS4yNTEtMTIuMDc1ICAgYzAtNC4xNDItMC40MzQtOC4xODItMS4yNTMtMTIuMDg1bDEwLjQ3OC05LjMwNWMxLjcyNy0xLjUzNSwyLjEzOC00LjA3MSwwLjk4My02LjA3MmwtMTAuNzA2LTE4LjU0NCAgIGMtMS4xNTQtMi4wMDItMy41NTktMi45MTItNS43NS0yLjE4NGwtMTMuMzM4LDQuNDM0Yy01Ljk4Ni01LjM2Ni0xMy4wNzctOS41MjMtMjAuODg0LTEyLjA4NmwtMi44MjEtMTMuNzMgICBjLTAuNDY1LTIuMjYzLTIuNDU4LTMuODg3LTQuNzY5LTMuODg3SDQ3LjU4NmMtMi4zMTEsMC00LjMwMSwxLjYyNC00Ljc2OCwzLjg4N2wtMi44MiwxMy43MzMgICBjLTIuODgyLDAuOTQ3LTUuNjU5LDIuMTIzLTguMzI2LDMuNDg0VjUxLjY2N2gyNTYuNjU1VjIwNi43NTJ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMTQzLjg3MywxMjcuNzc4Yy0xLjI5Mi0wLjQzLTIuNzA4LDAuMTA5LTMuMzg5LDEuMjg4bC02LjMxMiwxMC45MzFjLTAuNjc5LDEuMTc4LTAuNDM4LDIuNjc0LDAuNTc5LDMuNTc4bDYuMTc3LDUuNDg2ICAgYy0wLjQ4MiwyLjI5Ny0wLjczNyw0LjY3Ny0wLjczNyw3LjExNmMwLDIuNDQxLDAuMjU2LDQuODIzLDAuNzM5LDcuMTIzbC02LjE3Niw1LjQ4NGMtMS4wMTgsMC45MDQtMS4yNiwyLjQtMC41OCwzLjU3OSAgIGw2LjMxMSwxMC45M2MwLjY4MSwxLjE3OSwyLjA5NiwxLjcxNywzLjM4OCwxLjI4N2w3Ljg2MS0yLjYxM2MzLjUyOSwzLjE2Myw3LjcwOCw1LjYxMiwxMi4zMSw3LjEyNGwxLjY2Myw4LjA5MyAgIGMwLjI3NSwxLjMzMiwxLjQ0OSwyLjI4OSwyLjgxMSwyLjI4OWgxMi42MmMxLjM2MiwwLjAwMSwyLjUzNS0wLjk1NywyLjgxLTIuMjg5bDEuNjYzLTguMDk1YzQuNjAyLTEuNTEyLDguNzgtMy45NjMsMTIuMzA5LTcuMTI2ICAgbDcuODU5LDIuNjEzYzEuMjkyLDAuNDI4LDIuNzA3LTAuMTA5LDMuMzg5LTEuMjg4bDYuMzExLTEwLjkzYzAuNjc5LTEuMTc5LDAuNDM4LTIuNjc0LTAuNTgtMy41NzlsLTYuMTc3LTUuNDg2ICAgYzAuNDgyLTIuMjk4LDAuNzM4LTQuNjc5LDAuNzM4LTcuMTE3YzAtMi40NDEtMC4yNTUtNC44MjMtMC43MzktNy4xMjJsNi4xNzUtNS40ODRjMS4wMTgtMC45MDUsMS4yNi0yLjQsMC41NzktMy41OGwtNi4zMS0xMC45MjkgICBjLTAuNjgxLTEuMTgxLTIuMDk4LTEuNzE3LTMuMzg5LTEuMjg3bC03Ljg2MSwyLjYxM2MtMy41MjktMy4xNjMtNy43MDktNS42MTItMTIuMzExLTcuMTIzbC0xLjY2My04LjA5MyAgIGMtMC4yNzMtMS4zMzMtMS40NDgtMi4yOTEtMi44MDktMi4yOTFoLTEyLjYyMWMtMS4zNjIsMC0yLjUzNSwwLjk1OC0yLjgxLDIuMjkxbC0xLjY2Myw4LjA5NSAgIGMtNC42MDIsMS41MTEtOC43ODEsMy45NjMtMTIuMzA5LDcuMTI2TDE0My44NzMsMTI3Ljc3OHogTTE3NC44MjcsMTQwLjc4NWM4LjQ4NywwLDE1LjM5Miw2LjkwNSwxNS4zOTIsMTUuMzkzICAgYzAsOC40ODgtNi45MDUsMTUuMzk0LTE1LjM5MiwxNS4zOTRjLTguNDg3LDAtMTUuMzk0LTYuOTA1LTE1LjM5NC0xNS4zOTRDMTU5LjQzNCwxNDcuNjksMTY2LjM0LDE0MC43ODUsMTc0LjgyNywxNDAuNzg1eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggZD0iTTEwNC42ODgsOTEuOTM4Yy0wLjMzLDEuNTc1LTAuNTA1LDMuMjA2LTAuNTA1LDQuODc4YzAsMS42NzMsMC4xNzUsMy4zMDYsMC41MDYsNC44ODJsLTQuMjMyLDMuNzU4ICAgYy0wLjY5NywwLjYyMS0wLjg2MywxLjY0NS0wLjM5NiwyLjQ1M2w0LjMyNiw3LjQ5MmMwLjQ2NiwwLjgwOCwxLjQzNywxLjE3NywyLjMyMiwwLjg4Mmw1LjM4OC0xLjc5MiAgIGMyLjQxOCwyLjE2OCw1LjI4MywzLjg0OCw4LjQzNiw0Ljg4NGwxLjE0LDUuNTQ2YzAuMTg4LDAuOTEzLDAuOTk0LDEuNTY5LDEuOTI1LDEuNTY5aDguNjUxYzAuOTMzLDAuMDAxLDEuNzM3LTAuNjU2LDEuOTI1LTEuNTY5ICAgbDEuMTQxLTUuNTQ4YzMuMTUyLTEuMDM1LDYuMDE3LTIuNzE2LDguNDM2LTQuODg0bDUuMzg3LDEuNzkyYzAuODg1LDAuMjk0LDEuODU2LTAuMDc1LDIuMzIyLTAuODgzbDQuMzI2LTcuNDkxICAgYzAuNDY1LTAuODA4LDAuMjk5LTEuODMzLTAuMzk3LTIuNDUzbC00LjIzMy0zLjc2YzAuMzMtMS41NzQsMC41MDUtMy4yMDYsMC41MDUtNC44NzhjMC0xLjY3NC0wLjE3NS0zLjMwNi0wLjUwNi00Ljg4MiAgIGw0LjIzMi0zLjc1OWMwLjY5Ni0wLjYyLDAuODY0LTEuNjQ1LDAuMzk4LTIuNDUzbC00LjMyNi03LjQ5MWMtMC40NjctMC44MDktMS40MzctMS4xNzctMi4zMjItMC44ODNsLTUuMzg4LDEuNzkxICAgYy0yLjQxOS0yLjE2OC01LjI4My0zLjg0Ny04LjQzNy00Ljg4M2wtMS4xNC01LjU0N2MtMC4xODgtMC45MTQtMC45OTMtMS41Ny0xLjkyNS0xLjU3aC04LjY1Yy0wLjkzNCwwLTEuNzM4LDAuNjU2LTEuOTI2LDEuNTcgICBsLTEuMTQsNS41NDljLTMuMTU0LDEuMDM2LTYuMDE4LDIuNzE1LTguNDM1LDQuODgzbC01LjM4OC0xLjc5MmMtMC44ODUtMC4yOTMtMS44NTYsMC4wNzUtMi4zMjIsMC44ODNsLTQuMzI1LDcuNDkxICAgYy0wLjQ2NywwLjgwOC0wLjMsMS44MzMsMC4zOTYsMi40NTJMMTA0LjY4OCw5MS45Mzh6IE0xMjcuOTIyLDg2LjI2NWM1LjgxNiwwLDEwLjU0OSw0LjczMiwxMC41NDksMTAuNTUgICBjMCw1LjgxOC00LjczMiwxMC41NDktMTAuNTQ5LDEwLjU0OXMtMTAuNTUtNC43MzEtMTAuNTUtMTAuNTQ5QzExNy4zNzIsOTAuOTk4LDEyMi4xMDUsODYuMjY1LDEyNy45MjIsODYuMjY1eiIgZmlsbD0iI0ZGRkZGRiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                    <input value="Buy" type="button" id="buyBtn" class="btn btn-lg btn-primary" style="display: none;" onclick="window.location.href='Cart.aspx'"/>
                    <h4 class="text-center">CHOOSE THE COMPONENTS YOU WOULD LIKE BY CLICKING THE BOXES BELOW</h4>
                    <div class="row">
                        <div class="col-md-12" id="control-container">
                            <div class="col-md-4">
                                <div class="box hovereffect" id="processors">
                                    <div class="overlay">
                                        <a id="animateCPU" href="#modalCPU">
                                            <h3 class="info">Buy Now</h3>
                                        </a>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDE4MCAxODAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4MCAxODA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTI4cHgiIGhlaWdodD0iMTI4cHgiPgo8cGF0aCBkPSJNMTgwLDE2OS41MzFWMTAuNDY5Yy0yLjkzMSwxLjYxNS02LjY4NiwxLjE4Ny05LjE3MS0xLjI5OGMtMi40ODUtMi40ODUtMi45MTQtNi4yNC0xLjI5OC05LjE3MUgzMS45MDV2Mi42NCAgYzAsMi4zNDQtMS44OTksNC4yNDMtNC4yNDMsNC4yNDNjLTIuMzQzLDAtNC4yNDItMS44OTktNC4yNDItNC4yNDNWMEgxMC40NjljMS42MTYsMi45MzEsMS4xODgsNi42ODYtMS4yOTgsOS4xNzEgIEM2LjY4NSwxMS42NTUsMi45MzEsMTIuMDg0LDAsMTAuNDY5djE1OS4wNjNjMi45MzEtMS42MTUsNi42ODUtMS4xODcsOS4xNzEsMS4yOThjMi40ODUsMi40ODUsMi45MTMsNi4yNCwxLjI5OCw5LjE3MUgyMy40MnYtMi42NCAgYzAtMi4zNDQsMS44OTktNC4yNDMsNC4yNDItNC4yNDNjMi4zNDQsMCw0LjI0MywxLjg5OSw0LjI0Myw0LjI0M1YxODBoMTM3LjYyNmMtMS42MTYtMi45MzEtMS4xODgtNi42ODYsMS4yOTgtOS4xNzEgIEMxNzMuMzE0LDE2OC4zNDUsMTc3LjA2OSwxNjcuOTE2LDE4MCwxNjkuNTMxeiBNMTU3Ljk0OCwxMzYuMjk1YzAsMTEuOTM5LTkuNzE0LDIxLjY1My0yMS42NTMsMjEuNjUzaC0yMi4zOTggIGMtMy4wOTksMC01LjYxLTIuNTEyLTUuNjEtNS42MWMwLTMuMDk5LDIuNTEyLTUuNjEsNS42MS01LjYxaDIyLjM5OGM1Ljc1MywwLDEwLjQzMy00LjY4LDEwLjQzMy0xMC40MzN2LTkyLjU5ICBjMC01Ljc1My00LjY4LTEwLjQzMy0xMC40MzMtMTAuNDMzSDQzLjcwM2MtNS43NTEsMC0xMC40MzEsNC42OC0xMC40MzEsMTAuNDMzdjkyLjU5YzAsNS43NTMsNC42NzksMTAuNDMzLDEwLjQzMSwxMC40MzNoMjIuNCAgYzMuMDk5LDAsNS42MSwyLjUxMiw1LjYxLDUuNjFjMCwzLjA5OS0yLjUxMiw1LjYxLTUuNjEsNS42MWgtMjIuNGMtMTEuOTM4LDAtMjEuNjUxLTkuNzE0LTIxLjY1MS0yMS42NTN2LTkyLjU5ICBjMC0xMS45NCw5LjcxMy0yMS42NTMsMjEuNjUxLTIxLjY1M2g5Mi41OTJjMTEuOTM5LDAsMjEuNjUzLDkuNzE0LDIxLjY1MywyMS42NTNWMTM2LjI5NXogTTUyLjUyMSwxMzQuMTU2ICBjLTMuNjgxLDAtNi42NzgtMi45OTQtNi42NzgtNi42ODFWNTIuNTI0YzAtMy42ODcsMi45OTctNi42ODEsNi42NzgtNi42ODFoNzQuOTU0YzMuNjg3LDAsNi42ODEsMi45OTQsNi42ODEsNi42ODF2NzQuOTUxICBjMCwzLjY4Ni0yLjk5NCw2LjY4MS02LjY4MSw2LjY4MUg1Mi41MjF6IE03Ni4zMTYsNzguNjI0djQuMjM5aC02LjQ4MnYtNC42NzZjMC0zLjExNi0xLjM3MS00LjMwMi0zLjU1NC00LjMwMiAgYy0yLjE4MSwwLTMuNTU0LDEuMTg2LTMuNTU0LDQuMzAydjIzLjU2M2MwLDMuMTE1LDEuMzczLDQuMjM3LDMuNTU0LDQuMjM3YzIuMTgzLDAsMy41NTQtMS4xMjIsMy41NTQtNC4yMzd2LTYuMjMzaDYuNDgydjUuNzk1ICBjMCw2Ljk4My0zLjQ5LDEwLjk3My0xMC4yMjMsMTAuOTczYy02LjczMywwLTEwLjIyMy0zLjk4OS0xMC4yMjMtMTAuOTczVjc4LjYyNGMwLTYuOTgyLDMuNDktMTAuOTcyLDEwLjIyMy0xMC45NzIgIEM3Mi44MjYsNjcuNjUyLDc2LjMxNiw3MS42NDIsNzYuMzE2LDc4LjYyNHogTTkwLjU5Miw2OC4xNTFIODAuNDkzdjQzLjYzNWg2Ljg1NlY5NS4zOTJoMy4yNDJjNi44NTYsMCwxMC4yMjMtMy44MDMsMTAuMjIzLTEwLjc4MyAgdi01LjY3NEMxMDAuODE0LDcxLjk1NCw5Ny40NDgsNjguMTUxLDkwLjU5Miw2OC4xNTF6IE05My45NTgsODUuMDQ1YzAsMy4xMTYtMS4xODYsNC4xMTMtMy4zNjYsNC4xMTNIODcuMzVWNzQuMzg1aDMuMjQyICBjMi4xODEsMCwzLjM2NiwwLjk5NywzLjM2Niw0LjExM1Y4NS4wNDV6IE0xMTcuNjQ2LDY4LjE1MWg2LjQ4M3YzMy4yMjVjMCw2Ljk4Mi0zLjQ5MSwxMC45NzItMTAuMjI0LDEwLjk3MiAgYy02LjczMywwLTEwLjIyNC0zLjk4OS0xMC4yMjQtMTAuOTcyVjY4LjE1MWg2Ljg1N3YzMy42NjFjMCwzLjExNiwxLjM3MSw0LjIzOCwzLjU1Myw0LjIzOGMyLjE4MywwLDMuNTU0LTEuMTIyLDMuNTU0LTQuMjM4VjY4LjE1MSAgeiIgZmlsbD0iI0ZGRkZGRiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                                    <h4 id="processorsTitle">Processors</h4>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box hovereffect" id="motherboards">
                                    <div class="overlay">
                                         <a id="animateMotherboards" href="#modalMotherboards">
                                            <h3 class="info">Buy Now</h3>
                                        </a>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIxMjhweCIgaGVpZ2h0PSIxMjhweCI+CjxnPgoJPHJlY3QgeD0iMzEiIHk9IjQ0LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxNCIgeT0iNDQuNSIgd2lkdGg9IjQiIGhlaWdodD0iNSIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMzEiIHk9IjQ4LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDQuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjQwLjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0NC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMzQuNzA5LDMwLjVoMTYuNTgyYzAuMzkxLDAsMC43MDktMC4zMTgsMC43MDktMC43MDlWMTMuMjA5YzAtMC4zOTEtMC4zMTgtMC43MDktMC43MDktMC43MDlIMzQuNzA5ICAgQzM0LjMxOCwxMi41LDM0LDEyLjgxOCwzNCwxMy4yMDl2MTYuNTgyQzM0LDMwLjE4MiwzNC4zMTgsMzAuNSwzNC43MDksMzAuNXogTTM1LDIzLjVoMnYtMWgtMnYtMmgydi0xaC0ydi0yaDJ2LTJoMnYtMmgydjJoMXYtMmgyICAgdjJoMXYtMmgydjJoMnYyaDJ2MmgtMnYxaDJ2MmgtMnYxaDJ2MmgtMnYyaC0ydjJoLTJ2LTJoLTF2MmgtMnYtMmgtMXYyaC0ydi0yaC0ydi0yaC0yVjIzLjV6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDAuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iOSIgeT0iMzEuNSIgd2lkdGg9IjMiIGhlaWdodD0iMyIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjM2LjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSIzNi41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNNTcsNi41di0xYzAtMC41NTMtMC40NDctMS0xLTFzLTEsMC40NDctMSwxdjFoLTF2LTNoLTRoLTJoLTJoLTJoLTJoLTJoLTJoLTJoLTR2M2gtMXYtMWMwLTAuNTUzLTAuNDQ4LTEtMS0xICAgcy0xLDAuNDQ3LTEsMXYxaC0xdi0xYzAtMC41NTMtMC40NDgtMS0xLTFzLTEsMC40NDctMSwxdjFoLTRoLTZoLTJIOEgwdjVoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNCAgIGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjIwaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYzaDYwdi01MEg1N3ogTTQsMzQuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzNC41LDQsMzQuNXogICAgTTQsMzEuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzMS41LDQsMzEuNXogTTQsMjguNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMSAgIFM0LjU1MiwyOC41LDQsMjguNXogTTE2LDM4LjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzE1LjQ0OCwzOC41LDE2LDM4LjV6IE04LDguNWg2djE3aC0ydjEgICBjMCwwLjU1My0wLjQ0OCwxLTEsMXMtMS0wLjQ0Ny0xLTF2LTFIOFY4LjV6IE03LDI5LjVoN3Y3SDdWMjkuNXogTTE0LDM5LjVjMCwwLjU1Mi0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFzMC40NDgtMSwxLTEgICBTMTQsMzguOTQ4LDE0LDM5LjV6IE0yMSw0Ny41YzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjJoLTh2LTJoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMWgtMSAgIGMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDh2MmgxYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjFIMjF6IE0xOCwzOS41YzAtMC41NTIsMC40NDgtMSwxLTEgICBzMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxUzE4LDQwLjA1MiwxOCwzOS41eiBNMjIsMzEuNWgtMnYxYzAsMC41NTMtMC40NDgsMS0xLDFzLTEtMC40NDctMS0xdi0xaC0ydi0yM2g2VjMxLjV6IE01MCw1LjVoMnYxaC0yICAgVjUuNXogTTQ2LDUuNWgydjFoLTJWNS41eiBNNDIsNS41aDJ2MWgtMlY1LjV6IE0zOCw1LjVoMnYxaC0yVjUuNXogTTM0LDUuNWgydjFoLTJWNS41eiBNMzIsMTMuMjA5ICAgYzAtMS40OTQsMS4yMTUtMi43MDksMi43MDktMi43MDloMTYuNTgyYzEuNDk0LDAsMi43MDksMS4yMTUsMi43MDksMi43MDl2MTYuNTgyYzAsMS40OTQtMS4yMTUsMi43MDktMi43MDksMi43MDlIMzQuNzA5ICAgQzMzLjIxNSwzMi41LDMyLDMxLjI4NSwzMiwyOS43OTFWMTMuMjA5eiBNMjgsMTUuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDE1LjUsMjgsMTUuNXogTTI4LDE4LjUgICBjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwxOC41LDI4LDE4LjV6IE0yOCwyMS41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMSAgIFMyNy40NDgsMjEuNSwyOCwyMS41eiBNMjgsMjQuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDI0LjUsMjgsMjQuNXogTTI4LDI3LjVjMC41NTIsMCwxLDAuNDQ4LDEsMSAgIHMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwyNy41LDI4LDI3LjV6IE0yOCwzMC41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMVMyNy40NDgsMzAuNSwyOCwzMC41eiAgICBNMjUsMTcuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjQuNDQ4LDE3LjUsMjUsMTcuNXogTTI1LDIxLjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDEgICBzLTEtMC40NDgtMS0xUzI0LjQ0OCwyMS41LDI1LDIxLjV6IE01NSw0MC41YzAuNTUzLDAsMSwwLjQ0NywxLDFzLTAuNDQ3LDEtMSwxaC0xdjJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMXYyaDEgICBjMC41NTMsMCwxLDAuNDQ3LDEsMXMtMC40NDcsMS0xLDFoLTF2MkgyNnYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaC0xYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDF2LTIgICBoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDI4djJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMSAgIHYySDU1eiBNNTYsMjYuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM1Ni41NTIsMjYuNSw1NiwyNi41eiBNNTYsMTkuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMSAgIHMxLDAuNDQ4LDEsMVM1Ni41NTIsMTkuNSw1NiwxOS41eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMTAiIHk9IjEwLjUiIHdpZHRoPSIyIiBoZWlnaHQ9IjEzIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxOCIgeT0iMTAuNSIgd2lkdGg9IjIiIGhlaWdodD0iMTkiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iNDAuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iMzYuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjM5IiB5PSIxNy41IiB3aWR0aD0iOCIgaGVpZ2h0PSI4IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="
                                        class="img-center-nowidth" />
                                    <h4 id="motherboardsTitle">Motherboards</h4>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box hovereffect" id="power-units">
                                    <div class="overlay">
                                        <a id="animatePU" href="#modalPU">
                                            <h3 class="info">Buy Now</h3>
                                        </a>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjEyOHB4IiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSIwIDAgNDQ2LjI3MSA0NDYuMjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ0Ni4yNzEgNDQ2LjI3OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQzOS4xMjQsODEuMTZoLTY4LjUxMVY1OS40MjRjMC0zLjk0Ni0zLjE5OS03LjE0Ni03LjE0Ni03LjE0NmgtNDguOTk5Yy0zLjk0NiwwLTcuMTQ2LDMuMTk5LTcuMTQ2LDcuMTQ2VjgxLjE2SDEzOC45NDcgICAgVjU5LjQyNGMwLTMuOTQ2LTMuMTk5LTcuMTQ2LTcuMTQ2LTcuMTQ2SDgyLjgwMmMtMy45NDYsMC03LjE0NiwzLjE5OS03LjE0Niw3LjE0NlY4MS4xNkg3LjE0NkMzLjIsODEuMTYsMCw4NC4zNTksMCw4OC4zMDYgICAgdjQ1LjYxNGMwLDMuOTQ2LDMuMTk5LDcuMTQ2LDcuMTQ2LDcuMTQ2aDIzLjIwMWgzODUuNTc3aDIzLjIwMWMzLjk0NSwwLDcuMTQ2LTMuMTk5LDcuMTQ2LTcuMTQ2Vjg4LjMwNiAgICBDNDQ2LjI3LDg0LjM2LDQ0My4wNyw4MS4xNiw0MzkuMTI0LDgxLjE2eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0zMC4zNDYsMzg0LjcyM2MwLDUuMTE5LDQuMTQ5LDkuMjcsOS4yNjgsOS4yN2gzNjcuMDQxYzUuMTE5LDAsOS4yNjktNC4xNSw5LjI2OS05LjI3VjE2NS40MDRIMzAuMzQ2VjM4NC43MjN6ICAgICBNMTc5LjI2MiwyOTAuMDE0bDIxLjcxNi02OS40MDFjMC4zNzMtMS4xOTIsMS40NzgtMi4wMDQsMi43MjctMi4wMDRoMzMuODY0YzAuOTE0LDAsMS43NzEsMC40MzgsMi4zMTEsMS4xNzcgICAgYzAuNTM4LDAuNzM4LDAuNjg5LDEuNjkxLDAuNDA2LDIuNTYxbC0xMy4yMjEsNDAuODM5aDM3LjIxN2MxLjA0NywwLDIuMDA4LDAuNTcyLDIuNTEsMS40OWMwLjUsMC45MTgsMC40NTksMi4wMzUtMC4xMDcsMi45MTQgICAgbC00OS43MTksNzcuMTQ5Yy0wLjUzOCwwLjgzNS0xLjQ1MywxLjMxLTIuNDAyLDEuMzFjLTAuMzQzLDAtMC42ODktMC4wNjItMS4wMjUtMC4xOWMtMS4yNjMtMC40ODUtMi4wMTItMS43OTMtMS43OTMtMy4xMjkgICAgbDguMDI4LTQ5LjAwNUgxODEuOTljLTAuOTA5LDAtMS43NjQtMC40MzQtMi4zMDItMS4xNjZDMTc5LjE0OCwyOTEuODI2LDE3OC45OSwyOTAuODgxLDE3OS4yNjIsMjkwLjAxNHoiIGZpbGw9IiNGRkZGRkYiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                                    <h4 id="PUTitle">Power Units</h4>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box hovereffect" id="ram">
                                    <div class="overlay">
                                         <a id="animateRAM" href="#modalRAM">
                                            <h3 class="info">Buy Now</h3>
                                        </a> 
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNTZweCIgaGVpZ2h0PSIyNTZweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTM5LjE0NSwzLjEwM2MtMS4yNDQsMC4yOTktMi4yNDIsMS4yOTYtMi41NDIsMi41NDFjLTAuMjkzLDEuMjE1LDAuMDUxLDIuNDYxLDAuOTIyLDMuMzMxICAgIGMwLjY2NywwLjY2NywxLjU1MiwxLjAyNCwyLjQ3NiwxLjAyNGMwLjI4MywwLDAuNTctMC4wMzMsMC44NTUtMC4xMDNjMS4yNDQtMC4zLDIuMjQyLTEuMjk3LDIuNTQxLTIuNTQgICAgYzAuMjkzLTEuMjE1LTAuMDUyLTIuNDYtMC45MjItMy4zMzFDNDEuNjA1LDMuMTU1LDQwLjM2MSwyLjgxLDM5LjE0NSwzLjEwM3ogTTQxLjQ1Myw2Ljg4OWMtMC4xMjQsMC41MTMtMC41NTEsMC45NC0xLjA2NSwxLjA2NCAgICBDMzkuODQ2LDguMDgyLDM5LjMxOSw3Ljk0LDM4Ljk0LDcuNTZjLTAuMzgtMC4zOC0wLjUyMi0wLjkwNy0wLjM5Mi0xLjQ0OGMwLjEyNC0wLjUxNCwwLjU1Mi0wLjk0MSwxLjA2NS0xLjA2NCAgICBDMzkuNzQ0LDUuMDE2LDM5Ljg3NCw1LDQwLjAwMSw1YzAuMzk5LDAsMC43NzIsMC4xNTIsMS4wNiwwLjQzOUM0MS40NCw1LjgxOSw0MS41ODMsNi4zNDcsNDEuNDUzLDYuODg5eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0zNi42MDMsNTIuNjQ0Yy0wLjI5MywxLjIxNSwwLjA1MSwyLjQ2MSwwLjkyMiwzLjMzMWMwLjY2NywwLjY2NywxLjU1MiwxLjAyNCwyLjQ3NiwxLjAyNCAgICBjMC4yODMsMCwwLjU3LTAuMDMzLDAuODU1LTAuMTAzYzEuMjQ0LTAuMywyLjI0Mi0xLjI5NywyLjU0MS0yLjU0YzAuMjkzLTEuMjE1LTAuMDUyLTIuNDYtMC45MjItMy4zMzEgICAgYy0wLjg3LTAuODY5LTIuMTE0LTEuMjE0LTMuMzMtMC45MjNDMzcuOTAxLDUwLjQwMSwzNi45MDMsNTEuMzk4LDM2LjYwMyw1Mi42NDR6IE00MC4wMDEsNTJjMC4zOTksMCwwLjc3MiwwLjE1MiwxLjA2LDAuNDM5ICAgIGMwLjM3OSwwLjM4LDAuNTIyLDAuOTA3LDAuMzkyLDEuNDQ5Yy0wLjEyNCwwLjUxMy0wLjU1MSwwLjk0LTEuMDY1LDEuMDY0Yy0wLjU0MiwwLjEyNy0xLjA2OS0wLjAxMi0xLjQ0OC0wLjM5MyAgICBjLTAuMzgtMC4zOC0wLjUyMi0wLjkwNy0wLjM5Mi0xLjQ0OGMwLjEyNC0wLjUxNCwwLjU1Mi0wLjk0MSwxLjA2NS0xLjA2NEMzOS43NDQsNTIuMDE2LDM5Ljg3NCw1Miw0MC4wMDEsNTJ6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTQzLjQwNSwwSDI3LjV2MWMwLDEuMTAzLTAuODk3LDItMiwycy0yLTAuODk3LTItMlYwaC0zaC0yaC01djVoMnY1MGgtMnY1aDVoMmgzdi0xYzAtMS4xMDMsMC44OTctMiwyLTJzMiwwLjg5NywyLDJ2MSAgICBoMTUuOTA1YzEuNzA3LDAsMy4wOTUtMS4zODksMy4wOTUtMy4wOTZWMy4wOTZDNDYuNSwxLjM4OSw0NS4xMTEsMCw0My40MDUsMHogTTE4LjUsNThoLTN2LTFoMlYzaC0yVjJoM1Y1OHogTTQ0LjUsMTFoLTV2Mmg1djEgICAgaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXY3LjkwNCAgICBjMCwwLjYwNC0wLjQ5MSwxLjA5Ni0xLjA5NSwxLjA5NkgyOS4zNzRjLTAuNDQ1LTEuNzI0LTIuMDEzLTMtMy44NzQtM3MtMy40MjgsMS4yNzYtMy44NzQsM0gyMC41VjJoMS4xMjYgICAgYzAuNDQ1LDEuNzI0LDIuMDEzLDMsMy44NzQsM3MzLjQyOC0xLjI3NiwzLjg3NC0zaDE0LjAzMUM0NC4wMDksMiw0NC41LDIuNDkxLDQ0LjUsMy4wOTZWMTF6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTMyLjUsNmgtMnYyaC0xVjZoLTJ2MmgtMVY2aC0ydjJoLTJ2OGgydjJoMnYtMmgxdjJoMnYtMmgxdjJoMnYtMmgyVjhoLTJWNnogTTMyLjUsMTRoLTh2LTRoOFYxNHoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNMzIuNSw0MmgtMnYyaC0xdi0yaC0ydjJoLTF2LTJoLTJ2MmgtMnY4aDJ2Mmgydi0yaDF2Mmgydi0yaDF2Mmgydi0yaDJ2LThoLTJWNDJ6IE0zMi41LDUwaC04di00aDhWNTB6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTMyLjUsMjRoLTJ2MmgtMXYtMmgtMnYyaC0xdi0yaC0ydjJoLTJ2OGgydjJoMnYtMmgxdjJoMnYtMmgxdjJoMnYtMmgydi04aC0yVjI0eiBNMzIuNSwzMmgtOHYtNGg4VjMyeiIgZmlsbD0iI0ZGRkZGRiIvPgoJPC9nPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                                    <h4 id="RAMTitle">RAM</h4>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box hovereffect" id="graphic-cards">
                                    <div class="overlay">
                                        <a id="animateGraphicsCards" href="#modalGraphicsCards">
                                            <h3 class="info">Buy Now</h3>
                                        </a>                                      
                                    </div>
                                    <img src="Styles/img/graphics-card.png" class="img-center-nowidth" />
                                    <h4 id="graphicsCardsTitle">Graphics Cards</h4>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box hovereffect" id="hard-drives">
                                    <div class="overlay">
                                         <a id="animateHardDrives" href="#modalHardDrives">
                                            <h3 class="info">Buy Now</h3>
                                        </a> 
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjI1NnB4IiBoZWlnaHQ9IjI1NnB4IiB2aWV3Qm94PSIwIDAgNDM4LjUzMyA0MzguNTMyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0MzguNTMzIDQzOC41MzI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNNDMzLjk3OCwyNDMuNTMxTDM3Ny43MjQsNzAuNTE5Yy0zLjIzNy0xMC4wODktOS4yMzItMTguMjc0LTE3Ljk4Ni0yNC41NTRzLTE4LjM3MS05LjQxOS0yOC44MzYtOS40MTlIMTA3LjYzNyAgICBjLTEwLjQ3MiwwLTIwLjA4LDMuMTM3LTI4LjgzNyw5LjQxOWMtOC43NTcsNi4yOC0xNC43NTMsMTQuNDY1LTE3Ljk4NywyNC41NTRMNC41NjgsMjQzLjUzMUMxLjUyMywyNTMuMDUyLDAsMjYwLjE4OSwwLDI2NC45NDcgICAgdjkxLjM2MWMwLDEyLjU1OSw0LjQ3MSwyMy4zMDgsMTMuNDE3LDMyLjI1N2M4Ljk0Nyw4Ljk0OSwxOS43MDEsMTMuNDIyLDMyLjI2NCwxMy40MjJoMzQ3LjE3NiAgICBjMTIuNTYsMCwyMy4zMTUtNC40NzMsMzIuMjY1LTEzLjQyMmM4Ljk0NS04Ljk0OSwxMy40MTEtMTkuNjk4LDEzLjQxMS0zMi4yNTd2LTkxLjM2MSAgICBDNDM4LjUzMywyNjAuMTg5LDQzNy4wMjMsMjUzLjA1Miw0MzMuOTc4LDI0My41MzF6IE05NS42NDYsODEuNjQ5YzAuNzYzLTIuNDc0LDIuMjg0LTQuNTIxLDQuNTY4LTYuMTM2ICAgIGMyLjI4Ni0xLjYxOSw0Ljc1OS0yLjQyOCw3LjQyMy0yLjQyOGgyMjMuMjYyYzIuNjY2LDAsNS4xNDQsMC44MSw3LjQyNiwyLjQyOGMyLjI4MywxLjYxNSwzLjgwNiwzLjY2Miw0LjU2NSw2LjEzNiAgICBsNDQuODIzLDEzNy42MTdINTAuODIyTDk1LjY0Niw4MS42NDl6IE00MDIuMDAxLDM1Ni4zMDljMCwyLjQ3MS0wLjkxMSw0LjYwOS0yLjcxOCw2LjQyYy0xLjgxMywxLjgxLTMuOTQ5LDIuNzA3LTYuNDIsMi43MDcgICAgSDQ1LjY4MWMtMi40NzQsMC00LjYxNS0wLjg5Ny02LjQyMy0yLjcwN2MtMS44MDctMS44MTEtMi43MTItMy45NDktMi43MTItNi40MnYtOTEuMzYxYzAtMi40NzksMC45MDUtNC42MTMsMi43MTItNi40MjggICAgYzEuODA5LTEuODAzLDMuOTQ5LTIuNzAzLDYuNDIzLTIuNzAzaDM0Ny4xODNjMi40NzEsMCw0LjYwOSwwLjg5Niw2LjQyLDIuNzAzYzEuODA3LDEuODE0LDIuNzE0LDMuOTQ5LDIuNzE0LDYuNDI4djkxLjM2MSAgICBINDAyLjAwMXoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNMjc0LjA4NywyODcuNzg2Yy02LjI4MywwLTExLjY2MiwyLjIzMS0xNi4xMzIsNi43MDhjLTQuNDczLDQuNDc2LTYuNzE0LDkuODUyLTYuNzE0LDE2LjEzMiAgICBjMCw2LjI3OSwyLjIzNywxMS42NTksNi43MTQsMTYuMTMyYzQuNDczLDQuNDc3LDkuODQ5LDYuNzA3LDE2LjEzMiw2LjcwN3MxMS42NjMtMi4yMywxNi4xMzItNi43MDcgICAgYzQuNDctNC40Nyw2LjcxNS05Ljg0OSw2LjcxNS0xNi4xMzJjMC02LjI4LTIuMjM4LTExLjY2My02LjcxNS0xNi4xMzJDMjg1Ljc0NCwyOTAuMDIxLDI4MC4zNzEsMjg3Ljc4NiwyNzQuMDg3LDI4Ny43ODZ6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTM0Ny4xNzgsMjg3Ljc4NmMtNi4yODMsMC0xMS42NjMsMi4yMzgtMTYuMTM2LDYuNzA4Yy00LjQ3Myw0LjQ3Ni02LjcwNyw5Ljg1Mi02LjcwNywxNi4xMzIgICAgYzAsNi4yNzksMi4yMzQsMTEuNjU5LDYuNzA3LDE2LjEzMmM0LjQ3Myw0LjQ3Nyw5Ljg1Myw2LjcwNywxNi4xMzYsNi43MDdjNi4yNzYsMCwxMS42NjMtMi4yMywxNi4xMzItNi43MDcgICAgYzQuNDctNC40Nyw2LjcxNS05Ljg0OSw2LjcxNS0xNi4xMzJjMC02LjI4LTIuMjM4LTExLjY2My02LjcxNS0xNi4xMzJDMzU4LjgzMywyOTAuMDIxLDM1My40NTUsMjg3Ljc4NiwzNDcuMTc4LDI4Ny43ODZ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                                    <h4 id="hardDrivesTitle">HDD & SSD</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="modalCPU">
        <div class="close-modalCPU">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel1" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="lblPickProcessor" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a processor" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>

        <div class="modal-content">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table align="center" class="auto-style2">
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlProcessors" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProcessors_SelectedIndexChanged" CssClass="ddlProcessor">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Panel ID="pnlProcessor" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">
                                <div class="logoImage">
                                    <asp:Image ID="ImageLogoProcessor" runat="server" Height="60px" Width="150px" ImageUrl="~/Styles/img/logo.png" />
                                </div>
                                <div class="productImage">
                                    <asp:Image ID="ImageProcessor" runat="server" Height="130px" Width="170px" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="processorNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C"></asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblCores" runat="server" Font-Bold="True" ForeColor="#605A5A">Cores:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="coresResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblThreads" runat="server" Font-Bold="True" ForeColor="#605A5A">Threads:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="threadsResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblClock" runat="server" Font-Bold="True" ForeColor="#605A5A">Clock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="clockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblCache" runat="server" Font-Bold="True" ForeColor="#605A5A">Cache:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="cacheResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblProcessorScore" runat="server" Font-Bold="True" ForeColor="#605A5A">Score:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Panel ID="pnlStars" runat="server" Height="16px">
                                        </asp:Panel>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblProcessorStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="processorStockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="lblProcessorPrice" runat="server" ForeColor="Gray" Font-Size="Medium">Price:</asp:Label>

                                    <br />
                                    <asp:Label ID="processorPriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>
                                </div>
                                <%--<button id="processorBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity1" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart1" CssClass="btn btn-primary btn-lg glyphicon-shopping-cart" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />
                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <%--<div class="wrapper">
                <div class="jcarousel-wrapper">
                    <div class="jcarousel">
                        <ul>
                            <li>
                                <img src="Styles\img\pro.png" alt="Image 1"></li>
                            <li>
                                <img src="Styles\img\background.jpg" alt="Image 2"></li>
                            <li>
                                <img src="Styles\img\i5processor.jpg" alt="Image 3"></li>
                            <li>
                                <img src="Styles\img\students.jpg" alt="Image 4"></li>
                            <li>
                                <img src="Styles\img\typing.jpg" alt="Image 5"></li>
                        </ul>
                    </div>

                    <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                    <a href="#" class="jcarousel-control-next">&rsaquo;</a>

                    <p class="jcarousel-pagination"></p>
                </div>
            </div>--%>
            <br />
        </div>
    </div>
    <div id="modalMotherboards">
        <div class="close-modalMotherboards">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel3" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a motherboard" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlMotherboards" runat="server" AutoPostBack="True" CssClass="ddlMotherboard" OnSelectedIndexChanged="ddlMotherboards_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Panel ID="motherboardPanel" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">

                                <div class="productImage">
                                    <asp:Image ID="ImageMotherboard" runat="server" Height="130px" Width="170px" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="motherboardNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C">Motherboard</asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblDesciption" runat="server" Font-Bold="True" ForeColor="#605A5A">Description:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="descResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblMotherboardsStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="stockMotherboardsResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="Label1" runat="server" ForeColor="Gray">Price:</asp:Label>
                                    <br />
                                    <asp:Label ID="motherboardsPriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>

                                </div>
                                <%--<button id="motherboardBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity2" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart2" CssClass="btn btn-primary btn-lg" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />

                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div id="modalPU">
        <div class="close-modalPU">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel2" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a Power Unit" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlPowerUnits" runat="server" AutoPostBack="True" CssClass="ddlPowerUnit" OnSelectedIndexChanged="ddlPowerUnits_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Panel ID="powerUnitsPanel" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">
                                <div class="productImage">
                                    <asp:Image ID="ImagePowerUnit" runat="server" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="powerUnitNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C"></asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblPowerUnitsDesc" runat="server" Font-Bold="True" ForeColor="#605A5A">Description:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="powerUnitsDescResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblPowerUnitsStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="powerUnitsStockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="lblPowerUnitsPrice" runat="server" ForeColor="Gray">Price:</asp:Label>
                                    <br />
                                    <asp:Label ID="powerUnitsPriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>

                                </div>
                                <%--<button id="powerUnitBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity3" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart3" CssClass="btn btn-primary btn-lg" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />

                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div id="modalGraphicsCards">
        <div class="close-modalGraphicsCards">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel4" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a Graphics Card" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
            <asp:UpdatePanel ID="panelGraphicsCards" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlGraphicsCards" runat="server" AutoPostBack="True" CssClass="ddlGraphicsCard" OnSelectedIndexChanged="ddlGraphicsCards_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Panel ID="graphicsCardsPanel" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">

                                <div class="productImage">
                                    <asp:Image ID="ImageGraphicsCard" runat="server" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="graphicsCardNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C"></asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblGraphicsCardDesc" runat="server" Font-Bold="True" ForeColor="#605A5A">Description:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="graphicsCardDescResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblGraphicsCardStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="graphicsCardStockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="lblGraphicsCardResult" runat="server" ForeColor="Gray">Price:</asp:Label>
                                    <br />
                                    <asp:Label ID="graphicsCardPriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>
                                </div>
                                <%--<button id="graphicsCardBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity4" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart4" CssClass="btn btn-primary btn-lg" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />

                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div id="modalRAM">
        <div class="close-modalRAM">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel5" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a RAM" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlRAM" runat="server" AutoPostBack="True" CssClass="ddlRAM" OnSelectedIndexChanged="ddlRAM_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Panel ID="panelRAM" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">

                                <div class="productImage">
                                    <asp:Image ID="ImageRAM" runat="server" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="lblRAMNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C"></asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblRAMDesc" runat="server" Font-Bold="True" ForeColor="#605A5A">Description:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="RAMDescResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblRAMStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="RAMStockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="lblRAMPrice" runat="server" ForeColor="Gray">Price:</asp:Label>
                                    <br />
                                    <asp:Label ID="RAMPriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>

                                </div>
                                <%--<button id="RAMBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity5" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart5" CssClass="btn btn-primary btn-lg" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />

                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div id="modalHardDrives">
        <div class="close-modalHardDrives">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel6" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Choose a Hard Drive" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlHardDrives" runat="server" AutoPostBack="True" CssClass="ddlHardDrive" OnSelectedIndexChanged="ddlHardDrives_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:Panel ID="panelHardDrives" runat="server" Visible="True" Height="306px">
                        <div class="outerTable">
                            <div class="imageGroup">

                                <div class="productImage">
                                    <asp:Image ID="ImageHardDrive" runat="server" Height="130px" Width="170px" ImageUrl="~/Styles/img/web.png" />
                                </div>
                            </div>
                            <div class="productInfo">
                                <div class="info-row">
                                    <asp:Label ID="hardDriveNameResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#4C4C4C"></asp:Label>
                                </div>
                                <div class="info-row" style="height: 15%;">
                                    <div class="info-col1">
                                        <asp:Label ID="lblHardDriveDesc" runat="server" Font-Bold="True" ForeColor="#605A5A">Description:</asp:Label>

                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="hardDriveDescResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="info-col1">
                                        <asp:Label ID="lblHardDriveStock" runat="server" Font-Bold="True" ForeColor="#605A5A">Stock:</asp:Label>
                                    </div>
                                    <div class="info-col2">
                                        <asp:Label ID="hardDriveStockResult" runat="server" ForeColor="Gray"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="auto-style4">
                                <div class="priceHolder">
                                    <asp:Label ID="lblHardDrivePrice" runat="server" ForeColor="Gray">Price:</asp:Label>
                                    <br />
                                    <asp:Label ID="hardDrivePriceResult" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                    <p class="freeShipping">Free Shipping</p>

                                </div>
<%--                                <button id="hardDriveBtn" type="button" class="btn btn-primary btn-lg">Save my choice</button>--%>
                                <asp:TextBox ID="textQuantity6" runat="server" CssClass="auto-style3" Height="25px" TextMode="Number" Width="29px">1</asp:TextBox>
                                <asp:Button ID="buttonAddToCart6" CssClass="btn btn-primary btn-lg" runat="server" Text="Add to cart" Width="175px" Height="47px" OnClick="AddToCart" />


                            </div>
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <script src="/scripts/animatedModal.js"></script>
    <script src="/scripts/jcarousel-processors.js"></script>
    <script type="text/javascript">
        function blockUI() {
            $(".backImgDashboard").addClass("blockUI");
        }

        $(".close-modalCPU").on("click", function () {
            $(".backImgDashboard").removeClass("blockUI");
        });

        $("#animateCPU").animatedModal({
            modalTarget: 'modalCPU',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '75%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateMotherboards").animatedModal({
            modalTarget: 'modalMotherboards',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '65%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animatePU").animatedModal({
            modalTarget: 'modalPU',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '55%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateGraphicsCards").animatedModal({
            modalTarget: 'modalGraphicsCards',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '55%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateHardDrives").animatedModal({
            modalTarget: 'modalHardDrives',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '55%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateRAM").animatedModal({
            modalTarget: 'modalRAM',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '55%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateCPU").on("click", function () {
            blockUI();
        });
        $(".hovereffect").mouseover(function () {
            $(this).find("h4").css("visibility", "hidden");
        });
        $(".hovereffect").mouseout(function () {
            $(this).find("h4").css("visibility", "visible");
        });
        $(function () {
            $(".modal-content").slimScroll({
                height: '100%'
            });
        });
        
       $(document).on('click', "#" + "<%= buttonAddToCart1.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlProcessor");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("processorsTitle").innerHTML = value;
            console.log(value);
            $("#processorsTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalCPU").trigger('click');
        });

        $(document).on('click', "#" + "<%= buttonAddToCart3.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlPowerUnit");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("PUTitle").innerHTML = value;
            console.log(value);
            $("#PUTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalPU").trigger('click');

        });

        $(document).on('click', "#" + "<%= buttonAddToCart2.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlMotherboard");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("motherboardsTitle").innerHTML = value;
            console.log(value);
            $("#motherboardsTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalMotherboards").trigger('click');
        });

        $(document).on('click', "#" + "<%= buttonAddToCart5.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlRAM");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("RAMTitle").innerHTML = value;
            console.log(value);
            $("#RAMTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalRAM").trigger('click');
        });

        $(document).on('click', "#" + "<%= buttonAddToCart4.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlGraphicsCard");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("graphicsCardsTitle").innerHTML = value;
            console.log(value);
            $("#graphicsCardsTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalGraphicsCards").trigger('click');
        });

        $(document).on('click', "#" + "<%= buttonAddToCart6.ClientID %>", function () {
            var dropdown = document.getElementsByClassName("ddlHardDrive");
            var value = $(dropdown).children("option").filter(":selected").text();
            document.getElementById("hardDrivesTitle").innerHTML = value;
            console.log(value);
            $("#hardDrivesTitle").css({
                "text-transform": "capitalize"
            });
            displayBuyButton();
            $(".close-modalHardDrives").trigger('click');
        });
      
        function displayBuyButton() {
            var button = $("#buyBtn");
            button.show();
        }

    </script>
</asp:Content>
