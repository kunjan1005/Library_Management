<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="librarymangement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card p-3">
                    <div class="row">
                        <div class="col text-center">
                            <img src="images/adminuser.png" width="100px" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <h2> AdminLogin </h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>Admin ID:</label>
                            <div class="form-group">
                                <asp:TextBox ID="txtAdminID" runat="server" 
                                    CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                      </div>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorforadminid" 
                        runat="server" ErrorMessage="* Admin ID is Required...."
                        ControlToValidate="txtAdminID"  ForeColor="Red"></asp:RequiredFieldValidator>
                
                    
                   
                <div class="row">
                        <div class="col">
                            <label>PassWord:</label>
                            <div class="form-group">
                                <asp:TextBox ID="txtpasswordAdmin" runat="server" TextMode="Password"
                                    CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                 </div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorforpasswordadmin" 
                        runat="server" ErrorMessage="* Password is Required..."
                        ControlToValidate="txtpasswordAdmin" ForeColor="Red"></asp:RequiredFieldValidator>

                    <div class="row">
                        <div class="col">
                            <asp:Button ID="btnLoginAdmin" runat="server" Text="Login" 
                                CssClass="btn btn-success btn-block" OnClick="btnLoginAdmin_Click" />
                         </div>
                    </div>

                    
                </div>
                <%--<asp:LinkButton ID="lbBackToHomeAdmin" runat="server" OnClick="lbBackToHomeAdmin_Click"> << Back To Home</asp:LinkButton>
   --%>             <a href="homepage.aspx">>> Back To home</a>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>

