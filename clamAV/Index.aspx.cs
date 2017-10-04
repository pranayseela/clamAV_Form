using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nClam;
using System.Threading.Tasks;

namespace clamAV
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnFileScan_Click(object sender, EventArgs e)
        {
            if (flUploadFile.HasFile)
            {
               await Scan();
            }
        }
        public async Task Scan()
        {
            var clam = new ClamClient("localhost", 3310);
            var scanResult = await clam.SendAndScanFileAsync(flUploadFile.PostedFile.InputStream);//.ScanFileOnServerAsync(flUploadFile.PostedFile.FileName);  //any file you would like!

            switch (scanResult.Result)
            {
                case ClamScanResults.Clean:
                    lblMsg.Text = "The file is clean!";
                    break;
                case ClamScanResults.VirusDetected:
                    lblMsg.Text = "Virus Found! " + string.Format("Virus name: {0}", scanResult.InfectedFiles.First().VirusName);

                    break;
                case ClamScanResults.Error:
                    lblMsg.Text = string.Format("Woah an error occured! Error: {0}", scanResult.RawResult);
                    break;
            }
        }
    }
}