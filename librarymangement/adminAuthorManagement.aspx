<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="librarymangement.adminAuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-5">
        <div class="row">
        <div class="col-md-6 ">
            <div class="card p-3 ">
                <div class="row">
                    <div class=" col text-center">
                        <h2>Author Details</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                    <img src="images/writer.png" width="100px"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <label>Author Id:</label>
                    </div>
                        <div class="col-8">
                        <label>Author name:</label>
                         </div>
                  </div>

                    <div class="row">
                            <div class="col-4">
                                
                                <div class="row">
                                    <div class="col-10">
                                            
                                             <asp:TextBox ID="TxtAuthorid" runat="server" CssClass="form-control">
                                       </asp:TextBox>

                                        
                                     </div>

                                    <div class="col-2">
                                        
                                           <asp:Button ID="Btngo" runat="server" Text="Go"  CssClass="btn btn-primary" OnClick="Btngo_Click" />
                                      
                                     </div>
                                 </div>
                                   
                              </div>
                <%--<div class="row">
                    <div class="col-3">
                             <asp:TextBox ID="TxtAuthorid" runat="server" CssClass="form-control">
                                       </asp:TextBox>
                        </div>
                    <div class="col-1"  >
                          <asp:Button ID="Btngo" runat="server" Text="Go"  CssClass="btn btn-primary" OnClick="Btngo_Click" />
          
                    </div>--%>
                     <div class="col-8">
                                    
                                        <asp:TextBox ID="Txtauthorname" runat="server" CssClass="form-control">
                                        </asp:TextBox>
                                </div>
                         </div>
                 

                <div class="row">
                    <div class="col-4">
                        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-success btn-block" OnClick="BtnAdd_Click" />
                    </div>
                    <div class="col-4">
                        <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn btn-warning btn-block" OnClick="BtnUpdate_Click"/>
                    </div>
                    <div class="col-4">
                        <asp:Button ID="Btndelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-block" OnClick="Btndelete_Click"/>
                    </div>

                </div>
                    
                        
                        
            </div>
        </div>
       


     
        <div class="col-md-6 ">
            <div class="card p-3">
                <div class="row">
                    <div class=" col text-center">
                        <h2>Author List</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <div class="col text-center">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                        <asp:GridView ID="Gvauthor" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="2">
                            <Columns>
                                <asp:BoundField DataField="author_id" HeaderText="author_id" SortExpression="author_id" />
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

                </div>
            </div>
        </div>
       </div>
  

     

</asp:Content>

 