using System.Text;

namespace CommunicationTest
{
    static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                if (MessageBox.Show("�Ƿ���ΪĬ�����ã�\n������Ĭ�ϣ��´δ򿪽���ԭ", "��ʾ", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    Global.DBPath = Global.DPath;
                    File.Copy(args[0], Global.DBPath, true);
                }
                else
                {
                    Global.DBPath = args[0];
                }
            }
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            Application.SetHighDpiMode(HighDpiMode.DpiUnawareGdiScaled);
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Main());
        }
    }
}
