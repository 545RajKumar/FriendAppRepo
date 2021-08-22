<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Friends.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FriendsApplication.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="p-2 text-center bg-light">
    <h1 class="mb-3">LogIn</h1>
  </div> 
    <div class=".col-xl-12 p-3">
    
        <div class="form-group">
		<asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"   class="form-control"  maxlength="10"  placeholder="Enter mobile no"></asp:TextBox>
      		<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox1"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>       
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"   ControlToValidate="TextBox1" ErrorMessage="Enter Valid Mobile NO"   ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
        </div>
        <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password" class="form-control" placeholder="Enter password"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>       
        </div>
        <div class="form-group form-check">
          <label class="form-check-label">
            <input class="form-check-input" type="checkbox"> Remember me
          </label>
        </div>
   <asp:Button ID="Button1" runat="server" Font-Size="X-Large"  Text="Log In"  OnClick="Button1_Click" class="btn btn-primary"/>  
      <asp:Label ID="Label4" runat="server" Text="Label" class="form-check-label" Visible="False"></asp:Label>
    </div>
</asp:Content>
