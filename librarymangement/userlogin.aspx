<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="librarymangement.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card p-3">
                    <div class="row">
                        <div class="col text-center">
                            <img src="images/generaluser.png" width="100px" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <h2> Member Login </h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <hr />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label>Member ID:</label>
                            <div class="form-group">
                                <asp:TextBox ID="txtMemberID" runat="server"  
                                    CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                      </div>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorformemberid" 
                        runat="server" ErrorMessage="* Member ID is Required...."
                        ControlToValidate="txtMemberID"  ForeColor="Red"></asp:RequiredFieldValidator>
                
                    
                   
                <div class="row">
                        <div class="col">
                            <label>PassWord:</label>
                            <div class="form-group">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"
                                    CssClass="form-control">
                                </asp:TextBox>
                            </div>
                        </div>
                 </div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorforpassword" 
                        runat="server" ErrorMessage="* Password is Required..."
                        ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>

                    <div class="row">
                        <div class="col">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                CssClass="btn btn-success btn-block" OnClick="btnLogin_Click"/>
                         </div>
                    </div>
                    <div class="row mt-1">
                        <div class="col">
                            <asp:Button ID="btnsignup" runat="server" Text="Sign Up" 
                                CssClass="btn btn-primary btn-block"/>
                         </div>
                    </div>
                </div>
              <%--  <asp:LinkButton ID="lbBackToHome" runat="server" OnClientClick="lbBackToHome_Click"> << Back To Home</asp:LinkButton>--%>
                <a href="homepage.aspx"><< Back to home</a>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>
