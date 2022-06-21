

using System.Xml;
using System.Xml.Xsl;

try
{
    Console.WriteLine("Start...");

    string inXslFile = @"Datas\tools3.xsl";
    string inXmlFile = @"Datas\tools.xml";
    string outXmlFile = @"toolsOut.xml";

    XslTransform xsl = new XslTransform();
    xsl.Load(inXslFile);

    xsl.Transform(inXmlFile, outXmlFile);

    var outContent = File.ReadAllText(outXmlFile);
    Console.WriteLine(outContent);

}
catch (Exception e)
{
    Console.WriteLine(e);
}