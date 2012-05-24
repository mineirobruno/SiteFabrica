using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Configuration;
using System.Net;

namespace Framework
{
    public class Email
    {
        String Remetente;
        String HostSmtp;
        int Porta;
        String Login;
        String Senha;
        Boolean EnableSSL;
        String Destinatario;
        String Assunto;
        String Mensagem;
        public Email()
        {
            GetConfiguration();
        }

        public bool SendEmail(String _Destinatario, String _Assunto, String _Mensagem)
        {
            this.Destinatario = _Destinatario;
            this.Assunto = _Assunto;
            this.Mensagem = _Mensagem;

            try
            {
                MailMessage message = new MailMessage();
                message.To.Add(Destinatario);
                message.Subject = Assunto;
                message.From = new MailAddress(Remetente);
                message.Body = Mensagem;                
                SmtpClient smtp = new SmtpClient(HostSmtp,Porta);
                smtp.Credentials = new NetworkCredential(Login, Senha);
                smtp.EnableSsl = EnableSSL;
                smtp.Send(message);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }            

        }

        public Boolean GetConfiguration()
        {
            try
            {
                Remetente = ConfigurationManager.AppSettings["Remetente"];
                HostSmtp = ConfigurationManager.AppSettings["HostSmtp"];
                Porta = int.Parse(ConfigurationManager.AppSettings["Porta"]);
                Login = ConfigurationManager.AppSettings["Login"];
                Senha = ConfigurationManager.AppSettings["Senha"];
                EnableSSL = Boolean.Parse(ConfigurationManager.AppSettings["EnableSSL"]);

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}
