﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UnitView.aspx.cs" Inherits="MyCondo.UnitView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Units
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div style="Width:700px" class="objectcenter">
        <asp:Button ID="btnCreateUnit" class="btn btn-block btn-success waves-effect waves-light float-right" OnClick="btnCreateUnit_Click" runat="server" Text="Create Units" />
        <asp:GridView ID="UnitDisplay" OnRowDataBound="UnitDisplay_RowDataBound" Width="700px" runat="server" OnSelectedIndexChanged="UnitDisplay_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="unitNumber" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <EmptyDataTemplate>
                <h3>There are no Units assigned at this moment.<a href="Unit.aspx">Create One?</a></h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:TemplateField HeaderText="Units">
                    <ItemTemplate>
                        <div class="form-group mb-3">
                            <br />
                            <asp:Label ID="lblName" class="header-title font-weight-bold" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            <asp:Label ID="lblmessage" class="header-title font-weight-light" runat="server" Text='booked'></asp:Label>
                            <asp:Label ID="lblBookingType" class="header-title font-weight-bold" runat="server" Text='<%# Bind("BookingType") %>'></asp:Label>
                            <asp:Label ID="lblmessage2" class="header-title font-weight-light" runat="server" Text='for the'></asp:Label>
                            <asp:Label ID="lbldate" class="header-title font-weight-bold" runat="server" Text='<%# Bind("StartDate") %>'></asp:Label>
                            <asp:Label ID="lblBookingStatus" class="text-muted float-right" runat="server" Text='<%# Bind("BookingStatus") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="XX-Large" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SelectShortBookingsDisplay" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>

