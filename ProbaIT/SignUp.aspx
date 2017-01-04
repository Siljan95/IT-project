<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProbaIT.SignUp" MasterPageFile="~/Default.Master" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div class="col-sm-9 col-lg-10">
    <div style="width:70%;margin:2% auto;">
       <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUwMi45ODcgNTAyLjk4NyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTAyLjk4NyA1MDIuOTg3OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPGc+CgkJPGNpcmNsZSBjeD0iMTg1Ljk5NCIgY3k9IjEwMi4wMDgiIHI9IjEwMi4wMDgiIGZpbGw9IiMwMDAwMDAiLz4KCQk8cGF0aCBkPSJNMzM0LjQ0NCwyNjEuNDU5Yy0xMy4yNDQsMC0yNS45NSwyLjI0My0zNy45LDYuMTkxYy0yNS4yMTYtMzIuMzM1LTY1LjI3My01My4zMjMtMTEwLjU1LTUzLjMyMyAgICBjLTc2LjM2MSwwLjAyMi0xMzguMjI2LDU5LjQ3MS0xMzguMjI2LDEzMi44OTh2NzMuNzk0aDE3Mi40MzdjMTYuMjIxLDQ3LjU4NSw2MS4yNjEsODEuOTY5LDExNC4yMzksODEuOTY5ICAgIGM2Ni42MTEsMCwxMjAuNzc1LTU0LjE4NiwxMjAuNzc1LTEyMC43NzVTNDAxLjA1NSwyNjEuNDU5LDMzNC40NDQsMjYxLjQ1OXogTTI0MC4zMDksMzgyLjIxMyAgICBjMC01MS44OTksNDIuMjM2LTk0LjE1Niw5NC4xMzUtOTQuMTU2YzUxLjk0MiwwLDk0LjE3OCw0Mi4yNTcsOTQuMTc4LDk0LjE1NmMwLDUxLjkyMS00Mi4yMzYsOTQuMTU2LTk0LjE3OCw5NC4xNTYgICAgQzI4Mi41NDUsNDc2LjM2OSwyNDAuMzA5LDQzNC4xMzQsMjQwLjMwOSwzODIuMjEzeiIgZmlsbD0iIzAwMDAwMCIvPgoJCTxwYXRoIGQ9Ik0zNTEuMjY5LDMxMi45N2gtMjkuOTgzYy0wLjAyMiwxNC4zNjYsMCw1Mi4xNTgsMCw1Mi4xNThzLTMyLjUyOSwwLTQ4LjYyMSwwLjA0M3YyOS45NjIgICAgYzE2LjA5Mi0wLjAyMiw0OC42MjEtMC4wMjIsNDguNjIxLTAuMDIyczAsMzcuNzQ5LTAuMDIyLDUyLjE4aDI5Ljk4M2MwLjAyMi0xNC40MzEsMC4wMjItNTIuMTgsMC4wMjItNTIuMThzMzIuNTA3LDAsNDguNTk5LDAgICAgdi0yOS45ODNjLTE2LjA5MiwwLTQ4LjU5OSwwLTQ4LjU5OSwwUzM1MS4yMjYsMzI3LjMzNywzNTEuMjY5LDMxMi45N3oiIGZpbGw9IiMwMDAwMDAiLz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth"/>
       <h2 class="text-center">Sign Up</h2>
       <p class="text-center"><asp:Label ID="Label1" Text="" runat="server" ForeColor="Red"></asp:Label></p>
   <form>
    <div class="form-group">
        <label for="inputUsername">Username</label>
        <asp:TextBox runat="server" ID="TxtUsername" Placeholder="Username" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtUsername" runat="server" ID="TxtUsernameRequired" ErrorMessage="The Username field is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="inputEmail">Email</label>
        <asp:TextBox runat="server" TextMode="Email" ID="TxtEmail" Placeholder="Email" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtEmail" runat="server" ID="TxtEmailRequired" CssClass="has-error" ErrorMessage="The Email field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ControlToValidate ="TxtEmail" runat="server" ID="TxtRegEx" CssClass="has-error" ErrorMessage="Invalid Email Address" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ForeColor="Red"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <label for="inputPassword">Password</label>
        <asp:TextBox runat="server" TextMode="Password" ID="TxtPassword" Placeholder="Password" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtPassword" runat="server" ID="RequiredFieldValidator1" CssClass="has-error" ErrorMessage="The Password field is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="inputPassword">Confirm Password</label>
        <asp:TextBox runat="server" TextMode="Password" ID="TxtConfirmPassword" Placeholder="Confirm Password" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtPassword" runat="server" ID="RequiredFieldValidator4" CssClass="has-error" ErrorMessage="The Confirm Password field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator Text="Passwords do not match" ControlToValidate ="TxtConfirmPassword"  ID="TxtConfirmPasswordCompare" ControlToCompare="TxtPassword"  runat="server" ForeColor="Red"></asp:CompareValidator>
    </div>
    <div class="form-group">
        <label for="inputFirstName">First Name</label>
        <asp:TextBox runat="server" ID="TxtFirstName" Placeholder="First Name" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtFirstName" runat="server" ID="RequiredFieldValidator2" CssClass="has-error" ErrorMessage="The First Name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="inputFirstName">Last Name</label>
        <asp:TextBox runat="server" ID="TxtLastName" Placeholder="Last Name" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate ="TxtLastName" runat="server" ID="RequiredFieldValidator3" CssClass="has-error" ErrorMessage="The Last Name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <p class="text-center"><asp:Button ID="Button1" runat="server"  OnClick="Button1_Click"  Text="Submit" CssClass="btn-center-register"/></p>
</form>
    </div>
</asp:Content>