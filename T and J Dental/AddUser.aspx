<%@ Page Title="" Language="C#" MasterPageFile="~/Dental.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="T_and_J_Dental.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="col-lg-12 row m-2">
        <div class="col-lg-6"></div>
        <div class="col-lg-4">
            <asp:TextBox ID="userSearch" runat="server" Placeholder="Search by Surname" CssClass="form-control" Font-Size="X-Large"></asp:TextBox>
        </div>
        <div class="col-lg-2">
            <asp:Button ID="Userbtnsearch" runat="server" Text="Search" CssClass="btn btn-primary form-control fs-4" OnClick="Userbtnsearch_Click" />
        </div>
    </div>

    <div class="col-lg-12 row m-2"> 
        <div class="">            
            <asp:Button ID="systemusersearch" runat="server" CssClass="btn btn-primary fs-6" Text="System Users" OnClick="systemusersearch_Click" /> 
        </div>
    </div>

   <%----Main Div panel----%>
    <div class="col-12 row">

              <%--user table results--%>
            <div class="col-lg-8 mt-3">
<%--                <asp:Panel ID="userpanel" runat="server" CssClass="Card"></asp:Panel>--%>
                <asp:GridView ID="UserGridView" CssClass="col-12 fs-3" runat="server" AutoGenerateColumns="false" BorderStyle="None">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="User ID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="UserType" HeaderText="User Type" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="UserEdit" runat="server" CssClass="btn btn-info" Text="Edit User" CommandArgument='<%# Eval("UserID") %>' OnClick="UserEdit_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

          <%--user registration Div--%>
        <div class="col-lg-4 mt-3">
           <div class="col-lg-12">
                   <label class="fs-5">
                       <strong>System User Registration Form:</strong>
                   </label>
               <div class="">
                   <asp:TextBox ID="systemUsername" placeholder="Username" runat="server" CssClass="form-control fs-5" Font-Size="X-Large"></asp:TextBox>
               </div>
               <div class="mt-2">
                   <asp:TextBox ID="systemPassword" placeholder="Password" Type="password" runat="server" CssClass="form-control fs-5" Font-Size="X-Large"></asp:TextBox>
               </div>
               <div class="mt-2">
                   <asp:DropDownList ID="systemusertype" runat="server" CssClass="form-control fs-5" aria-describedby="inputGroup-sizing-lg" Font-Size="X-Large">
                       <asp:ListItem ID="systemOfficer" Text="Officer"></asp:ListItem>
                       <asp:ListItem ID="systemAdmin" Text="Administrator"></asp:ListItem>
                   </asp:DropDownList>
               </div>
           </div>
           <div class="mt-2">
               <asp:Button ID="addUserbtn" runat="server" CssClass="btn btn-md btn-success fs-6" Text="Add User" OnClick="addUserbtn_Click" />
               <asp:Button ID="Update" runat="server" CssClass="btn btn-md btn-primary fs-6" Text="Update" OnClick="Update_Click" />
               <asp:Button ID="Delete" runat="server" CssClass="btn btn-md btn-danger fs-6" Text="Delete" OnClick="Delete_Click" />
           </div>
        </div>

    </div>
</asp:Content>
