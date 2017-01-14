using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraCurso
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SumaButton_Click(object sender, EventArgs e)
        {
            //this.SumaButton.Attributes.Add("OnClick", "javascript:return fnAceptar();")
            


            float a = Convert.ToInt32(Numero1TextBox.Text);
            float b = Convert.ToInt32(Numero2TextBox.Text);

            float resultado = a + b;

            ResultadoLabel.Text = resultado.ToString(); 
        }

        protected void RestaButton_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Numero1TextBox.Text);
            int b = Convert.ToInt32(Numero2TextBox.Text);

            int resultado = a - b;

            ResultadoLabel.Text = resultado.ToString();

        }

        protected void MultipliacionButton_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Numero1TextBox.Text);
            int b = Convert.ToInt32(Numero2TextBox.Text);

            int resultado = a * b;

            ResultadoLabel.Text = resultado.ToString();

        }

        protected void DivisionButton_Click(object sender, EventArgs e)
        {

            float a = Convert.ToInt32(Numero1TextBox.Text);
            float b = Convert.ToInt32(Numero2TextBox.Text);

            float resultado = a / b;

            ResultadoLabel.Text = resultado.ToString();
        }

      


      protected void LimpiarButton_Click(object sender, EventArgs e)
        {
            Numero1TextBox.Text = string.Empty;
            Numero2TextBox.Text = string.Empty;
        }


    }
}