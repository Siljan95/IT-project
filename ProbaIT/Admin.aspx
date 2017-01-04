<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ProbaIT.Admin" %>

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

        .auto-style1 {
            width: 65%;
            height: 295px;
            margin-left: 74px;
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

        .auto-style2 {
            width: 24%;
        }

        .auto-style3 {
            height: 24px;
        }

        .blockUI {
            background: #222222;
            pointer-events: none;
        }

        .auto-style4 {
            text-align: center;
            width: 407px;
        }

        .auto-style5 {
            width: 407px;
        }

        .panel1 {
            text-align: center;
        }


        .auto-style6 {
            width: 70px;
        }

        .auto-style7 {
            height: 24px;
            width: 70px;
        }

        .auto-style8 {
            text-align: center;
            width: 283px;
        }

        .auto-style9 {
            width: 283px;
        }


       
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10 backImgDashboard">
        <div class="row" style="margin: 0 auto; width:80%">
             <div class="col-md-12">
                  <div class="box">
                    <img width="150" height="150" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDMyMCAzMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMyMCAzMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjU2cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yOTIuNjk3LDE5Ljk5NUgyNy4zMDNDMTIuMjIzLDE5Ljk5NSwwLDMyLjIxOSwwLDQ3LjI5OXYxNjMuODIyYzAsMTUuMDc5LDEyLjIyMywyNy4zMDQsMjcuMzAzLDI3LjMwNEgxMzMuNzl2MjQuNyAgIGgtMjEuNTQ0Yy0xMC4xODUsMC0xOC40MzksOC4yNTUtMTguNDM5LDE4LjQ0YzAsMTAuMTg0LDguMjU1LDE4LjQ0LDE4LjQzOSwxOC40NGg5NS41MDhjMTAuMTg2LDAsMTguNDQtOC4yNTYsMTguNDQtMTguNDQgICBjMC0xMC4xODUtOC4yNTQtMTguNDQtMTguNDQtMTguNDRIMTg2LjIxdi0yNC43aDEwNi40ODdjMTUuMDgsMCwyNy4zMDMtMTIuMjI1LDI3LjMwMy0yNy4zMDRWNDcuMjk5ICAgQzMyMCwzMi4yMTksMzA3Ljc3NywxOS45OTUsMjkyLjY5NywxOS45OTV6IE0zMi4xODEsMTc5Ljk2YzAtMTQuNCwxMS43MTUtMjYuMTE2LDI2LjExNS0yNi4xMTYgICBjMTQuNDAxLDAsMjYuMTE1LDExLjcxNiwyNi4xMTUsMjYuMTE2YzAsMTQuNC0xMS43MTMsMjYuMTE2LTI2LjExNSwyNi4xMTZDNDMuODk2LDIwNi4wNzYsMzIuMTgxLDE5NC4zNiwzMi4xODEsMTc5Ljk2eiAgICBNMjg4LjMyOCwyMDYuNzUySDEyNy41NzljMC43MzQtMS44NzQsMC4yNS00LjA0LTEuMjkyLTUuNDA5bC0xMC40NzktOS4zMDhjMC44MTctMy44OTgsMS4yNTEtNy45MzgsMS4yNTEtMTIuMDc1ICAgYzAtNC4xNDItMC40MzQtOC4xODItMS4yNTMtMTIuMDg1bDEwLjQ3OC05LjMwNWMxLjcyNy0xLjUzNSwyLjEzOC00LjA3MSwwLjk4My02LjA3MmwtMTAuNzA2LTE4LjU0NCAgIGMtMS4xNTQtMi4wMDItMy41NTktMi45MTItNS43NS0yLjE4NGwtMTMuMzM4LDQuNDM0Yy01Ljk4Ni01LjM2Ni0xMy4wNzctOS41MjMtMjAuODg0LTEyLjA4NmwtMi44MjEtMTMuNzMgICBjLTAuNDY1LTIuMjYzLTIuNDU4LTMuODg3LTQuNzY5LTMuODg3SDQ3LjU4NmMtMi4zMTEsMC00LjMwMSwxLjYyNC00Ljc2OCwzLjg4N2wtMi44MiwxMy43MzMgICBjLTIuODgyLDAuOTQ3LTUuNjU5LDIuMTIzLTguMzI2LDMuNDg0VjUxLjY2N2gyNTYuNjU1VjIwNi43NTJ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMTQzLjg3MywxMjcuNzc4Yy0xLjI5Mi0wLjQzLTIuNzA4LDAuMTA5LTMuMzg5LDEuMjg4bC02LjMxMiwxMC45MzFjLTAuNjc5LDEuMTc4LTAuNDM4LDIuNjc0LDAuNTc5LDMuNTc4bDYuMTc3LDUuNDg2ICAgYy0wLjQ4MiwyLjI5Ny0wLjczNyw0LjY3Ny0wLjczNyw3LjExNmMwLDIuNDQxLDAuMjU2LDQuODIzLDAuNzM5LDcuMTIzbC02LjE3Niw1LjQ4NGMtMS4wMTgsMC45MDQtMS4yNiwyLjQtMC41OCwzLjU3OSAgIGw2LjMxMSwxMC45M2MwLjY4MSwxLjE3OSwyLjA5NiwxLjcxNywzLjM4OCwxLjI4N2w3Ljg2MS0yLjYxM2MzLjUyOSwzLjE2Myw3LjcwOCw1LjYxMiwxMi4zMSw3LjEyNGwxLjY2Myw4LjA5MyAgIGMwLjI3NSwxLjMzMiwxLjQ0OSwyLjI4OSwyLjgxMSwyLjI4OWgxMi42MmMxLjM2MiwwLjAwMSwyLjUzNS0wLjk1NywyLjgxLTIuMjg5bDEuNjYzLTguMDk1YzQuNjAyLTEuNTEyLDguNzgtMy45NjMsMTIuMzA5LTcuMTI2ICAgbDcuODU5LDIuNjEzYzEuMjkyLDAuNDI4LDIuNzA3LTAuMTA5LDMuMzg5LTEuMjg4bDYuMzExLTEwLjkzYzAuNjc5LTEuMTc5LDAuNDM4LTIuNjc0LTAuNTgtMy41NzlsLTYuMTc3LTUuNDg2ICAgYzAuNDgyLTIuMjk4LDAuNzM4LTQuNjc5LDAuNzM4LTcuMTE3YzAtMi40NDEtMC4yNTUtNC44MjMtMC43MzktNy4xMjJsNi4xNzUtNS40ODRjMS4wMTgtMC45MDUsMS4yNi0yLjQsMC41NzktMy41OGwtNi4zMS0xMC45MjkgICBjLTAuNjgxLTEuMTgxLTIuMDk4LTEuNzE3LTMuMzg5LTEuMjg3bC03Ljg2MSwyLjYxM2MtMy41MjktMy4xNjMtNy43MDktNS42MTItMTIuMzExLTcuMTIzbC0xLjY2My04LjA5MyAgIGMtMC4yNzMtMS4zMzMtMS40NDgtMi4yOTEtMi44MDktMi4yOTFoLTEyLjYyMWMtMS4zNjIsMC0yLjUzNSwwLjk1OC0yLjgxLDIuMjkxbC0xLjY2Myw4LjA5NSAgIGMtNC42MDIsMS41MTEtOC43ODEsMy45NjMtMTIuMzA5LDcuMTI2TDE0My44NzMsMTI3Ljc3OHogTTE3NC44MjcsMTQwLjc4NWM4LjQ4NywwLDE1LjM5Miw2LjkwNSwxNS4zOTIsMTUuMzkzICAgYzAsOC40ODgtNi45MDUsMTUuMzk0LTE1LjM5MiwxNS4zOTRjLTguNDg3LDAtMTUuMzk0LTYuOTA1LTE1LjM5NC0xNS4zOTRDMTU5LjQzNCwxNDcuNjksMTY2LjM0LDE0MC43ODUsMTc0LjgyNywxNDAuNzg1eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggZD0iTTEwNC42ODgsOTEuOTM4Yy0wLjMzLDEuNTc1LTAuNTA1LDMuMjA2LTAuNTA1LDQuODc4YzAsMS42NzMsMC4xNzUsMy4zMDYsMC41MDYsNC44ODJsLTQuMjMyLDMuNzU4ICAgYy0wLjY5NywwLjYyMS0wLjg2MywxLjY0NS0wLjM5NiwyLjQ1M2w0LjMyNiw3LjQ5MmMwLjQ2NiwwLjgwOCwxLjQzNywxLjE3NywyLjMyMiwwLjg4Mmw1LjM4OC0xLjc5MiAgIGMyLjQxOCwyLjE2OCw1LjI4MywzLjg0OCw4LjQzNiw0Ljg4NGwxLjE0LDUuNTQ2YzAuMTg4LDAuOTEzLDAuOTk0LDEuNTY5LDEuOTI1LDEuNTY5aDguNjUxYzAuOTMzLDAuMDAxLDEuNzM3LTAuNjU2LDEuOTI1LTEuNTY5ICAgbDEuMTQxLTUuNTQ4YzMuMTUyLTEuMDM1LDYuMDE3LTIuNzE2LDguNDM2LTQuODg0bDUuMzg3LDEuNzkyYzAuODg1LDAuMjk0LDEuODU2LTAuMDc1LDIuMzIyLTAuODgzbDQuMzI2LTcuNDkxICAgYzAuNDY1LTAuODA4LDAuMjk5LTEuODMzLTAuMzk3LTIuNDUzbC00LjIzMy0zLjc2YzAuMzMtMS41NzQsMC41MDUtMy4yMDYsMC41MDUtNC44NzhjMC0xLjY3NC0wLjE3NS0zLjMwNi0wLjUwNi00Ljg4MiAgIGw0LjIzMi0zLjc1OWMwLjY5Ni0wLjYyLDAuODY0LTEuNjQ1LDAuMzk4LTIuNDUzbC00LjMyNi03LjQ5MWMtMC40NjctMC44MDktMS40MzctMS4xNzctMi4zMjItMC44ODNsLTUuMzg4LDEuNzkxICAgYy0yLjQxOS0yLjE2OC01LjI4My0zLjg0Ny04LjQzNy00Ljg4M2wtMS4xNC01LjU0N2MtMC4xODgtMC45MTQtMC45OTMtMS41Ny0xLjkyNS0xLjU3aC04LjY1Yy0wLjkzNCwwLTEuNzM4LDAuNjU2LTEuOTI2LDEuNTcgICBsLTEuMTQsNS41NDljLTMuMTU0LDEuMDM2LTYuMDE4LDIuNzE1LTguNDM1LDQuODgzbC01LjM4OC0xLjc5MmMtMC44ODUtMC4yOTMtMS44NTYsMC4wNzUtMi4zMjIsMC44ODNsLTQuMzI1LDcuNDkxICAgYy0wLjQ2NywwLjgwOC0wLjMsMS44MzMsMC4zOTYsMi40NTJMMTA0LjY4OCw5MS45Mzh6IE0xMjcuOTIyLDg2LjI2NWM1LjgxNiwwLDEwLjU0OSw0LjczMiwxMC41NDksMTAuNTUgICBjMCw1LjgxOC00LjczMiwxMC41NDktMTAuNTQ5LDEwLjU0OXMtMTAuNTUtNC43MzEtMTAuNTUtMTAuNTQ5QzExNy4zNzIsOTAuOTk4LDEyMi4xMDUsODYuMjY1LDEyNy45MjIsODYuMjY1eiIgZmlsbD0iI0ZGRkZGRiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                    <h4 class="text-center">Wellcome to Administration panel</h4>
                      </div>
             </div>

        </div>
       <div class="row" style="margin: 0 auto; width: 50%; float:left" >
            <div class="col-md-12">
                <div class="box">
                    <img width="100" height="100" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDMyMCAzMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMyMCAzMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjU2cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yOTIuNjk3LDE5Ljk5NUgyNy4zMDNDMTIuMjIzLDE5Ljk5NSwwLDMyLjIxOSwwLDQ3LjI5OXYxNjMuODIyYzAsMTUuMDc5LDEyLjIyMywyNy4zMDQsMjcuMzAzLDI3LjMwNEgxMzMuNzl2MjQuNyAgIGgtMjEuNTQ0Yy0xMC4xODUsMC0xOC40MzksOC4yNTUtMTguNDM5LDE4LjQ0YzAsMTAuMTg0LDguMjU1LDE4LjQ0LDE4LjQzOSwxOC40NGg5NS41MDhjMTAuMTg2LDAsMTguNDQtOC4yNTYsMTguNDQtMTguNDQgICBjMC0xMC4xODUtOC4yNTQtMTguNDQtMTguNDQtMTguNDRIMTg2LjIxdi0yNC43aDEwNi40ODdjMTUuMDgsMCwyNy4zMDMtMTIuMjI1LDI3LjMwMy0yNy4zMDRWNDcuMjk5ICAgQzMyMCwzMi4yMTksMzA3Ljc3NywxOS45OTUsMjkyLjY5NywxOS45OTV6IE0zMi4xODEsMTc5Ljk2YzAtMTQuNCwxMS43MTUtMjYuMTE2LDI2LjExNS0yNi4xMTYgICBjMTQuNDAxLDAsMjYuMTE1LDExLjcxNiwyNi4xMTUsMjYuMTE2YzAsMTQuNC0xMS43MTMsMjYuMTE2LTI2LjExNSwyNi4xMTZDNDMuODk2LDIwNi4wNzYsMzIuMTgxLDE5NC4zNiwzMi4xODEsMTc5Ljk2eiAgICBNMjg4LjMyOCwyMDYuNzUySDEyNy41NzljMC43MzQtMS44NzQsMC4yNS00LjA0LTEuMjkyLTUuNDA5bC0xMC40NzktOS4zMDhjMC44MTctMy44OTgsMS4yNTEtNy45MzgsMS4yNTEtMTIuMDc1ICAgYzAtNC4xNDItMC40MzQtOC4xODItMS4yNTMtMTIuMDg1bDEwLjQ3OC05LjMwNWMxLjcyNy0xLjUzNSwyLjEzOC00LjA3MSwwLjk4My02LjA3MmwtMTAuNzA2LTE4LjU0NCAgIGMtMS4xNTQtMi4wMDItMy41NTktMi45MTItNS43NS0yLjE4NGwtMTMuMzM4LDQuNDM0Yy01Ljk4Ni01LjM2Ni0xMy4wNzctOS41MjMtMjAuODg0LTEyLjA4NmwtMi44MjEtMTMuNzMgICBjLTAuNDY1LTIuMjYzLTIuNDU4LTMuODg3LTQuNzY5LTMuODg3SDQ3LjU4NmMtMi4zMTEsMC00LjMwMSwxLjYyNC00Ljc2OCwzLjg4N2wtMi44MiwxMy43MzMgICBjLTIuODgyLDAuOTQ3LTUuNjU5LDIuMTIzLTguMzI2LDMuNDg0VjUxLjY2N2gyNTYuNjU1VjIwNi43NTJ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMTQzLjg3MywxMjcuNzc4Yy0xLjI5Mi0wLjQzLTIuNzA4LDAuMTA5LTMuMzg5LDEuMjg4bC02LjMxMiwxMC45MzFjLTAuNjc5LDEuMTc4LTAuNDM4LDIuNjc0LDAuNTc5LDMuNTc4bDYuMTc3LDUuNDg2ICAgYy0wLjQ4MiwyLjI5Ny0wLjczNyw0LjY3Ny0wLjczNyw3LjExNmMwLDIuNDQxLDAuMjU2LDQuODIzLDAuNzM5LDcuMTIzbC02LjE3Niw1LjQ4NGMtMS4wMTgsMC45MDQtMS4yNiwyLjQtMC41OCwzLjU3OSAgIGw2LjMxMSwxMC45M2MwLjY4MSwxLjE3OSwyLjA5NiwxLjcxNywzLjM4OCwxLjI4N2w3Ljg2MS0yLjYxM2MzLjUyOSwzLjE2Myw3LjcwOCw1LjYxMiwxMi4zMSw3LjEyNGwxLjY2Myw4LjA5MyAgIGMwLjI3NSwxLjMzMiwxLjQ0OSwyLjI4OSwyLjgxMSwyLjI4OWgxMi42MmMxLjM2MiwwLjAwMSwyLjUzNS0wLjk1NywyLjgxLTIuMjg5bDEuNjYzLTguMDk1YzQuNjAyLTEuNTEyLDguNzgtMy45NjMsMTIuMzA5LTcuMTI2ICAgbDcuODU5LDIuNjEzYzEuMjkyLDAuNDI4LDIuNzA3LTAuMTA5LDMuMzg5LTEuMjg4bDYuMzExLTEwLjkzYzAuNjc5LTEuMTc5LDAuNDM4LTIuNjc0LTAuNTgtMy41NzlsLTYuMTc3LTUuNDg2ICAgYzAuNDgyLTIuMjk4LDAuNzM4LTQuNjc5LDAuNzM4LTcuMTE3YzAtMi40NDEtMC4yNTUtNC44MjMtMC43MzktNy4xMjJsNi4xNzUtNS40ODRjMS4wMTgtMC45MDUsMS4yNi0yLjQsMC41NzktMy41OGwtNi4zMS0xMC45MjkgICBjLTAuNjgxLTEuMTgxLTIuMDk4LTEuNzE3LTMuMzg5LTEuMjg3bC03Ljg2MSwyLjYxM2MtMy41MjktMy4xNjMtNy43MDktNS42MTItMTIuMzExLTcuMTIzbC0xLjY2My04LjA5MyAgIGMtMC4yNzMtMS4zMzMtMS40NDgtMi4yOTEtMi44MDktMi4yOTFoLTEyLjYyMWMtMS4zNjIsMC0yLjUzNSwwLjk1OC0yLjgxLDIuMjkxbC0xLjY2Myw4LjA5NSAgIGMtNC42MDIsMS41MTEtOC43ODEsMy45NjMtMTIuMzA5LDcuMTI2TDE0My44NzMsMTI3Ljc3OHogTTE3NC44MjcsMTQwLjc4NWM4LjQ4NywwLDE1LjM5Miw2LjkwNSwxNS4zOTIsMTUuMzkzICAgYzAsOC40ODgtNi45MDUsMTUuMzk0LTE1LjM5MiwxNS4zOTRjLTguNDg3LDAtMTUuMzk0LTYuOTA1LTE1LjM5NC0xNS4zOTRDMTU5LjQzNCwxNDcuNjksMTY2LjM0LDE0MC43ODUsMTc0LjgyNywxNDAuNzg1eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggZD0iTTEwNC42ODgsOTEuOTM4Yy0wLjMzLDEuNTc1LTAuNTA1LDMuMjA2LTAuNTA1LDQuODc4YzAsMS42NzMsMC4xNzUsMy4zMDYsMC41MDYsNC44ODJsLTQuMjMyLDMuNzU4ICAgYy0wLjY5NywwLjYyMS0wLjg2MywxLjY0NS0wLjM5NiwyLjQ1M2w0LjMyNiw3LjQ5MmMwLjQ2NiwwLjgwOCwxLjQzNywxLjE3NywyLjMyMiwwLjg4Mmw1LjM4OC0xLjc5MiAgIGMyLjQxOCwyLjE2OCw1LjI4MywzLjg0OCw4LjQzNiw0Ljg4NGwxLjE0LDUuNTQ2YzAuMTg4LDAuOTEzLDAuOTk0LDEuNTY5LDEuOTI1LDEuNTY5aDguNjUxYzAuOTMzLDAuMDAxLDEuNzM3LTAuNjU2LDEuOTI1LTEuNTY5ICAgbDEuMTQxLTUuNTQ4YzMuMTUyLTEuMDM1LDYuMDE3LTIuNzE2LDguNDM2LTQuODg0bDUuMzg3LDEuNzkyYzAuODg1LDAuMjk0LDEuODU2LTAuMDc1LDIuMzIyLTAuODgzbDQuMzI2LTcuNDkxICAgYzAuNDY1LTAuODA4LDAuMjk5LTEuODMzLTAuMzk3LTIuNDUzbC00LjIzMy0zLjc2YzAuMzMtMS41NzQsMC41MDUtMy4yMDYsMC41MDUtNC44NzhjMC0xLjY3NC0wLjE3NS0zLjMwNi0wLjUwNi00Ljg4MiAgIGw0LjIzMi0zLjc1OWMwLjY5Ni0wLjYyLDAuODY0LTEuNjQ1LDAuMzk4LTIuNDUzbC00LjMyNi03LjQ5MWMtMC40NjctMC44MDktMS40MzctMS4xNzctMi4zMjItMC44ODNsLTUuMzg4LDEuNzkxICAgYy0yLjQxOS0yLjE2OC01LjI4My0zLjg0Ny04LjQzNy00Ljg4M2wtMS4xNC01LjU0N2MtMC4xODgtMC45MTQtMC45OTMtMS41Ny0xLjkyNS0xLjU3aC04LjY1Yy0wLjkzNCwwLTEuNzM4LDAuNjU2LTEuOTI2LDEuNTcgICBsLTEuMTQsNS41NDljLTMuMTU0LDEuMDM2LTYuMDE4LDIuNzE1LTguNDM1LDQuODgzbC01LjM4OC0xLjc5MmMtMC44ODUtMC4yOTMtMS44NTYsMC4wNzUtMi4zMjIsMC44ODNsLTQuMzI1LDcuNDkxICAgYy0wLjQ2NywwLjgwOC0wLjMsMS44MzMsMC4zOTYsMi40NTJMMTA0LjY4OCw5MS45Mzh6IE0xMjcuOTIyLDg2LjI2NWM1LjgxNiwwLDEwLjU0OSw0LjczMiwxMC41NDksMTAuNTUgICBjMCw1LjgxOC00LjczMiwxMC41NDktMTAuNTQ5LDEwLjU0OXMtMTAuNTUtNC43MzEtMTAuNTUtMTAuNTQ5QzExNy4zNzIsOTAuOTk4LDEyMi4xMDUsODYuMjY1LDEyNy45MjIsODYuMjY1eiIgZmlsbD0iI0ZGRkZGRiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                    <h4 class="text-center">STORE</h4>
                    <div class="row">
                        <div class="col-md-12" id="control-container">
                            <div class="col-md-6">
                                <div class="box hovereffect" id="processors">
                                    <div class="overlay">
                                        <a id="animateCPU" href="#modalCPU">
                                            <h3 class="info">Edit Item</h3>
                                        </a>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDE4MCAxODAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4MCAxODA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTI4cHgiIGhlaWdodD0iMTI4cHgiPgo8cGF0aCBkPSJNMTgwLDE2OS41MzFWMTAuNDY5Yy0yLjkzMSwxLjYxNS02LjY4NiwxLjE4Ny05LjE3MS0xLjI5OGMtMi40ODUtMi40ODUtMi45MTQtNi4yNC0xLjI5OC05LjE3MUgzMS45MDV2Mi42NCAgYzAsMi4zNDQtMS44OTksNC4yNDMtNC4yNDMsNC4yNDNjLTIuMzQzLDAtNC4yNDItMS44OTktNC4yNDItNC4yNDNWMEgxMC40NjljMS42MTYsMi45MzEsMS4xODgsNi42ODYtMS4yOTgsOS4xNzEgIEM2LjY4NSwxMS42NTUsMi45MzEsMTIuMDg0LDAsMTAuNDY5djE1OS4wNjNjMi45MzEtMS42MTUsNi42ODUtMS4xODcsOS4xNzEsMS4yOThjMi40ODUsMi40ODUsMi45MTMsNi4yNCwxLjI5OCw5LjE3MUgyMy40MnYtMi42NCAgYzAtMi4zNDQsMS44OTktNC4yNDMsNC4yNDItNC4yNDNjMi4zNDQsMCw0LjI0MywxLjg5OSw0LjI0Myw0LjI0M1YxODBoMTM3LjYyNmMtMS42MTYtMi45MzEtMS4xODgtNi42ODYsMS4yOTgtOS4xNzEgIEMxNzMuMzE0LDE2OC4zNDUsMTc3LjA2OSwxNjcuOTE2LDE4MCwxNjkuNTMxeiBNMTU3Ljk0OCwxMzYuMjk1YzAsMTEuOTM5LTkuNzE0LDIxLjY1My0yMS42NTMsMjEuNjUzaC0yMi4zOTggIGMtMy4wOTksMC01LjYxLTIuNTEyLTUuNjEtNS42MWMwLTMuMDk5LDIuNTEyLTUuNjEsNS42MS01LjYxaDIyLjM5OGM1Ljc1MywwLDEwLjQzMy00LjY4LDEwLjQzMy0xMC40MzN2LTkyLjU5ICBjMC01Ljc1My00LjY4LTEwLjQzMy0xMC40MzMtMTAuNDMzSDQzLjcwM2MtNS43NTEsMC0xMC40MzEsNC42OC0xMC40MzEsMTAuNDMzdjkyLjU5YzAsNS43NTMsNC42NzksMTAuNDMzLDEwLjQzMSwxMC40MzNoMjIuNCAgYzMuMDk5LDAsNS42MSwyLjUxMiw1LjYxLDUuNjFjMCwzLjA5OS0yLjUxMiw1LjYxLTUuNjEsNS42MWgtMjIuNGMtMTEuOTM4LDAtMjEuNjUxLTkuNzE0LTIxLjY1MS0yMS42NTN2LTkyLjU5ICBjMC0xMS45NCw5LjcxMy0yMS42NTMsMjEuNjUxLTIxLjY1M2g5Mi41OTJjMTEuOTM5LDAsMjEuNjUzLDkuNzE0LDIxLjY1MywyMS42NTNWMTM2LjI5NXogTTUyLjUyMSwxMzQuMTU2ICBjLTMuNjgxLDAtNi42NzgtMi45OTQtNi42NzgtNi42ODFWNTIuNTI0YzAtMy42ODcsMi45OTctNi42ODEsNi42NzgtNi42ODFoNzQuOTU0YzMuNjg3LDAsNi42ODEsMi45OTQsNi42ODEsNi42ODF2NzQuOTUxICBjMCwzLjY4Ni0yLjk5NCw2LjY4MS02LjY4MSw2LjY4MUg1Mi41MjF6IE03Ni4zMTYsNzguNjI0djQuMjM5aC02LjQ4MnYtNC42NzZjMC0zLjExNi0xLjM3MS00LjMwMi0zLjU1NC00LjMwMiAgYy0yLjE4MSwwLTMuNTU0LDEuMTg2LTMuNTU0LDQuMzAydjIzLjU2M2MwLDMuMTE1LDEuMzczLDQuMjM3LDMuNTU0LDQuMjM3YzIuMTgzLDAsMy41NTQtMS4xMjIsMy41NTQtNC4yMzd2LTYuMjMzaDYuNDgydjUuNzk1ICBjMCw2Ljk4My0zLjQ5LDEwLjk3My0xMC4yMjMsMTAuOTczYy02LjczMywwLTEwLjIyMy0zLjk4OS0xMC4yMjMtMTAuOTczVjc4LjYyNGMwLTYuOTgyLDMuNDktMTAuOTcyLDEwLjIyMy0xMC45NzIgIEM3Mi44MjYsNjcuNjUyLDc2LjMxNiw3MS42NDIsNzYuMzE2LDc4LjYyNHogTTkwLjU5Miw2OC4xNTFIODAuNDkzdjQzLjYzNWg2Ljg1NlY5NS4zOTJoMy4yNDJjNi44NTYsMCwxMC4yMjMtMy44MDMsMTAuMjIzLTEwLjc4MyAgdi01LjY3NEMxMDAuODE0LDcxLjk1NCw5Ny40NDgsNjguMTUxLDkwLjU5Miw2OC4xNTF6IE05My45NTgsODUuMDQ1YzAsMy4xMTYtMS4xODYsNC4xMTMtMy4zNjYsNC4xMTNIODcuMzVWNzQuMzg1aDMuMjQyICBjMi4xODEsMCwzLjM2NiwwLjk5NywzLjM2Niw0LjExM1Y4NS4wNDV6IE0xMTcuNjQ2LDY4LjE1MWg2LjQ4M3YzMy4yMjVjMCw2Ljk4Mi0zLjQ5MSwxMC45NzItMTAuMjI0LDEwLjk3MiAgYy02LjczMywwLTEwLjIyNC0zLjk4OS0xMC4yMjQtMTAuOTcyVjY4LjE1MWg2Ljg1N3YzMy42NjFjMCwzLjExNiwxLjM3MSw0LjIzOCwzLjU1Myw0LjIzOGMyLjE4MywwLDMuNTU0LTEuMTIyLDMuNTU0LTQuMjM4VjY4LjE1MSAgeiIgZmlsbD0iI0ZGRkZGRiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                                    <h4>Processors</h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box hovereffect" id="motherboards">
                                    <div class="overlay">
                                        <h3 class="info"><a id="animateMotherboards" href="#modalMotherboards">Edit Item</a></h3>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIxMjhweCIgaGVpZ2h0PSIxMjhweCI+CjxnPgoJPHJlY3QgeD0iMzEiIHk9IjQ0LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxNCIgeT0iNDQuNSIgd2lkdGg9IjQiIGhlaWdodD0iNSIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMzEiIHk9IjQ4LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDQuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjQwLjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0NC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMzQuNzA5LDMwLjVoMTYuNTgyYzAuMzkxLDAsMC43MDktMC4zMTgsMC43MDktMC43MDlWMTMuMjA5YzAtMC4zOTEtMC4zMTgtMC43MDktMC43MDktMC43MDlIMzQuNzA5ICAgQzM0LjMxOCwxMi41LDM0LDEyLjgxOCwzNCwxMy4yMDl2MTYuNTgyQzM0LDMwLjE4MiwzNC4zMTgsMzAuNSwzNC43MDksMzAuNXogTTM1LDIzLjVoMnYtMWgtMnYtMmgydi0xaC0ydi0yaDJ2LTJoMnYtMmgydjJoMXYtMmgyICAgdjJoMXYtMmgydjJoMnYyaDJ2MmgtMnYxaDJ2MmgtMnYxaDJ2MmgtMnYyaC0ydjJoLTJ2LTJoLTF2MmgtMnYtMmgtMXYyaC0ydi0yaC0ydi0yaC0yVjIzLjV6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDAuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iOSIgeT0iMzEuNSIgd2lkdGg9IjMiIGhlaWdodD0iMyIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjM2LjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSIzNi41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNNTcsNi41di0xYzAtMC41NTMtMC40NDctMS0xLTFzLTEsMC40NDctMSwxdjFoLTF2LTNoLTRoLTJoLTJoLTJoLTJoLTJoLTJoLTJoLTR2M2gtMXYtMWMwLTAuNTUzLTAuNDQ4LTEtMS0xICAgcy0xLDAuNDQ3LTEsMXYxaC0xdi0xYzAtMC41NTMtMC40NDgtMS0xLTFzLTEsMC40NDctMSwxdjFoLTRoLTZoLTJIOEgwdjVoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNCAgIGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjIwaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYzaDYwdi01MEg1N3ogTTQsMzQuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzNC41LDQsMzQuNXogICAgTTQsMzEuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzMS41LDQsMzEuNXogTTQsMjguNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMSAgIFM0LjU1MiwyOC41LDQsMjguNXogTTE2LDM4LjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzE1LjQ0OCwzOC41LDE2LDM4LjV6IE04LDguNWg2djE3aC0ydjEgICBjMCwwLjU1My0wLjQ0OCwxLTEsMXMtMS0wLjQ0Ny0xLTF2LTFIOFY4LjV6IE03LDI5LjVoN3Y3SDdWMjkuNXogTTE0LDM5LjVjMCwwLjU1Mi0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFzMC40NDgtMSwxLTEgICBTMTQsMzguOTQ4LDE0LDM5LjV6IE0yMSw0Ny41YzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjJoLTh2LTJoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMWgtMSAgIGMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDh2MmgxYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjFIMjF6IE0xOCwzOS41YzAtMC41NTIsMC40NDgtMSwxLTEgICBzMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxUzE4LDQwLjA1MiwxOCwzOS41eiBNMjIsMzEuNWgtMnYxYzAsMC41NTMtMC40NDgsMS0xLDFzLTEtMC40NDctMS0xdi0xaC0ydi0yM2g2VjMxLjV6IE01MCw1LjVoMnYxaC0yICAgVjUuNXogTTQ2LDUuNWgydjFoLTJWNS41eiBNNDIsNS41aDJ2MWgtMlY1LjV6IE0zOCw1LjVoMnYxaC0yVjUuNXogTTM0LDUuNWgydjFoLTJWNS41eiBNMzIsMTMuMjA5ICAgYzAtMS40OTQsMS4yMTUtMi43MDksMi43MDktMi43MDloMTYuNTgyYzEuNDk0LDAsMi43MDksMS4yMTUsMi43MDksMi43MDl2MTYuNTgyYzAsMS40OTQtMS4yMTUsMi43MDktMi43MDksMi43MDlIMzQuNzA5ICAgQzMzLjIxNSwzMi41LDMyLDMxLjI4NSwzMiwyOS43OTFWMTMuMjA5eiBNMjgsMTUuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDE1LjUsMjgsMTUuNXogTTI4LDE4LjUgICBjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwxOC41LDI4LDE4LjV6IE0yOCwyMS41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMSAgIFMyNy40NDgsMjEuNSwyOCwyMS41eiBNMjgsMjQuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDI0LjUsMjgsMjQuNXogTTI4LDI3LjVjMC41NTIsMCwxLDAuNDQ4LDEsMSAgIHMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwyNy41LDI4LDI3LjV6IE0yOCwzMC41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMVMyNy40NDgsMzAuNSwyOCwzMC41eiAgICBNMjUsMTcuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjQuNDQ4LDE3LjUsMjUsMTcuNXogTTI1LDIxLjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDEgICBzLTEtMC40NDgtMS0xUzI0LjQ0OCwyMS41LDI1LDIxLjV6IE01NSw0MC41YzAuNTUzLDAsMSwwLjQ0NywxLDFzLTAuNDQ3LDEtMSwxaC0xdjJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMXYyaDEgICBjMC41NTMsMCwxLDAuNDQ3LDEsMXMtMC40NDcsMS0xLDFoLTF2MkgyNnYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaC0xYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDF2LTIgICBoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDI4djJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMSAgIHYySDU1eiBNNTYsMjYuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM1Ni41NTIsMjYuNSw1NiwyNi41eiBNNTYsMTkuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMSAgIHMxLDAuNDQ4LDEsMVM1Ni41NTIsMTkuNSw1NiwxOS41eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMTAiIHk9IjEwLjUiIHdpZHRoPSIyIiBoZWlnaHQ9IjEzIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxOCIgeT0iMTAuNSIgd2lkdGg9IjIiIGhlaWdodD0iMTkiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iNDAuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iMzYuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjM5IiB5PSIxNy41IiB3aWR0aD0iOCIgaGVpZ2h0PSI4IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="
                                        class="img-center-nowidth" />
                                    <h4>Motherboards</h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box hovereffect" id="power-units">
                                    <div class="overlay">
                                        <h3 class="info"><a id="animatePU" href="#modalPU">Edit item</a></h3>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjEyOHB4IiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSIwIDAgNDQ2LjI3MSA0NDYuMjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ0Ni4yNzEgNDQ2LjI3OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQzOS4xMjQsODEuMTZoLTY4LjUxMVY1OS40MjRjMC0zLjk0Ni0zLjE5OS03LjE0Ni03LjE0Ni03LjE0NmgtNDguOTk5Yy0zLjk0NiwwLTcuMTQ2LDMuMTk5LTcuMTQ2LDcuMTQ2VjgxLjE2SDEzOC45NDcgICAgVjU5LjQyNGMwLTMuOTQ2LTMuMTk5LTcuMTQ2LTcuMTQ2LTcuMTQ2SDgyLjgwMmMtMy45NDYsMC03LjE0NiwzLjE5OS03LjE0Niw3LjE0NlY4MS4xNkg3LjE0NkMzLjIsODEuMTYsMCw4NC4zNTksMCw4OC4zMDYgICAgdjQ1LjYxNGMwLDMuOTQ2LDMuMTk5LDcuMTQ2LDcuMTQ2LDcuMTQ2aDIzLjIwMWgzODUuNTc3aDIzLjIwMWMzLjk0NSwwLDcuMTQ2LTMuMTk5LDcuMTQ2LTcuMTQ2Vjg4LjMwNiAgICBDNDQ2LjI3LDg0LjM2LDQ0My4wNyw4MS4xNiw0MzkuMTI0LDgxLjE2eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0zMC4zNDYsMzg0LjcyM2MwLDUuMTE5LDQuMTQ5LDkuMjcsOS4yNjgsOS4yN2gzNjcuMDQxYzUuMTE5LDAsOS4yNjktNC4xNSw5LjI2OS05LjI3VjE2NS40MDRIMzAuMzQ2VjM4NC43MjN6ICAgICBNMTc5LjI2MiwyOTAuMDE0bDIxLjcxNi02OS40MDFjMC4zNzMtMS4xOTIsMS40NzgtMi4wMDQsMi43MjctMi4wMDRoMzMuODY0YzAuOTE0LDAsMS43NzEsMC40MzgsMi4zMTEsMS4xNzcgICAgYzAuNTM4LDAuNzM4LDAuNjg5LDEuNjkxLDAuNDA2LDIuNTYxbC0xMy4yMjEsNDAuODM5aDM3LjIxN2MxLjA0NywwLDIuMDA4LDAuNTcyLDIuNTEsMS40OWMwLjUsMC45MTgsMC40NTksMi4wMzUtMC4xMDcsMi45MTQgICAgbC00OS43MTksNzcuMTQ5Yy0wLjUzOCwwLjgzNS0xLjQ1MywxLjMxLTIuNDAyLDEuMzFjLTAuMzQzLDAtMC42ODktMC4wNjItMS4wMjUtMC4xOWMtMS4yNjMtMC40ODUtMi4wMTItMS43OTMtMS43OTMtMy4xMjkgICAgbDguMDI4LTQ5LjAwNUgxODEuOTljLTAuOTA5LDAtMS43NjQtMC40MzQtMi4zMDItMS4xNjZDMTc5LjE0OCwyOTEuODI2LDE3OC45OSwyOTAuODgxLDE3OS4yNjIsMjkwLjAxNHoiIGZpbGw9IiNGRkZGRkYiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                                    <h4>Power Units</h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box hovereffect" id="ram">
                                    <div class="overlay">
                                        <h3 class="info"><a id="animateRAM" href="#modalRAM">Edit item</a></h3>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNTZweCIgaGVpZ2h0PSIyNTZweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTM5LjE0NSwzLjEwM2MtMS4yNDQsMC4yOTktMi4yNDIsMS4yOTYtMi41NDIsMi41NDFjLTAuMjkzLDEuMjE1LDAuMDUxLDIuNDYxLDAuOTIyLDMuMzMxICAgIGMwLjY2NywwLjY2NywxLjU1MiwxLjAyNCwyLjQ3NiwxLjAyNGMwLjI4MywwLDAuNTctMC4wMzMsMC44NTUtMC4xMDNjMS4yNDQtMC4zLDIuMjQyLTEuMjk3LDIuNTQxLTIuNTQgICAgYzAuMjkzLTEuMjE1LTAuMDUyLTIuNDYtMC45MjItMy4zMzFDNDEuNjA1LDMuMTU1LDQwLjM2MSwyLjgxLDM5LjE0NSwzLjEwM3ogTTQxLjQ1Myw2Ljg4OWMtMC4xMjQsMC41MTMtMC41NTEsMC45NC0xLjA2NSwxLjA2NCAgICBDMzkuODQ2LDguMDgyLDM5LjMxOSw3Ljk0LDM4Ljk0LDcuNTZjLTAuMzgtMC4zOC0wLjUyMi0wLjkwNy0wLjM5Mi0xLjQ0OGMwLjEyNC0wLjUxNCwwLjU1Mi0wLjk0MSwxLjA2NS0xLjA2NCAgICBDMzkuNzQ0LDUuMDE2LDM5Ljg3NCw1LDQwLjAwMSw1YzAuMzk5LDAsMC43NzIsMC4xNTIsMS4wNiwwLjQzOUM0MS40NCw1LjgxOSw0MS41ODMsNi4zNDcsNDEuNDUzLDYuODg5eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0zNi42MDMsNTIuNjQ0Yy0wLjI5MywxLjIxNSwwLjA1MSwyLjQ2MSwwLjkyMiwzLjMzMWMwLjY2NywwLjY2NywxLjU1MiwxLjAyNCwyLjQ3NiwxLjAyNCAgICBjMC4yODMsMCwwLjU3LTAuMDMzLDAuODU1LTAuMTAzYzEuMjQ0LTAuMywyLjI0Mi0xLjI5NywyLjU0MS0yLjU0YzAuMjkzLTEuMjE1LTAuMDUyLTIuNDYtMC45MjItMy4zMzEgICAgYy0wLjg3LTAuODY5LTIuMTE0LTEuMjE0LTMuMzMtMC45MjNDMzcuOTAxLDUwLjQwMSwzNi45MDMsNTEuMzk4LDM2LjYwMyw1Mi42NDR6IE00MC4wMDEsNTJjMC4zOTksMCwwLjc3MiwwLjE1MiwxLjA2LDAuNDM5ICAgIGMwLjM3OSwwLjM4LDAuNTIyLDAuOTA3LDAuMzkyLDEuNDQ5Yy0wLjEyNCwwLjUxMy0wLjU1MSwwLjk0LTEuMDY1LDEuMDY0Yy0wLjU0MiwwLjEyNy0xLjA2OS0wLjAxMi0xLjQ0OC0wLjM5MyAgICBjLTAuMzgtMC4zOC0wLjUyMi0wLjkwNy0wLjM5Mi0xLjQ0OGMwLjEyNC0wLjUxNCwwLjU1Mi0wLjk0MSwxLjA2NS0xLjA2NEMzOS43NDQsNTIuMDE2LDM5Ljg3NCw1Miw0MC4wMDEsNTJ6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTQzLjQwNSwwSDI3LjV2MWMwLDEuMTAzLTAuODk3LDItMiwycy0yLTAuODk3LTItMlYwaC0zaC0yaC01djVoMnY1MGgtMnY1aDVoMmgzdi0xYzAtMS4xMDMsMC44OTctMiwyLTJzMiwwLjg5NywyLDJ2MSAgICBoMTUuOTA1YzEuNzA3LDAsMy4wOTUtMS4zODksMy4wOTUtMy4wOTZWMy4wOTZDNDYuNSwxLjM4OSw0NS4xMTEsMCw0My40MDUsMHogTTE4LjUsNThoLTN2LTFoMlYzaC0yVjJoM1Y1OHogTTQ0LjUsMTFoLTV2Mmg1djEgICAgaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXYxaC01djJoNXY3LjkwNCAgICBjMCwwLjYwNC0wLjQ5MSwxLjA5Ni0xLjA5NSwxLjA5NkgyOS4zNzRjLTAuNDQ1LTEuNzI0LTIuMDEzLTMtMy44NzQtM3MtMy40MjgsMS4yNzYtMy44NzQsM0gyMC41VjJoMS4xMjYgICAgYzAuNDQ1LDEuNzI0LDIuMDEzLDMsMy44NzQsM3MzLjQyOC0xLjI3NiwzLjg3NC0zaDE0LjAzMUM0NC4wMDksMiw0NC41LDIuNDkxLDQ0LjUsMy4wOTZWMTF6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTMyLjUsNmgtMnYyaC0xVjZoLTJ2MmgtMVY2aC0ydjJoLTJ2OGgydjJoMnYtMmgxdjJoMnYtMmgxdjJoMnYtMmgyVjhoLTJWNnogTTMyLjUsMTRoLTh2LTRoOFYxNHoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNMzIuNSw0MmgtMnYyaC0xdi0yaC0ydjJoLTF2LTJoLTJ2MmgtMnY4aDJ2Mmgydi0yaDF2Mmgydi0yaDF2Mmgydi0yaDJ2LThoLTJWNDJ6IE0zMi41LDUwaC04di00aDhWNTB6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTMyLjUsMjRoLTJ2MmgtMXYtMmgtMnYyaC0xdi0yaC0ydjJoLTJ2OGgydjJoMnYtMmgxdjJoMnYtMmgxdjJoMnYtMmgydi04aC0yVjI0eiBNMzIuNSwzMmgtOHYtNGg4VjMyeiIgZmlsbD0iI0ZGRkZGRiIvPgoJPC9nPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                                    <h4>RAM</h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box hovereffect" id="graphic-cards">
                                    <div class="overlay">
                                        <h3 class="info"><a id="animateGraphicsCards" href="#modalGraphicsCards">Edit item</a></h3>
                                    </div>
                                    <img src="Styles/img/graphics-card.png" class="img-center-nowidth" />
                                    <h4>Graphics Cards</h4>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="box hovereffect" id="hard-drives">
                                    <div class="overlay">
                                        <h3 class="info"><a id="animateHardDrives" href="#modalHardDrives">Edit item</a></h3>
                                    </div>
                                    <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjI1NnB4IiBoZWlnaHQ9IjI1NnB4IiB2aWV3Qm94PSIwIDAgNDM4LjUzMyA0MzguNTMyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0MzguNTMzIDQzOC41MzI7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNNDMzLjk3OCwyNDMuNTMxTDM3Ny43MjQsNzAuNTE5Yy0zLjIzNy0xMC4wODktOS4yMzItMTguMjc0LTE3Ljk4Ni0yNC41NTRzLTE4LjM3MS05LjQxOS0yOC44MzYtOS40MTlIMTA3LjYzNyAgICBjLTEwLjQ3MiwwLTIwLjA4LDMuMTM3LTI4LjgzNyw5LjQxOWMtOC43NTcsNi4yOC0xNC43NTMsMTQuNDY1LTE3Ljk4NywyNC41NTRMNC41NjgsMjQzLjUzMUMxLjUyMywyNTMuMDUyLDAsMjYwLjE4OSwwLDI2NC45NDcgICAgdjkxLjM2MWMwLDEyLjU1OSw0LjQ3MSwyMy4zMDgsMTMuNDE3LDMyLjI1N2M4Ljk0Nyw4Ljk0OSwxOS43MDEsMTMuNDIyLDMyLjI2NCwxMy40MjJoMzQ3LjE3NiAgICBjMTIuNTYsMCwyMy4zMTUtNC40NzMsMzIuMjY1LTEzLjQyMmM4Ljk0NS04Ljk0OSwxMy40MTEtMTkuNjk4LDEzLjQxMS0zMi4yNTd2LTkxLjM2MSAgICBDNDM4LjUzMywyNjAuMTg5LDQzNy4wMjMsMjUzLjA1Miw0MzMuOTc4LDI0My41MzF6IE05NS42NDYsODEuNjQ5YzAuNzYzLTIuNDc0LDIuMjg0LTQuNTIxLDQuNTY4LTYuMTM2ICAgIGMyLjI4Ni0xLjYxOSw0Ljc1OS0yLjQyOCw3LjQyMy0yLjQyOGgyMjMuMjYyYzIuNjY2LDAsNS4xNDQsMC44MSw3LjQyNiwyLjQyOGMyLjI4MywxLjYxNSwzLjgwNiwzLjY2Miw0LjU2NSw2LjEzNiAgICBsNDQuODIzLDEzNy42MTdINTAuODIyTDk1LjY0Niw4MS42NDl6IE00MDIuMDAxLDM1Ni4zMDljMCwyLjQ3MS0wLjkxMSw0LjYwOS0yLjcxOCw2LjQyYy0xLjgxMywxLjgxLTMuOTQ5LDIuNzA3LTYuNDIsMi43MDcgICAgSDQ1LjY4MWMtMi40NzQsMC00LjYxNS0wLjg5Ny02LjQyMy0yLjcwN2MtMS44MDctMS44MTEtMi43MTItMy45NDktMi43MTItNi40MnYtOTEuMzYxYzAtMi40NzksMC45MDUtNC42MTMsMi43MTItNi40MjggICAgYzEuODA5LTEuODAzLDMuOTQ5LTIuNzAzLDYuNDIzLTIuNzAzaDM0Ny4xODNjMi40NzEsMCw0LjYwOSwwLjg5Niw2LjQyLDIuNzAzYzEuODA3LDEuODE0LDIuNzE0LDMuOTQ5LDIuNzE0LDYuNDI4djkxLjM2MSAgICBINDAyLjAwMXoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNMjc0LjA4NywyODcuNzg2Yy02LjI4MywwLTExLjY2MiwyLjIzMS0xNi4xMzIsNi43MDhjLTQuNDczLDQuNDc2LTYuNzE0LDkuODUyLTYuNzE0LDE2LjEzMiAgICBjMCw2LjI3OSwyLjIzNywxMS42NTksNi43MTQsMTYuMTMyYzQuNDczLDQuNDc3LDkuODQ5LDYuNzA3LDE2LjEzMiw2LjcwN3MxMS42NjMtMi4yMywxNi4xMzItNi43MDcgICAgYzQuNDctNC40Nyw2LjcxNS05Ljg0OSw2LjcxNS0xNi4xMzJjMC02LjI4LTIuMjM4LTExLjY2My02LjcxNS0xNi4xMzJDMjg1Ljc0NCwyOTAuMDIxLDI4MC4zNzEsMjg3Ljc4NiwyNzQuMDg3LDI4Ny43ODZ6IiBmaWxsPSIjRkZGRkZGIi8+CgkJPHBhdGggZD0iTTM0Ny4xNzgsMjg3Ljc4NmMtNi4yODMsMC0xMS42NjMsMi4yMzgtMTYuMTM2LDYuNzA4Yy00LjQ3Myw0LjQ3Ni02LjcwNyw5Ljg1Mi02LjcwNywxNi4xMzIgICAgYzAsNi4yNzksMi4yMzQsMTEuNjU5LDYuNzA3LDE2LjEzMmM0LjQ3Myw0LjQ3Nyw5Ljg1Myw2LjcwNywxNi4xMzYsNi43MDdjNi4yNzYsMCwxMS42NjMtMi4yMywxNi4xMzItNi43MDcgICAgYzQuNDctNC40Nyw2LjcxNS05Ljg0OSw2LjcxNS0xNi4xMzJjMC02LjI4LTIuMjM4LTExLjY2My02LjcxNS0xNi4xMzJDMzU4LjgzMywyOTAuMDIxLDM1My40NTUsMjg3Ljc4NiwzNDcuMTc4LDI4Ny43ODZ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                                    <h4>HDD & SSD</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class=" row " style="margin: 0 auto; width: 50%; float:right">
            <div class="box">
                  <img width="100" height="100" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDQ3NC41NjUgNDc0LjU2NSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDc0LjU2NSA0NzQuNTY1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjEyOHB4IiBoZWlnaHQ9IjEyOHB4Ij4KPGc+Cgk8cGF0aCBkPSJNMjU1LjIwNCwxMDIuM2MtMC42MDYtMTEuMzIxLTEyLjE3Ni05LjM5NS0yMy40NjUtOS4zOTVDMjQwLjA3OCw5NS4xMjYsMjQ3Ljk2Nyw5OC4yMTYsMjU1LjIwNCwxMDIuM3oiIGZpbGw9IiNGRkZGRkYiLz4KCTxwYXRoIGQ9Ik0xMzQuNTI0LDczLjkyOGMtNDMuODI1LDAtNjMuOTk3LDU1LjQ3MS0yOC45NjMsODMuMzdjMTEuOTQzLTMxLjg5LDM1LjcxOC01NC43ODgsNjYuODg2LTYzLjgyNiAgIEMxNjMuOTIxLDgxLjY4NSwxNTAuMTQ2LDczLjkyOCwxMzQuNTI0LDczLjkyOHoiIGZpbGw9IiNGRkZGRkYiLz4KCTxwYXRoIGQ9Ik00My45ODcsMTQ4LjYxN2MxLjc4Niw1LjczMSw0LjEsMTEuMjI5LDYuODQ5LDE2LjQzOEwzNi40NCwxNzkuNDU5Yy0zLjg2NiwzLjg2Ni0zLjg2NiwxMC4xNDEsMCwxNC4wMTVsMjUuMzc1LDI1LjM4MyAgIGMxLjg0OCwxLjg0OCw0LjM4LDIuODg4LDcuMDE5LDIuODg4YzIuNjEsMCw1LjEyNS0xLjA0LDcuMDA1LTIuODg4bDE0LjM4LTE0LjQwNGMyLjE1OCwxLjE0Miw0LjU1LDEuODQyLDYuNzg1LDIuODI3ICAgYzAtMC4xNjQtMC4wMTYtMC4zMzQtMC4wMTYtMC40OThjMC0xMS43NzEsMS4zNTItMjIuODc1LDMuNzU5LTMzLjMwMmMtMTcuMzYyLTExLjE3NC0yOC45NDctMzAuNTctMjguOTQ3LTUyLjcxNSAgIGMwLTM0LjU5MiwyOC4xMzktNjIuNzM5LDYyLjcyMy02Mi43MzljMjMuNDE4LDAsNDMuNjM3LDEzLjAzNyw1NC40MywzMi4wODRjMTEuNTIzLTEuNDI5LDIyLjM0Ny0xLjQyOSwzNS4zNzYsMS4wMzMgICBjLTEuNjc2LTUuMDctMy42NDgtMTAuMDMyLTYuMTE4LTE0LjY4M2wxNC4zOTYtMTQuNDExYzEuODc4LTEuODU2LDIuOTE4LTQuMzgsMi45MTgtNy4wMDRjMC0yLjYyNS0xLjA0LTUuMTQ4LTIuOTE4LTcuMDA0ICAgbC0yNS4zNjEtMjUuMzY3Yy0xLjk0LTEuOTQxLTQuNDcyLTIuOTA0LTcuMDAzLTIuOTA0Yy0yLjUzMiwwLTUuMDYzLDAuOTYzLTYuOTg5LDIuOTA0bC0xNC40NDIsMTQuNDExICAgYy01LjIxNy0yLjc2NC0xMC42OTktNS4wNzgtMTYuNDQ0LTYuODI1VjkuOWMwLTUuNDY2LTQuNDExLTkuOS05Ljg5My05LjloLTM1Ljg4OGMtNS40NTEsMC05LjkwOSw0LjQzNC05LjkwOSw5Ljl2MjAuMzU5ICAgYy01LjczLDEuNzQ3LTExLjIxMyw0LjA2MS0xNi40NDYsNi44MjVMNzUuODM5LDIyLjY4OWMtMS45NDItMS45NDEtNC40NzMtMi45MDQtNy4wMDUtMi45MDRjLTIuNTMxLDAtNS4wNzcsMC45NjMtNy4wMDMsMi44OTYgICBMMzYuNDQsNDguMDQ4Yy0xLjg0OCwxLjg2NC0yLjg4OCw0LjM3OS0yLjg4OCw3LjAxMmMwLDIuNjMyLDEuMDQsNS4xNDgsMi44ODgsNy4wMDRsMTQuMzk2LDE0LjQwMyAgIGMtMi43NSw1LjIxOC01LjA2MywxMC43MDgtNi44MTcsMTYuNDM4SDIzLjY3NWMtNS40ODIsMC05LjkwOSw0LjQ0MS05LjkwOSw5LjkxNXYzNS44ODljMCw1LjQ1OCw0LjQyNyw5LjkwOCw5LjkwOSw5LjkwOEg0My45ODd6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMzU0Ljg3MSwzNDAuNjU0YzE1Ljg3Mi04LjcwNSwyNi43NzMtMjUuMzY3LDI2Ljc3My00NC43MDNjMC0yOC4yMTctMjIuOTY3LTUxLjE2OC01MS4xODQtNTEuMTY4ICAgYy05LjkyMywwLTE5LjExOCwyLjk2Ni0yNi45NzUsNy44NzNjLTQuNzA1LDE4LjcyOC0xMi4xMTMsMzYuNjQyLTIxLjgwMyw1Mi4yMDJDMzA5LjE1MiwzMTAuMDIyLDMzNC4zNTcsMzIyLjUzMSwzNTQuODcxLDM0MC42NTR6ICAgIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNNDYwLjc4MiwyNzYuNTg4YzAtNS45MDktNC43OTktMTAuNjkzLTEwLjY4NS0xMC42OTNINDI4LjE0Yy0xLjg5Ni02LjE4OS00LjQxMS0xMi4xMjEtNy4zOTMtMTcuNzVsMTUuNTQ0LTE1LjU0NCAgIGMyLjAyLTIuMDA0LDMuMTM3LTQuNzIxLDMuMTM3LTcuNTU1YzAtMi44MzUtMS4xMTgtNS41NTMtMy4xMzctNy41NjNsLTI3LjM2My0yNy4zNzFjLTIuMDgtMi4wOS00LjgyOS0zLjEzOC03LjU2MS0zLjEzOCAgIGMtMi43MzQsMC01LjQ2NywxLjA0OC03LjU0NywzLjEzOGwtMTUuNTc2LDE1LjU1MmMtNS42MjMtMi45ODItMTEuNTM5LTUuNDgxLTE3Ljc1MS03LjM2OXYtMjEuOTU4ICAgYzAtNS45MDEtNC43NjgtMTAuNjg1LTEwLjY2OS0xMC42ODVIMzExLjExYy0yLjU5NCwwLTQuODc3LDEuMDQtNi43MzksMi41NzhjMy4yNiwxMS44OTUsNS4wNDYsMjQuNzkzLDUuMDQ2LDM4LjU1MiAgIGMwLDguNzM1LTAuNjgyLDE3LjYwNC0xLjk1NiwyNi40MjNjNy4yMDUtMi42NTYsMTQuODc2LTQuMzI0LDIyLjk5OS00LjMyNGMzNi45OSwwLDY3LjA4NiwzMC4wODksNjcuMDg2LDY3LjA3ICAgYzAsMjMuNjM3LTEyLjM0NSw0NC4zNTMtMzAuODcyLDU2LjMwM2MxMy40OCwxNC43ODQsMjQuMTk1LDMyLjMyNCwzMS4xNjgsNTEuOTc2YzEuMTQ4LDAuMzk2LDIuMzQ0LDAuNjg0LDMuNTQsMC42ODQgICBjMi43MzMsMCw1LjQ2Ny0xLjA0LDcuNTYzLTMuMTNsMjcuMzc5LTI3LjM3MWMyLjAwNC0yLjAwNCwzLjEwNi00LjcyMSwzLjEwNi03LjU1NXMtMS4xMDItNS41NTEtMy4xMDYtNy41NjNsLTE1LjU3Ni0xNS41NTIgICBjMi45ODItNS42MjEsNS40OTctMTEuNTU1LDcuMzkzLTE3Ljc1aDIxLjk1N2MyLjgyNiwwLDUuNTc1LTEuMTE4LDcuNTYzLTMuMTM4YzIuMDA0LTEuOTk2LDMuMTM4LTQuNzIsMy4xMzgtNy41NTUgICBMNDYwLjc4MiwyNzYuNTg4eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggZD0iTTM3Ni4wMzgsNDEzLjkwNmMtMTYuNjAyLTQ4Ljg0OC02MC40NzEtODIuNDQ1LTExMS4xMTMtODcuMDE4Yy0xNi45NTgsMTcuOTU4LTM3Ljk1NCwyOS4zNTEtNjEuNzMxLDI5LjM1MSAgIGMtMjMuNzU5LDAtNDQuNzcxLTExLjM5Mi02MS43MTMtMjkuMzUxYy01MC42NzIsNC41NzMtOTQuNTQzLDM4LjE3LTExMS4xNDUsODcuMDI2bC05LjE3NywyNy4wMTMgICBjLTIuNjI1LDcuNzczLTEuMzY4LDE2LjMzOCwzLjQxNiwyMy4wMDdjNC43ODMsNi42NzEsMTIuNDg2LDEwLjYzMSwyMC42ODUsMTAuNjMxaDMxNS44NTNjOC4yMTUsMCwxNS45MTgtMy45NiwyMC43MDItMTAuNjMxICAgYzQuNzY3LTYuNjY5LDYuMDQxLTE1LjIzNCwzLjQtMjMuMDA3TDM3Ni4wMzgsNDEzLjkwNnoiIGZpbGw9IiNGRkZGRkYiLz4KCTxwYXRoIGQ9Ik0xMjAuODQyLDIwNi43ODJjMCw2MC41ODksMzYuODgzLDEyNS42MDMsODIuMzUyLDEyNS42MDNjNDUuNDg3LDAsODIuMzY4LTY1LjAxNCw4Mi4zNjgtMTI1LjYwMyAgIEMyODUuNTYzLDgxLjE4OCwxMjAuODQyLDgwLjkzOSwxMjAuODQyLDIwNi43ODJ6IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth"  />
          
                    <h4 class="text-center">Accounts</h4>
                <div class="row">
                <div class="col-md-12" id="AddADmin">
                     <div class="col-md-4">
                                 <div class="box hovereffect" id="AddAdmin">
                                    <div class="overlay">
                                       
                                            <h3 class="info"> <a id="animateAddAdmin" href="#modalAddAdmin">Edit item</a></h3>
                                        
                                    </div>
                                     <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDI5NyAyOTciIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI5NyAyOTciIHdpZHRoPSI2NHB4IiBoZWlnaHQ9IjY0cHgiPgogIDxnPgogICAgPHBhdGggZD0ibTExMC41NDksOTguNzY4YzI3LjIzMSwwIDQ5LjM4NC0yMi4xNTQgNDkuMzg0LTQ5LjM4NCAwLjAwMS0yNy4yMzEtMjIuMTUzLTQ5LjM4NC00OS4zODQtNDkuMzg0cy00OS4zODQsMjIuMTUzLTQ5LjM4NCw0OS4zODRjMCwyNy4yMzEgMjIuMTU0LDQ5LjM4NCA0OS4zODQsNDkuMzg0eiIgZmlsbD0iI0ZGRkZGRiIvPgogICAgPHBhdGggZD0ibTIyNi44MjMsMTg1LjMwN2MtMzAuNzk0LDAtNTUuODQ2LDI1LjA1My01NS44NDYsNTUuODQ2IDAsMzAuNzk0IDI1LjA1Myw1NS44NDYgNTUuODQ2LDU1Ljg0NnM1NS44NDYtMjUuMDUzIDU1Ljg0Ni01NS44NDZjMC0zMC43OTMtMjUuMDUyLTU1Ljg0Ni01NS44NDYtNTUuODQ2em0zNC4wMTcsNDQuMjQ3bC0zNi40OTQsMzYuNDk0Yy0xLjgzNiwxLjgzNS00LjI0MSwyLjc1My02LjY0NywyLjc1My0yLjQwNiwwLTQuODExLTAuOTE4LTYuNjQ3LTIuNzUzbC0xOC4yNDctMTguMjQ3Yy0zLjY3MS0zLjY3MS0zLjY3MS05LjYyMyAwLTEzLjI5NCAzLjY3Mi0zLjY3IDkuNjIyLTMuNjcgMTMuMjk0LDBsMTEuNiwxMS42MDEgMjkuODQ3LTI5Ljg0OGMzLjY3Mi0zLjY3IDkuNjIyLTMuNjcgMTMuMjk0LDAgMy42NzEsMy42NzEgMy42NzEsOS42MjMtNS42ODQzNGUtMTQsMTMuMjk0eiIgZmlsbD0iI0ZGRkZGRiIvPgogICAgPHBhdGggZD0ibTIwNi43NTEsMTcyLjcydi04LjcxM2MwLTE4Ljc5My0xMi4wNzctMzUuNDU3LTI5LjkzNS00MS4zMDdsLS4wODMtLjAyNy0yNi4xMjEtNC4zMjVjLTIuMjIzLTAuNjg0LTQuNTk5LDAuNDkzLTUuMzk4LDIuNjg2bC0yOS42MzgsODEuMzE5Yy0xLjcxLDQuNjkxLTguMzQ1LDQuNjkxLTEwLjA1NSwwbC0yOS42MzgtODEuMzE5Yy0wLjY0Ni0xLjc3MS0yLjMxNy0yLjg4MS00LjEwOC0yLjg4MS0wLjQyNSwwLTI3LjQxLDQuNTE0LTI3LjQxLDQuNTE0LTE4LjAwNSw2LTMwLjAzNSwyMi42OTEtMzAuMDM1LDQxLjU2NXY2Ny42NjRjMCwxMC4xNCA4LjIyLDE4LjM2IDE4LjM2LDE4LjM2aDEyMy40MDVjLTAuMzgyLTIuOTg0LTAuNjAxLTYuMDE3LTAuNjAxLTkuMTAzIDAuMDAxLTMyLjM2MSAyMS42NzEtNTkuNzQgNTEuMjU3LTY4LjQzM3oiIGZpbGw9IiNGRkZGRkYiLz4KICAgIDxwYXRoIGQ9Im0xMjEuNDg3LDExMy4zOTVjLTEuMTU3LTEuMjYtMi44NDgtMS44OTUtNC41NTgtMS44OTVoLTEyLjc1OWMtMS43MTEsMC0zLjQwMiwwLjYzNC00LjU1OCwxLjg5NS0xLjc5MSwxLjk1MS0yLjA1MSw0Ljc2OS0wLjc3OSw2Ljk3Mmw2LjgyLDEwLjI4Mi0zLjE5MywyNi45MzQgNi4yODcsMTYuNzI1YzAuNjEzLDEuNjgyIDIuOTkyLDEuNjgyIDMuNjA1LDBsNi4yODctMTYuNzI1LTMuMTkzLTI2LjkzNCA2LjgyLTEwLjI4MmMxLjI3Mi0yLjIwMyAxLjAxMi01LjAyMS0wLjc3OS02Ljk3MnoiIGZpbGw9IiNGRkZGRkYiLz4KICA8L2c+Cjwvc3ZnPgo="  class="img-center-nowidth"/>
                                      <h4>Create Admin Account</h4>
                                </div>
                         </div>
                     <div class="col-md-4">
                                 <div class="box hovereffect" id="">
                                    <div class="overlay">
                                        
                                            <h3 class="info"> <a id="animateDeleteAdmin" href="#modalDeleteAdmin">Edit item </a></h3>
                                       
                                    </div>
                                     <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCAzMjggMzI4IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAzMjggMzI4OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnIGlkPSJYTUxJRF80NjNfIj4KCTxwYXRoIGlkPSJYTUxJRF80NjRfIiBkPSJNMjIzLDExNi43NWMtMzQuNDg4LDAtNjUuMTQ1LDE2LjcxNi04NC4yOTgsNDIuNDdjLTcuNzYzLTEuNjI4LTE1LjY5NC0yLjQ3LTIzLjcwMi0yLjQ3ICAgYy02My40MTIsMC0xMTUsNTEuNTg5LTExNSwxMTVjMCw4LjI4NCw2LjcxNSwxNSwxNSwxNWgxMjUuNTk2YzE5LjI0NiwyNC4zNDgsNDkuMDMsNDAsODIuNDA0LDQwYzU3Ljg5NiwwLDEwNS00Ny4xMDMsMTA1LTEwNSAgIFMyODAuODk2LDExNi43NSwyMjMsMTE2Ljc1eiBNMjIzLDI5Ni43NWMtNDEuMzU2LDAtNzUtMzMuNjQ1LTc1LTc1czMzLjY0NC03NSw3NS03NWM0MS4zNTQsMCw3NSwzMy42NDUsNzUsNzUgICBTMjY0LjM1NCwyOTYuNzUsMjIzLDI5Ni43NXoiIGZpbGw9IiNGRkZGRkYiLz4KCTxwYXRoIGlkPSJYTUxJRF80NjhfIiBkPSJNMjUzLDIwNi43NWgtNjBjLTguMjg1LDAtMTUsNi43MTYtMTUsMTVzNi43MTUsMTUsMTUsMTVoNjBjOC4yODMsMCwxNS02LjcxNiwxNS0xNSAgIFMyNjEuMjgzLDIwNi43NSwyNTMsMjA2Ljc1eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggaWQ9IlhNTElEXzQ2OV8iIGQ9Ik0xNzcuNzUsNjQuMDAxQzE3Ny43NSwyOS40LDE0OS42MDEsMS4yNSwxMTUsMS4yNWMtMzQuNjAyLDAtNjIuNzUsMjguMTUtNjIuNzUsNjIuNzUxICAgUzgwLjM5OCwxMjYuNzUsMTE1LDEyNi43NUMxNDkuNjAxLDEyNi43NSwxNzcuNzUsOTguNjAyLDE3Ny43NSw2NC4wMDF6IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                                    <h4>Delete Admin Account </h4>
                                </div>
                         </div>
                    <div class="col-md-4">
                                 <div class="box hovereffect" id="">
                                    <div class="overlay">
                                        
                                            <h3 class="info"><a id="animateEditAdmin" href="#modalEditAdmin">Edit item </a></h3>
                                       
                                    </div>
                                     <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDI5NyAyOTciIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI5NyAyOTciIHdpZHRoPSI2NHB4IiBoZWlnaHQ9IjY0cHgiPgogIDxnPgogICAgPHBhdGggZD0ibTExMi42MzIsMTg1LjA3NGw2Ljg4LTMuOTcyYzIuODA0LTEuNjE5IDMuNzY1LTUuMjA1IDIuMTQ2LTguMDFsLTEzLjAzNi0yMi41NzljLTEuMDg2LTEuODgxLTMuMDU3LTIuOTMzLTUuMDgzLTIuOTMzLTAuOTk1LDAtMi4wMDMsMC4yNTMtMi45MjYsMC43ODdsLTYuODgsMy45NzJjLTAuOTQ1LDAuNTQ1LTEuOTQ3LDAuNzk0LTIuOTIzLDAuNzk0LTMuMDYzLDAtNS44NzItMi40NDktNS44NzItNS44NzJ2LTcuOTQ0YzAtMy4yMzgtMi42MjUtNS44NjQtNS44NjQtNS44NjRoLTI2LjA3M2MtMy4yMzgsMC01Ljg2NCwyLjYyNS01Ljg2NCw1Ljg2NHY3Ljk0NGMwLDMuNDIzLTIuODEsNS44NzItNS44NzIsNS44NzItMC45NzYsMC0xLjk3OC0wLjI0OS0yLjkyMy0wLjc5NGwtNi44OC0zLjk3MmMtMC45MjMtMC41MzMtMS45MzItMC43ODYtMi45MjYtMC43ODctMi4wMjcsMC0zLjk5NywxLjA1Mi01LjA4MywyLjkzM2wtMTMuMDM2LDIyLjU3OWMtMS42MTksMi44MDUtMC42NTgsNi4zOTEgMi4xNDYsOC4wMWw2Ljg4LDMuOTcyYzMuOTA5LDIuMjU3IDMuOTA5LDcuODk5IDAsMTAuMTU2bC02Ljg4LDMuOTcyYy0yLjgwNSwxLjYxOS0zLjc2NSw1LjIwNS0yLjE0Niw4LjAxbDEzLjAzNiwyMi41NzljMS4wODYsMS44ODEgMy4wNTcsMi45MzMgNS4wODMsMi45MzMgMC45OTUsMCAyLjAwMy0wLjI1NCAyLjkyNi0wLjc4N2w2Ljg4LTMuOTcyYzAuOTQ1LTAuNTQ1IDEuOTQ3LTAuNzk0IDIuOTIzLTAuNzk0IDMuMDYzLDAgNS44NzIsMi40NDkgNS44NzIsNS44NzJ2Ny45NDRjMCwzLjIzOCAyLjYyNSw1Ljg2NCA1Ljg2NCw1Ljg2NGgyNi4wNzJjMy4yMzgsMCA1Ljg2NC0yLjYyNSA1Ljg2NC01Ljg2NHYtNy45NDRjMC0zLjQyMyAyLjgxLTUuODcyIDUuODcyLTUuODcyIDAuOTc2LDAgMS45NzgsMC4yNDkgMi45MjMsMC43OTRsNi44OCwzLjk3MmMwLjkyMywwLjUzMyAxLjkzMiwwLjc4NyAyLjkyNiwwLjc4NyAyLjAyNywwIDMuOTk3LTEuMDUyIDUuMDgzLTIuOTMzbDEzLjAzNi0yMi41NzljMS42MTktMi44MDUgMC42NTgtNi4zOTEtMi4xNDYtOC4wMWwtNi44OC0zLjk3MmMtMy45MDgtMi4yNTctMy45MDgtNy45IDAuMDAxLTEwLjE1NnptLTQ2LjU5NCwyMi40NzRjLTkuNjA4LDAtMTcuMzk2LTcuNzg5LTE3LjM5Ni0xNy4zOTYgMC05LjYwOCA3Ljc4OS0xNy4zOTYgMTcuMzk2LTE3LjM5NnMxNy4zOTYsNy43ODkgMTcuMzk2LDE3LjM5NmMwLDkuNjA3LTcuNzg5LDE3LjM5Ni0xNy4zOTYsMTcuMzk2eiIgZmlsbD0iI0ZGRkZGRiIvPgogICAgPHBhdGggZD0ibTEwOC4xMDksMjMuNjU5Yy0zLjE0Ni0zLjE0NC04LjI0My0zLjE0NC0xMS4zODksMC0zLjE0NSwzLjE0Ni0zLjE0NSw4LjI0NCAwLDExLjM4OWwxNC4zOSwxNC4zODljLTUyLjg4OSwyLjYxOS05NS43MDEsNDQuMTYyLTEwMC4zMzQsOTYuNTA2bDEuMTktMi4wNjJjMy40MDYtNS45IDkuNzU2LTkuNTY1IDE2LjU3LTkuNTY0IDAuMTQ0LDAgMC4yODcsMC4wMTMgMC40MzEsMC4wMTcgOS4wNzQtMzcuNzIxIDQxLjk2NS02Ni4yNTEgODEuODE1LTY4LjcyOWwtMTQuMDYyLDE0LjA2MWMtMy4xNDUsMy4xNDUtMy4xNDUsOC4yNDQgMCwxMS4zODkgMS41NzMsMS41NzIgMy42MzMsMi4zNTggNS42OTQsMi4zNThzNC4xMjItMC43ODYgNS42OTQtMi4zNThsMjguMDA0LTI4LjAwNGMxLjUxLTEuNTExIDIuMzU4LTMuNTU5IDIuMzU4LTUuNjk0IDAtMi4xMzYtMC44NDgtNC4xODQtMi4zNTgtNS42OTRsLTI4LjAwMy0yOC4wMDR6IiBmaWxsPSIjRkZGRkZGIi8+CiAgICA8cGF0aCBkPSJtMjA5Ljg2OCw2NC44NTdjMTcuODgxLDAgMzIuNDI4LTE0LjU0NyAzMi40MjgtMzIuNDI4IDAtMTcuODgyLTE0LjU0Ny0zMi40MjktMzIuNDI4LTMyLjQyOS0xNy44ODEsMC0zMi40MjgsMTQuNTQ3LTMyLjQyOCwzMi40MjggMCwxNy44ODEgMTQuNTQ3LDMyLjQyOSAzMi40MjgsMzIuNDI5eiIgZmlsbD0iI0ZGRkZGRiIvPgogICAgPHBhdGggZD0ibTI3My4wMzksMTUyLjI3NnYtNDQuNThjMC0xMi4zNC03LjkzLTIzLjI4My0xOS42NTctMjcuMTI0bC0uMDU0LS4wMTgtMTcuMTUyLTIuODRjLTEuNDYtMC40NDktMy4wMiwwLjMyNC0zLjU0NSwxLjc2NGwtMTkuNDYyLDUzLjM5OWMtMS4xMjMsMy4wODEtNS40OCwzLjA4MS02LjYwMiwwbC0xOS40NjItNTMuMzk5Yy0wLjQyNC0xLjE2My0xLjUyMi0xLjg5Mi0yLjY5OC0xLjg5Mi0wLjI3OSwwLTE3Ljk5OSwyLjk2NC0xNy45OTksMi45NjQtMTEuODIzLDMuOTQtMTkuNzIzLDE0LjktMTkuNzIzLDI3LjI5NHY0NC40MzJjMCw2LjY1OSA1LjM5OCwxMi4wNTYgMTIuMDU2LDEyLjA1NmgxMDIuMjQxYzYuNjYtMi44NDIxN2UtMTQgMTIuMDU3LTUuMzk4IDEyLjA1Ny0xMi4wNTZ6IiBmaWxsPSIjRkZGRkZGIi8+CiAgICA8cGF0aCBkPSJtMjg3LjM3LDE2Mi45MzNjLTAuNjczLDkuMjE1LTguMjMzLDE0Ljg1OC0xNy40NSwxNS41MjYtNy4wNjIsNDAuNDI1LTQxLjIwNyw3MS42NC04Mi45NzksNzQuMjM3bDE0LjA2MS0xNC4wNjFjMy4xNDUtMy4xNDYgMy4xNDUtOC4yNDQgMC0xMS4zODktMy4xNDYtMy4xNDQtOC4yNDMtMy4xNDQtMTEuMzg5LDBsLTI4LjAwMywyOC4wMDRjLTMuMTQ1LDMuMTQ2LTMuMTQ1LDguMjQ0IDAsMTEuMzg5bDI4LjAwMywyOC4wMDNjMS41NzMsMS41NzIgMy42MzMsMi4zNTggNS42OTQsMi4zNThzNC4xMjItMC43ODYgNS42OTQtMi4zNThjMy4xNDUtMy4xNDUgMy4xNDUtOC4yNDQgMC0xMS4zODlsLTE0LjM4OS0xNC4zODljNTYuMDI4LTIuNzc0IDEwMC43NTgtNDkuMjI3IDEwMC43NTgtMTA1LjkzMXoiIGZpbGw9IiNGRkZGRkYiLz4KICAgIDxwYXRoIGQ9Im0yMTYuOTM2LDc3LjEwNWMtMC43NDctMC44MTQtMS44NC0xLjIyNC0yLjk0Ni0xLjIyNGgtOC4yNDVjLTEuMTA1LDAtMi4xOTgsMC40MS0yLjk0NiwxLjIyNC0xLjE1NywxLjI2MS0xLjMyNSwzLjA4Mi0wLjUwNCw0LjUwNWw0LjQwNyw2LjY0NC0yLjA2MywxNy40MDUgNC4wNjMsMTAuODA4YzAuMzk2LDEuMDg3IDEuOTMzLDEuMDg3IDIuMzMsMGw0LjA2My0xMC44MDgtMi4wNjMtMTcuNDA1IDQuNDA3LTYuNjQ0YzAuODIyLTEuNDIzIDAuNjU0LTMuMjQ0LTAuNTAzLTQuNTA1eiIgZmlsbD0iI0ZGRkZGRiIvPgogIDwvZz4KPC9zdmc+Cg=="  class="img-center-nowidth" />
                                     <h4>Edit Admin Account </h4>
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
                <asp:Label ID="lblPickProcessor" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Processors panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>

        <div class="modal-content">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />
                    <asp:Panel ID="pnlProcessor" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvProcessors" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvProcessors_PageIndexChanging" OnRowCancelingEdit="gvProcessors_RowCancelingEdit" OnRowEditing="gvProcessors_RowEditing" OnRowUpdating="gvProcessors_RowUpdating" OnRowDeleting="gvProcessors_RowDeleting">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Cores" HeaderText="Cores" />
                                    <asp:BoundField DataField="Threads" HeaderText="Threads" />
                                    <asp:BoundField DataField="Clock" HeaderText="Clock" />
                                    <asp:BoundField DataField="Cache" HeaderText="Cache" />
                                    <asp:BoundField DataField="Score" HeaderText="Score" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new processor</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbNameProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Number of Cores</h4></td>
                                     <td><asp:TextBox ID="tbCoresProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Number of Threads</h4></td>
                                     <td><asp:TextBox ID="tbThreadsProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Clock Cylce</h4></td>
                                     <td><asp:TextBox ID="tbClockProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Cache</h4></td>
                                     <td><asp:TextBox ID="tbCacheProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Score</h4></td>
                                     <td><asp:TextBox ID="tbScoreProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbStockProc" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbPriceProc" runat="server" BackColor="Black" ></asp:TextBox></td>
                                     
                                 </tr>
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnCancelProc" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnCancelProc_Click" /></td>
                                     <td>
                                         <asp:Button ID="btnAddProc" runat="server" Text="Add New Processor"  CssClass="btn-center-register" Width="100%" OnClick="btnAddProc_Click" /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="gvProcessors"  />
                </Triggers>
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>
    <div id="modalMotherboards">
        <div class="close-modalMotherboards">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel3" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Motherboards panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


                <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelMotherboards" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />
                    <asp:Panel ID="Panel7" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvMotherboards" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvMotherboards_PageIndexChanging" OnRowCancelingEdit="gvMotherboards_RowCancelingEdit" OnRowEditing="gvMotherboards_RowEditing" OnRowUpdating="gvMotherboards_RowUpdating" OnRowDeleting="gvMotherboards_RowDeleting">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new motherboard</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbMbName" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbMbPrice" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbMbStock" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Description</h4></td>
                                     <td><asp:TextBox ID="tbMbDescription" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
   
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnMbCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnMbCancel_Click" /></td>
                                     <td>
                                         <asp:Button ID="btMbAdd" runat="server" Text="Add New motherboard"  CssClass="btn-center-register" Width="100%" OnClick="btMbAdd_Click" /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>
                </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>

    </div>
        <div id="modalPU">
        <div class="close-modalPU">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel2" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Power Units panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelPower" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />
                    <asp:Panel ID="Panel8" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvPowerUnit" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnRowCancelingEdit="gvPowerUnit_RowCancelingEdit" OnRowDeleting="gvPowerUnit_RowDeleting" OnRowEditing="gvPowerUnit_RowEditing" OnRowUpdating="gvPowerUnit_RowUpdating" OnPageIndexChanging="gvPowerUnit_PageIndexChanging" >
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new power unit</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbPuName" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbPuPrice" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbPuStock" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Description</h4></td>
                                     <td><asp:TextBox ID="tbPuDescription" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
   
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnPuCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnPuCancel_Click" /></td>
                                     <td>
                                         <asp:Button ID="btnPuAdd" runat="server" Text="Add New power unit"  CssClass="btn-center-register" Width="100%" OnClick="btnPuAdd_Click"  /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>
                </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>

        <div id="modalGraphicsCards">
        <div class="close-modalGraphicsCards">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel4" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Graphics Card panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>
            <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelGraphics" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />
                    <asp:Panel ID="Panel9" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvGraphics" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvGraphics_PageIndexChanging" OnRowCancelingEdit="gvGraphics_RowCancelingEdit" OnRowDeleting="gvGraphics_RowDeleting" OnRowEditing="gvGraphics_RowEditing" OnRowUpdating="gvGraphics_RowUpdating"  >
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new Graphic Card</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbGcName" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbGcPrice" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbGcStock" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Description</h4></td>
                                     <td><asp:TextBox ID="tbGcDescription" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
   
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnGcCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnGcCancel_Click" /></td>
                                     <td>
                                         <asp:Button ID="btnGcAdd" runat="server" Text="Add New Graphic card"  CssClass="btn-center-register" Width="100%" OnClick="btnGcAdd_Click"   /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>
                </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>

    </div>

        <div id="modalRAM">
        <div class="close-modalRAM">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel5" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="RAM panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>


        <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelRam" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />
                    <asp:Panel ID="Panel10" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvRam" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvRam_PageIndexChanging" OnRowCancelingEdit="gvRam_RowCancelingEdit" OnRowDeleting="gvRam_RowDeleting" OnRowEditing="gvRam_RowEditing" OnRowUpdating="gvRam_RowUpdating"  >
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new Ram memory</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbRmName" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbRmPrice" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbRmStock" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Description</h4></td>
                                     <td><asp:TextBox ID="tbRmDescription" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
   
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnRmCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnRmCancel_Click" /></td>
                                     <td>
                                         <asp:Button ID="btnRmAdd" runat="server" Text="Add New ram memory"  CssClass="btn-center-register" Width="100%" OnClick="btnRmAdd_Click"   /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>
                </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>

        <div id="modalHardDrives">
        <div class="close-modalHardDrives">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel6" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Storage panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>
             <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelStorage" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />

               <asp:Panel ID="Panel11" runat="server" Visible="True" Height="1000px">
                        <div class="row">
                        <div class="col-lg-12 table" >
                            <asp:GridView ID="gvStorage" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvStorage_PageIndexChanging" OnRowCancelingEdit="gvStorage_RowCancelingEdit" OnRowDeleting="gvStorage_RowDeleting" OnRowEditing="gvStorage_RowEditing" OnRowUpdating="gvStorage_RowUpdating"   >
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                    
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >Add new storge</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Name</h4></td>
                                     <td> <asp:TextBox ID="tbStName" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Price</h4></td>
                                     <td><asp:TextBox ID="tbStPrice" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Stock</h4></td>
                                     <td><asp:TextBox ID="tbStStock" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                   <tr>
                                     <td><h4 >Description</h4></td>
                                     <td><asp:TextBox ID="tbStDescription" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
   
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnStCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnStCancel_Click"  /></td>
                                     <td>
                                         <asp:Button ID="btnStAdd" runat="server" Text="Add New storage"  CssClass="btn-center-register" Width="100%" OnClick="btnStAdd_Click"  /></td>
                                     
                                 </tr>
                             </table>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>   </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>

     

     <div id="modalAddAdmin">
        <div class="close-modalAddAdmin">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel14" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Add new admin panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>
             <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelNewAdmin" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />

               <asp:Panel ID="Panel15" runat="server" Visible="True" Height="800px">
                       
                        <div class="row">
                            <div class="col-md-3" ></div>
                         <div class="col-md-6 center-block text-center" style="height:80%" >
                             
                            
                             <div class="box center-block ">
                                  <h4 >New admin account</h4>    
                                 <div class="overlay">
                                      <table style="width: 100%; height=100%">
                                 
                                 <tr>
                                     <td><h4 >Username</h4></td>
                                     <td> <asp:TextBox ID="tbAdUsername" runat="server" BackColor="Black"></asp:TextBox></td>
                                    
                                 </tr>
                                 <tr>
                                     <td><h4 >Password</h4></td>
                                     <td><asp:TextBox ID="tbAdPassword" runat="server" BackColor="Black" TextMode="Password"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                     <td><h4 >Type</h4></td>
                                     <td> <asp:DropDownList ID="ddlAdType" BackColor="Black" runat="server" Width="123px">
                                         <asp:ListItem>admin</asp:ListItem>
                                         <asp:ListItem>user</asp:ListItem>
                                         </asp:DropDownList> </td>
                                      
                                 </tr>
                                   <tr>
                                     <td><h4 >First name</h4></td>
                                     <td><asp:TextBox ID="tbAdFN" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                    
                                  <tr>
                                     <td><h4 >Last name</h4></td>
                                     <td><asp:TextBox ID="tbAdLN" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                    
                                  <tr>
                                     <td><h4 >E-mail</h4></td>
                                     <td><asp:TextBox ID="tbAdemail" runat="server" BackColor="Black"></asp:TextBox></td>
                                     
                                 </tr>
                                           <tr>
                                     <td>
                                         <asp:Button ID="btnAdCancel" runat="server" Text="Cancel" CssClass="btn-center-register" OnClick="btnAdCancel_Click"   /></td>
                                     <td >
                                         <asp:Button ID="btnAdAdd"  runat="server" Text="Add New Account"  CssClass="btn-center-register" Width="100%" OnClick="btnAdAdd_Click"  /></td>
                                     
                                 </tr>
                             </table>
                                     <asp:Label ID="lbAdStatus" runat="server" Text=""></asp:Label>
                                 </div>

                             </div>
                            

                         </div>
                            </div>
                        </asp:Panel>   </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>

    <div id="modalDeleteAdmin">
        <div class="close-modalDeleteAdmin">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel12" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Delete admin panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>
             <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelDeleteAdmin" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />

               <asp:Panel ID="Panel13" runat="server" Visible="True" Height="800px">
                     
                          <asp:GridView ID="gvDeleteAcc" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnRowDeleting="gcDeleteAcc_RowDeleting" OnPageIndexChanging="gcDeleteAcc_PageIndexChanging"   >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="username" HeaderText="Username"  />
                                    <asp:BoundField DataField="password" HeaderText="Password" />
                                    <asp:BoundField DataField="type" HeaderText="Type" />
                                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                    <asp:BoundField DataField="email" HeaderText="E-mail" />
                                    
                                   
                                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </asp:Panel>   </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
        </div>
    </div>

     <div id="modalEditAdmin">
        <div class="close-modalEditAdmin">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUyIDUyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MiA1MjsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNHB4IiBoZWlnaHQ9IjI0cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yNiwwQzExLjY2NCwwLDAsMTEuNjYzLDAsMjZzMTEuNjY0LDI2LDI2LDI2czI2LTExLjY2MywyNi0yNlM0MC4zMzYsMCwyNiwweiBNMjYsNTBDMTIuNzY3LDUwLDIsMzkuMjMzLDIsMjYgICBTMTIuNzY3LDIsMjYsMnMyNCwxMC43NjcsMjQsMjRTMzkuMjMzLDUwLDI2LDUweiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTM1LjcwNywxNi4yOTNjLTAuMzkxLTAuMzkxLTEuMDIzLTAuMzkxLTEuNDE0LDBMMjYsMjQuNTg2bC04LjI5My04LjI5M2MtMC4zOTEtMC4zOTEtMS4wMjMtMC4zOTEtMS40MTQsMCAgIHMtMC4zOTEsMS4wMjMsMCwxLjQxNEwyNC41ODYsMjZsLTguMjkzLDguMjkzYy0wLjM5MSwwLjM5MS0wLjM5MSwxLjAyMywwLDEuNDE0QzE2LjQ4OCwzNS45MDIsMTYuNzQ0LDM2LDE3LDM2ICAgczAuNTEyLTAuMDk4LDAuNzA3LTAuMjkzTDI2LDI3LjQxNGw4LjI5Myw4LjI5M0MzNC40ODgsMzUuOTAyLDM0Ljc0NCwzNiwzNSwzNnMwLjUxMi0wLjA5OCwwLjcwNy0wLjI5MyAgIGMwLjM5MS0wLjM5MSwwLjM5MS0xLjAyMywwLTEuNDE0TDI3LjQxNCwyNmw4LjI5My04LjI5M0MzNi4wOTgsMTcuMzE2LDM2LjA5OCwxNi42ODQsMzUuNzA3LDE2LjI5M3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" />
            <asp:Panel ID="Panel16" runat="server" BackColor="Black" CssClass="panel1">
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="FloralWhite" Text="Edit admin panel" CssClass="lblPickProcessor"></asp:Label>
                <br />
            </asp:Panel>
        </div>
             <div class="modal-content">
          
            <asp:UpdatePanel ID="updatePanelEditAdmin" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                   
                    <br />
                    <br />

               <asp:Panel ID="Panel17" runat="server" Visible="True"  Height="800px">
                    
                          <asp:GridView ID="gvEditAdmin" Width="100%" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" EditRowStyle-BackColor="Gray" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="text-center" ForeColor="Black"   Font-Size="Smaller" AllowPaging="True" OnPageIndexChanging="gvEditAdmin_PageIndexChanging" OnRowEditing="gvEditAdmin_RowEditing" OnRowUpdating="gvEditAdmin_RowUpdating" OnRowCancelingEdit="gvEditAdmin_RowCancelingEdit"  >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="username" HeaderText="Username"  />
                                    <asp:BoundField DataField="password" HeaderText="Password" />
                                    <asp:BoundField DataField="type" HeaderText="Type" />
                                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                                    <asp:BoundField DataField="email" HeaderText="E-mail" />
                                    
                                   
                                    <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                                </Columns>
                                <EditRowStyle BackColor="Silver" />
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="WhiteSmoke" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            </div>
                         </div>

                        </asp:Panel>   </ContentTemplate>
               
            </asp:UpdatePanel>
           
            <br />
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
            height: '75%',
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
            height: '75%',
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
            height: '75%',
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
            height: '75%',
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
            height: '75%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });
        $("#animateAddAdmin").animatedModal({
            modalTarget: 'modalAddAdmin',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '75%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });

        $("#animateDeleteAdmin").animatedModal({
            modalTarget: 'modalDeleteAdmin',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '60%',
            height: '75%',
            left: '25%',
            top: '10%',
            overflow: 'hidden'
        });

        $("#animateEditAdmin").animatedModal({
            modalTarget: 'modalEditAdmin',
            animatedIn: 'lightSpeedIn',
            animatedOut: 'bounceOutDown',
            color: 'white',
            width: '75%',
            height: '75%',
            left: '18%',
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
       
        $(document).ready(function () {
            $("div").scrollLeft();
          
        });
      

    </script>
</asp:Content>
