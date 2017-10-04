<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Index.aspx.cs" Inherits="clamAV.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label><br /><br />

            File: <asp:FileUpload ID="flUploadFile" runat="server" />
            <asp:Button ID="btnFileScan" runat="server" Text="Upload & Scan" OnClick="btnFileScan_Click" />
        </div>
    </form>
</body>
</html>
