<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CPUAnalyzer.aspx.cs" Inherits="ProbaIT.CPUAnalyzer" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10" style="height:100vh;">
      <div class="row" style="margin: 0 auto; width:78.2%">
        <div class="row" >
          <div class="col-md-12" style="margin-top:15px">
           
            <div class="well-grey-text" >
            
                <div class="well-grey" >
                  <!-- <img src="Styles/img/web.png" class="img-center-nowidth img-responsive" width="128" height="128"/> -->
                  <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDE4MCAxODAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4MCAxODA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTI4cHgiIGhlaWdodD0iMTI4cHgiPgo8cGF0aCBkPSJNMTgwLDE2OS41MzFWMTAuNDY5Yy0yLjkzMSwxLjYxNS02LjY4NiwxLjE4Ny05LjE3MS0xLjI5OGMtMi40ODUtMi40ODUtMi45MTQtNi4yNC0xLjI5OC05LjE3MUgzMS45MDV2Mi42NCAgYzAsMi4zNDQtMS44OTksNC4yNDMtNC4yNDMsNC4yNDNjLTIuMzQzLDAtNC4yNDItMS44OTktNC4yNDItNC4yNDNWMEgxMC40NjljMS42MTYsMi45MzEsMS4xODgsNi42ODYtMS4yOTgsOS4xNzEgIEM2LjY4NSwxMS42NTUsMi45MzEsMTIuMDg0LDAsMTAuNDY5djE1OS4wNjNjMi45MzEtMS42MTUsNi42ODUtMS4xODcsOS4xNzEsMS4yOThjMi40ODUsMi40ODUsMi45MTMsNi4yNCwxLjI5OCw5LjE3MUgyMy40MnYtMi42NCAgYzAtMi4zNDQsMS44OTktNC4yNDMsNC4yNDItNC4yNDNjMi4zNDQsMCw0LjI0MywxLjg5OSw0LjI0Myw0LjI0M1YxODBoMTM3LjYyNmMtMS42MTYtMi45MzEtMS4xODgtNi42ODYsMS4yOTgtOS4xNzEgIEMxNzMuMzE0LDE2OC4zNDUsMTc3LjA2OSwxNjcuOTE2LDE4MCwxNjkuNTMxeiBNMTU3Ljk0OCwxMzYuMjk1YzAsMTEuOTM5LTkuNzE0LDIxLjY1My0yMS42NTMsMjEuNjUzaC0yMi4zOTggIGMtMy4wOTksMC01LjYxLTIuNTEyLTUuNjEtNS42MWMwLTMuMDk5LDIuNTEyLTUuNjEsNS42MS01LjYxaDIyLjM5OGM1Ljc1MywwLDEwLjQzMy00LjY4LDEwLjQzMy0xMC40MzN2LTkyLjU5ICBjMC01Ljc1My00LjY4LTEwLjQzMy0xMC40MzMtMTAuNDMzSDQzLjcwM2MtNS43NTEsMC0xMC40MzEsNC42OC0xMC40MzEsMTAuNDMzdjkyLjU5YzAsNS43NTMsNC42NzksMTAuNDMzLDEwLjQzMSwxMC40MzNoMjIuNCAgYzMuMDk5LDAsNS42MSwyLjUxMiw1LjYxLDUuNjFjMCwzLjA5OS0yLjUxMiw1LjYxLTUuNjEsNS42MWgtMjIuNGMtMTEuOTM4LDAtMjEuNjUxLTkuNzE0LTIxLjY1MS0yMS42NTN2LTkyLjU5ICBjMC0xMS45NCw5LjcxMy0yMS42NTMsMjEuNjUxLTIxLjY1M2g5Mi41OTJjMTEuOTM5LDAsMjEuNjUzLDkuNzE0LDIxLjY1MywyMS42NTNWMTM2LjI5NXogTTUyLjUyMSwxMzQuMTU2ICBjLTMuNjgxLDAtNi42NzgtMi45OTQtNi42NzgtNi42ODFWNTIuNTI0YzAtMy42ODcsMi45OTctNi42ODEsNi42NzgtNi42ODFoNzQuOTU0YzMuNjg3LDAsNi42ODEsMi45OTQsNi42ODEsNi42ODF2NzQuOTUxICBjMCwzLjY4Ni0yLjk5NCw2LjY4MS02LjY4MSw2LjY4MUg1Mi41MjF6IE03Ni4zMTYsNzguNjI0djQuMjM5aC02LjQ4MnYtNC42NzZjMC0zLjExNi0xLjM3MS00LjMwMi0zLjU1NC00LjMwMiAgYy0yLjE4MSwwLTMuNTU0LDEuMTg2LTMuNTU0LDQuMzAydjIzLjU2M2MwLDMuMTE1LDEuMzczLDQuMjM3LDMuNTU0LDQuMjM3YzIuMTgzLDAsMy41NTQtMS4xMjIsMy41NTQtNC4yMzd2LTYuMjMzaDYuNDgydjUuNzk1ICBjMCw2Ljk4My0zLjQ5LDEwLjk3My0xMC4yMjMsMTAuOTczYy02LjczMywwLTEwLjIyMy0zLjk4OS0xMC4yMjMtMTAuOTczVjc4LjYyNGMwLTYuOTgyLDMuNDktMTAuOTcyLDEwLjIyMy0xMC45NzIgIEM3Mi44MjYsNjcuNjUyLDc2LjMxNiw3MS42NDIsNzYuMzE2LDc4LjYyNHogTTkwLjU5Miw2OC4xNTFIODAuNDkzdjQzLjYzNWg2Ljg1NlY5NS4zOTJoMy4yNDJjNi44NTYsMCwxMC4yMjMtMy44MDMsMTAuMjIzLTEwLjc4MyAgdi01LjY3NEMxMDAuODE0LDcxLjk1NCw5Ny40NDgsNjguMTUxLDkwLjU5Miw2OC4xNTF6IE05My45NTgsODUuMDQ1YzAsMy4xMTYtMS4xODYsNC4xMTMtMy4zNjYsNC4xMTNIODcuMzVWNzQuMzg1aDMuMjQyICBjMi4xODEsMCwzLjM2NiwwLjk5NywzLjM2Niw0LjExM1Y4NS4wNDV6IE0xMTcuNjQ2LDY4LjE1MWg2LjQ4M3YzMy4yMjVjMCw2Ljk4Mi0zLjQ5MSwxMC45NzItMTAuMjI0LDEwLjk3MiAgYy02LjczMywwLTEwLjIyNC0zLjk4OS0xMC4yMjQtMTAuOTcyVjY4LjE1MWg2Ljg1N3YzMy42NjFjMCwzLjExNiwxLjM3MSw0LjIzOCwzLjU1Myw0LjIzOGMyLjE4MywwLDMuNTU0LTEuMTIyLDMuNTU0LTQuMjM4VjY4LjE1MSAgeiIgZmlsbD0iI0ZGRkZGRiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                  <h3 class="text-center">Check CPU Performances</h3>
                  <p class="text-center">Performance data for CPU models</p>
              </div></div> 
           
            </div>
            <div class="col-md-10">
                <asp:Chart ID="Chart1" runat="server" Visible="False" Width="600px" Height="200px">
                    <Series>
                        <asp:Series Name="Score" IsValueShownAsLabel="True" Label="Score" Legend="Legend1" ChartArea="ChartArea1" YValuesPerPoint="2" ></asp:Series>
                      
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Legend1" Title="Components">
                        </asp:Legend>
                    </Legends>
                </asp:Chart>
                <asp:Table ID="Table1" runat="server" Width="100%" BackColor="#CCCCCC" BorderStyle="Outset" CssClass="alert-success" Font-Bold="True" GridLines="Both" Height="100%" Visible="False" >
                    <asp:TableRow runat="server">
                        <asp:TableCell  runat="server" ForeColor="Black"  Font-Bold="True" Font-Size="Larger">CPU Name:</asp:TableCell>
                        <asp:TableCell ID="name1" runat="server"  ForeColor="Black"  Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="name2" runat="server" ForeColor="Black"  Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"   ForeColor="Black"  Font-Bold="True" Font-Size="Larger">Number of Cores:</asp:TableCell>
                        <asp:TableCell ID="cores1" runat="server" ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="cores2" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell  ForeColor="Black" Font-Bold="True" Font-Size="Larger">Number of Threads:</asp:TableCell>
                        <asp:TableCell ID="threads1" runat="server"  ForeColor="Black"  Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="threads2" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ForeColor="Black"  Font-Bold="True" Font-Size="Larger">Clock Cycle:</asp:TableCell>
                        <asp:TableCell ID="clock1" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="clock2" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell  ForeColor="Black"  Font-Bold="True" Font-Size="Larger">Cache:</asp:TableCell>
                        <asp:TableCell ID="cache1" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="cache2" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell  ForeColor="Black"  Font-Bold="True" Font-Size="Larger">Overall Score:</asp:TableCell>
                        <asp:TableCell ID="score1" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                        <asp:TableCell ID="score2" runat="server"  ForeColor="Black" Font-Bold="True" Font-Size="Larger"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
               
            </div>
            <div class="row">
            <div class="col-md-10" style="margin-bottom:15px; float:left; width:44%; height:100%">
             
                  <asp:GridView ID="processors"  runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" AllowSorting="True" Width="105%" Height="90%" BorderColor="Black" BackColor="#666699" BorderStyle="Outset" BorderWidth="3px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Number" />
            <asp:BoundField DataField="Name" HeaderText="Processsor name" />
           
            
            
            <asp:CommandField HeaderText="Compare" ShowSelectButton="True" />
           
            
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderStyle="Groove" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="Blue" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
             </div>
           
             <div class="col-md-10" style="float:right; width:44%; height:100% " >
             <asp:GridView ID="processors2"  runat="server" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" AllowSorting="True" Width="105%" Height="90%" BorderColor="Black" BackColor="#666699" BorderStyle="Outset" BorderWidth="3px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Number" />
            <asp:BoundField DataField="Name" HeaderText="Processsor name" />
           
            
            
            <asp:CommandField HeaderText="Compare" ShowSelectButton="True" />
           
            
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderStyle="Groove" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="Blue" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
                 </div>
                 </div>
            <div class="row">
            <div class="col-md-10" style="width:100%; ">
            <asp:Button ID="BtnBack" runat="server" Text="Back" CssClass="btn-center-register" Width="20%" Height="10%" OnClick="BtnBack_Click" />

            <asp:Button ID="BtnCompare" runat="server" Text="Compare Performances"  CssClass="btn-center-register" Width="45%" Height="10%" OnClick="BtnCompare_Click" />
        </div>
                </div>
                 </div>
         </div>
        </div>
   
    
    
    </asp:Content>