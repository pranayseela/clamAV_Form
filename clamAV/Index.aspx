<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Index.aspx.cs" Inherits="clamAV.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-weight: bold;
        }
        .file-upload {
    display: inline-block;
    overflow: hidden;
    text-align: center;
    vertical-align: middle;
    font-family: Arial;
    border: 1px solid #124d77;
    background: #007dc1;
    color: #fff;
    border-radius: 6px;
    -moz-border-radius: 6px;
    cursor: pointer;
    text-shadow: #000 1px 1px 2px;
    -webkit-border-radius: 6px;
}
        .file-upload:hover {
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7), color-stop(1, #007dc1));
        background: -moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
        background: -webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
        background: -o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
        background: linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7', endColorstr='#007dc1',GradientType=0);
        background-color: #0061a7;
}
        /* The button size */
.file-upload {
    height: 30px;
}

.file-upload, .file-upload span {
        width: 130px;
}

.file-upload input {
            top: 0;
            left: 0;
            margin: 0;
            font-size: 11px;
            font-weight: bold;
            /* Loses tab index in webkit if width is set to 0 */
            opacity: 0;
            filter: alpha(opacity=0);
}

.file-upload strong {
            font: normal 12px Tahoma,sans-serif;
            text-align: center;
            vertical-align: middle;
}

.file-upload span {
            top: 0;
            left: 0;
            display: inline-block;
            /* Adjust button text vertical alignment */
            padding-top: 5px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="auto-style1">
            <br /><br />

            File: <asp:FileUpload ID="flUploadFile" runat="server" BorderColor="Black" BorderStyle="Inset" CssClass="auto-style1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnFileScan" runat="server" Text="Scan File" OnClick="btnFileScan_Click" CssClass="file-upload" />
            <br />
            <br />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="True" CssClass="auto-style1"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
