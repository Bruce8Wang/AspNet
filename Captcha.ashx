<%@ WebHandler Language="C#" Class="MyCaptcha" %>

using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Web;

public class MyCaptcha : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
		string vNum = "X13B";
		int width = (int)(vNum.Length * 11.5);
		var bitmap = new Bitmap(width, 22);
		var graphics = Graphics.FromImage(bitmap);
		graphics.FillRectangle(new SolidBrush(Color.MintCream), new Rectangle(0, 0, 100, 50));
		graphics.DrawString(vNum, (new Font("Arial", 9)), (new SolidBrush(Color.Black)), 3, 3);
		var ms = new MemoryStream();
		bitmap.Save(ms, ImageFormat.Png);
		byte[] buffer = ms.ToArray();
		context.Response.ContentType = "image/png; charset=utf-8";
		context.Response.OutputStream.Write(buffer, 0, buffer.Length);
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}