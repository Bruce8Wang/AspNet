<%@ Page Language="C#" %>

<%
    var data = new List<int>();
    data.Add(1);
    data.Add(6);
    data.Add(4);
    data.Add(3);
    var chart = new Chart();
    chart.Width = 1400;
    chart.Height = 700;
    chart.RenderType = RenderType.ImageTag;
    chart.Palette = ChartColorPalette.BrightPastel;
    var title = new Title("IMG source streamed from Controller", Docking.Top, new Font("Trebuchet MS", 14, FontStyle.Bold), Color.FromArgb(26, 59, 105));
    chart.Titles.Add(title);
    chart.ChartAreas.Add("Series 1");
    chart.Series.Add("Series 1");
    chart.Series.Add("Series 2");
    foreach (int value in data)
    {
        chart.Series["Series 1"].Points.AddY(value);
    }
    foreach (int value in data)
    {
        chart.Series["Series 2"].Points.AddY(value + 1);
    }
    chart.BorderSkin.SkinStyle = BorderSkinStyle.Emboss;
    chart.BorderlineWidth = 2;
    chart.BorderColor = Color.Black;
    chart.BorderlineDashStyle = ChartDashStyle.Solid;
    chart.BorderWidth = 2;
    chart.Legends.Add("Legend1");
    var ms = new MemoryStream();
    chart.SaveImage(ms, ChartImageFormat.Png);
    byte[] buffer = ms.ToArray();
    Response.ContentType = "image/png; charset=utf-8";
    Response.OutputStream.Write(buffer, 0, buffer.Length);
%>