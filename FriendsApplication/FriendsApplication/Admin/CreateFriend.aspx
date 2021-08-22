<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Friends.Master" AutoEventWireup="true" CodeBehind="CreateFriend.aspx.cs" Inherits="FriendsApplication.Admin.CreateFriend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       </asp:Content>
       <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="p-2 text-center bg-light">
    <h1 class="mb-3">Create New Friend</h1>
  </div> 
           <div class=".col-xl-12 p-3">
    
        <div class="form-group"> 
		<asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"   class="form-control"  maxlength="10"  placeholder="First Name"></asp:TextBox>
      		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>  
    
        </div>
        <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" class="form-control" placeholder="Enter Last Name"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>       
         
        </div>
   <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" class="form-control" placeholder="Enter Mobile No"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>     
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"   ControlToValidate="TextBox3" ErrorMessage="Enter Valid Mobile NO"   
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>   
        </div>
   <div class="form-group">
<asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large" class="form-control" placeholder="Enter Email"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>       
 <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4" 
ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
      
        </div>
   <asp:Button ID="Button1" runat="server" Font-Size="X-Large"  Text="Create Friend"  OnClick="Button1_Click" class="btn btn-primary"/>  
      <asp:Button ID="Button2" runat="server" Font-Size="X-Large"  Text="Show Friend"  OnClick="Button2_Click" class="btn btn-primary"/>  
      <asp:Label ID="Label4" runat="server" Text="Label" class="form-check-label" Visible="False"></asp:Label>
         </div>
	<div>

</asp:Content>
