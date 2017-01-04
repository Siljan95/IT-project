<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ProbaIT.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .goBtnHide {
            display: none;
            margin-top: 21%;
        }

        .goBtnShow {
            display: inline-block;
            position: absolute;
            top: 100%;
            left: 48%;
        }
    </style>
    <div class="col-sm-9 col-lg-10">
        <div class="row" style="margin: 0 auto; width:78.2%">
            <div class="col-md-12" style="margin-top:5%">
                <h1 class="text-center" style="font-weight: bolder; margin-top: 20%;">Your Orders</h1>
                <br />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>      
        </div>
    </div>
</asp:Content>
