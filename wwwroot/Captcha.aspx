<%@ Page Language="C#" %>

<%
    string vNum = "X13B";
    int width = (int)(vNum.Length * 11.5);
    var bitmap = new Bitmap(width, 22);
    var graphics = Graphics.FromImage(bitmap);
    graphics.FillRectangle(new SolidBrush(Color.MintCream), new Rectangle(0, 0, 100, 50));
    graphics.DrawString(vNum, (new Font("Arial", 9)), (new SolidBrush(Color.Black)), 3, 3);
    var ms = new MemoryStream();
    bitmap.Save(ms, ImageFormat.Png);
    byte[] buffer = ms.ToArray();
    Response.ContentType = "image/png; charset=utf-8";
    Response.OutputStream.Write(buffer, 0, buffer.Length);
%>