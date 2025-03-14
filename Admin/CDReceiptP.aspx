﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CDReceiptP.aspx.cs" Inherits="Admin_CDReceiptP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Cash Receipt Private Page</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                        <li class="breadcrumb-item active">Cash Receipt Private Page</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Cash Receipt Private Data</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <asp:Repeater ID="RepeaterUser" runat="server">
                            <HeaderTemplate>
                                <table class="table table-head-fixed">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Receipt&nbsp;No</th>
                                            <th>Donor&nbsp;Name</th>
                                            <th>Donation&nbsp;Date</th>
                                            <th>Payment&nbsp;Mode</th>
                                            <th>Amount</th>
                                            <th>Describe</th>
                                            <th>NGOName</th>
                                            <th>NGOType</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                     <td><%# Eval("Id")%></td>
                                    <td><%# Eval("ReceiptNo")%></td>
                                    <td><%# Eval("DonorName")%></td>
                                    <td><%# Eval("DonationDate","{0:dd-MM-yyyy}")%></td>
                                    <td><%# Eval("PaymentMode")%></td>
                                    <td><%# Eval("Amount")%></td>
                                    <td><%# Eval("Notes")%></td>
                                    <td><%# Eval("NGOName")%></td>
                                    <td><%# Eval("NGOType")%></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                     </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>

