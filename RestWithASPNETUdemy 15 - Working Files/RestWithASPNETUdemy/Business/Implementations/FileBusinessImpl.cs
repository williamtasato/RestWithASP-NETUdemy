using System.IO;
using RestWithASPNETUdemy.Data.VO;

namespace RestWithASPNETUdemy.Business.Implementations
{
    public class FileBusinessImpl : IFileBusiness
    {
        public byte[] GetPDFFile()
        {
            string path = Directory.GetCurrentDirectory();
            string fulpath = path+ "\\Other\\ImpressaoBoleto.pdf";

            return File.ReadAllBytes(fulpath);
        }
    }
}

