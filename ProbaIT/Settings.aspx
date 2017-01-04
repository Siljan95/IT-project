<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="ProbaIT.Settings" MasterPageFile="~/Default.Master" EnableEventValidation="false" %>


<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="col-sm-9 col-lg-10">
        <div style="width: 70%; margin: 2% auto;">
            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDQ5Mi4wMTQgNDkyLjAxNCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDkyLjAxNCA0OTIuMDE0OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnIGlkPSJYTUxJRF8xNDRfIj4KCTxwYXRoIGlkPSJYTUxJRF8xNTFfIiBkPSJNMzM5LjI3Nyw0NTkuNTY2SDM0LjkyMlYzMi40NDZoMzA0LjM1NHYxMDUuODczbDMyLjQ0Ni0zMi40NDdWMTYuMjIzQzM3MS43MjMsNy4yNjQsMzY0LjQ1OCwwLDM1NS41LDAgICBIMTguNjk5QzkuNzM5LDAsMi40NzMsNy4yNjQsMi40NzMsMTYuMjIzdjQ1OS41NjhjMCw4Ljk1OSw3LjI2NSwxNi4yMjMsMTYuMjI2LDE2LjIyM0gzNTUuNWM4Ljk1OCwwLDE2LjIyMy03LjI2NCwxNi4yMjMtMTYuMjIzICAgVjI5Ny4yNjhsLTMyLjQ0NiwzMi40NDdWNDU5LjU2NnoiIGZpbGw9IiMwMDAwMDAiLz4KCTxwYXRoIGlkPSJYTUxJRF8xNTBfIiBkPSJNMjkxLjQ0Niw3MS4zNTlIODIuNzUxYy02Ljg0MywwLTEyLjM5Niw1LjU1My0xMi4zOTYsMTIuMzk4YzAsNi44NDQsNS41NTMsMTIuMzk3LDEyLjM5NiwxMi4zOTdoMjA4LjY5NCAgIGM2Ljg0NSwwLDEyLjM5Ny01LjU1MywxMi4zOTctMTIuMzk3QzMwMy44NDMsNzYuOTEyLDI5OC4yOSw3MS4zNTksMjkxLjQ0Niw3MS4zNTl6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8cGF0aCBpZD0iWE1MSURfMTQ5XyIgZD0iTTMwMy44NDMsMTQ5Ljg3NmMwLTYuODQ0LTUuNTUzLTEyLjM5OC0xMi4zOTctMTIuMzk4SDgyLjc1MWMtNi44NDMsMC0xMi4zOTYsNS41NTQtMTIuMzk2LDEyLjM5OCAgIGMwLDYuODQ1LDUuNTUzLDEyLjM5OCwxMi4zOTYsMTIuMzk4aDIwOC42OTRDMjk4LjI5LDE2Mi4yNzQsMzAzLjg0MywxNTYuNzIyLDMwMy44NDMsMTQ5Ljg3NnoiIGZpbGw9IiMwMDAwMDAiLz4KCTxwYXRoIGlkPSJYTUxJRF8xNDhfIiBkPSJNMjc0LjAwNCwyMDMuNkg4Mi43NTFjLTYuODQzLDAtMTIuMzk2LDUuNTU0LTEyLjM5NiwxMi4zOThjMCw2Ljg0NSw1LjU1MywxMi4zOTcsMTIuMzk2LDEyLjM5N2gxNjYuNDU3ICAgTDI3NC4wMDQsMjAzLjZ6IiBmaWxsPSIjMDAwMDAwIi8+Cgk8cGF0aCBpZD0iWE1MSURfMTQ3XyIgZD0iTTIwNC42NTUsMjg1Ljc5YzEuNjc4LTUuNjE4LDQuMDc2LTExLjAwMSw2Ljk5Ny0xNi4wN2gtMTI4LjljLTYuODQzLDAtMTIuMzk2LDUuNTUzLTEyLjM5NiwxMi4zOTggICBjMCw2Ljg0NCw1LjU1MywxMi4zOTgsMTIuMzk2LDEyLjM5OGgxMTkuMzA0TDIwNC42NTUsMjg1Ljc5eiIgZmlsbD0iIzAwMDAwMCIvPgoJPHBhdGggaWQ9IlhNTElEXzE0Nl8iIGQ9Ik04Mi43NTEsMzM1Ljg0MmMtNi44NDMsMC0xMi4zOTYsNS41NTMtMTIuMzk2LDEyLjM5OGMwLDYuODQzLDUuNTUzLDEyLjM5NywxMi4zOTYsMTIuMzk3aDEwOC45ICAgYy0zLjIxMy03Ljc5Ni00LjA0NC0xNi40MDktMS43NzUtMjQuNzk1SDgyLjc1MXoiIGZpbGw9IiMwMDAwMDAiLz4KCTxwYXRoIGlkPSJYTUxJRF8xNDVfIiBkPSJNNDc5LjQwMyw5My45MDNjLTYuNDk2LTYuNDk5LTE1LjMwNC0xMC4xNDYtMjQuNDgtMTAuMTQ2Yy05LjE3NiwwLTE3Ljk4MiwzLjY0Ny0yNC40NzEsMTAuMTM4ICAgTDI0Ny4wMzYsMjc3LjMxNmMtNS4wMDUsNS4wMDMtOC42NzYsMTEuMTYyLTEwLjcwMywxNy45NDJsLTE0LjYxNiw0OC45OTRjLTAuNjIyLDIuMDc0LTAuMDU3LDQuMzE4LDEuNDc3LDUuODUyICAgYzEuMTIyLDEuMTIzLDIuNjI0LDEuNzI3LDQuMTY0LDEuNzI3YzAuNTU4LDAsMS4xMy0wLjA4LDEuNjg4LTAuMjQ5bDQ4Ljk5MS0xNC42MThjNi43ODItMi4wMjYsMTIuOTQxLTUuNjk5LDE3Ljk0My0xMC43MDIgICBsMTgzLjQyMi0xODMuNDE0YzYuNDg5LTYuNDksMTAuMTM4LTE1LjI5NSwxMC4xMzgtMjQuNDcyQzQ4OS41NCwxMDkuMTk3LDQ4NS44OTIsMTAwLjM5Miw0NzkuNDAzLDkzLjkwM3oiIGZpbGw9IiMwMDAwMDAiLz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
            <h2 class="text-center">Edit your account information</h2>
            <p class="text-center">
                <asp:Label ID="lblExceptionEdit" Text="" runat="server" ForeColor="Red"></asp:Label>
            </p>
            <br />
            <form>
                <div class="form-group">
                    <label for="inputName">First Name</label>
                    <asp:TextBox runat="server" ID="txtFirstNameEdit" Placeholder="Edit your first name" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="inputLastName">Last Name</label>
                    <asp:TextBox runat="server" ID="txtLastNameEdit" Placeholder="Edit your last name" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <asp:TextBox runat="server"  TextMode="Password" ID="txtPasswordEdit" Placeholder="Change your password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="inputPassword">Confirm password</label>
                    <asp:TextBox runat="server"  TextMode="Password" ID="txtConfirmPasswordEdit" Placeholder="Confirm change" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator Text="Passwords do not match" ControlToValidate="txtConfirmPasswordEdit" ID="TxtConfirmPasswordCompare1" ControlToCompare="txtPasswordEdit" runat="server" ForeColor="Red"></asp:CompareValidator>
                </div>
                <p class="text-center">
                    <asp:Button ID="btnSubmitChanges" runat="server" OnClick="btnSubmitChanges_Click" Text="Done" CssClass="btn-center-register" /></p>

            </form>
        </div>
    </div>
</asp:Content>
