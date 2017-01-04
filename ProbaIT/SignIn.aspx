<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ProbaIT.SignIn" MasterPageFile="~/Default.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10">
      <div style="margin-top:5%;padding:10%"> 
          <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCAyNTguNzUgMjU4Ljc1IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAyNTguNzUgMjU4Ljc1OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPGNpcmNsZSBjeD0iMTI5LjM3NSIgY3k9IjYwIiByPSI2MCIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggZD0iTTEyOS4zNzUsMTUwYy02MC4wNjEsMC0xMDguNzUsNDguNjg5LTEwOC43NSwxMDguNzVoMjE3LjVDMjM4LjEyNSwxOTguNjg5LDE4OS40MzYsMTUwLDEyOS4zNzUsMTUweiIgZmlsbD0iIzAwMDAwMCIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth"/>
        <h2 class="text-center">Sign in</h2>
     <form>
         <div class="form-group">
    <p class="text-center"><asp:Label runat="server" ID="Label1" Visible="false" ForeColor="Red"></asp:Label></p>
    <label for="TxtUsername">Username</label>
    <asp:TextBox runat="server" ID="TxtUsername" Placeholder="Username or Email" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate ="TxtUsername" runat="server" ID="TxtEmailRequired" CssClass="has-error" ErrorMessage="The Username field is required" ForeColor="Red"></asp:RequiredFieldValidator>
    <%--<asp:RegularExpressionValidator ControlToValidate ="TxtUsernmae" runat="server" ID="TxtRegEx" CssClass="has-error" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox TextMode="Password" runat="server" ID="TxtPassword" Placeholder="Password" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate ="TxtPassword" runat="server" ID="TxtPasswordRequired" CssClass="has-error" ErrorMessage="The Password field is required" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <p class="text-center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn-center-register"/></p>
         <p class="text-center">Or</p>
         <h4 class="text-center"><asp:HyperLink runat="server" NavigateUrl="~/SignUp.aspx" Text="Sign Up Now!"></asp:HyperLink></h4>
</form>
</div>
</asp:Content>