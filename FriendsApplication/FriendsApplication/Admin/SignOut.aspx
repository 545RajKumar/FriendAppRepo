<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Friends.Master" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="FriendsApplication.Admin.SignOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="p-2 text-center bg-light">
    <h1 class="mb-3">Create New User</h1>
  </div> 
        <div class=".col-xl-12 p-3">
    
        <div class="form-group"> 
		<asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"   class="form-control"  maxlength="10"  placeholder="Mobile  No"></asp:TextBox>
      		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>  

    
        </div>
        <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" class="form-control" placeholder="Password"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>       
         
        </div>
   <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" class="form-control" placeholder="Conform Password"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>     
  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2"  ErrorMessage="Enter valid value" ForeColor="Red" ></asp:CompareValidator>  
             
        </div>

   <asp:Button ID="Button1" runat="server" Font-Size="X-Large"  Text="Create Friend"  OnClick="Button1_Click" class="btn btn-primary"/>  
      <asp:Label ID="Label4" runat="server" Text="Label" class="form-check-label" Visible="False"></asp:Label>
        </div>
	<div>
</asp:Content>
