using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EvoAgro.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;

            // Aquí conecta con la base de datos
            string connectionString = "Data Source=TU_SERVIDOR;Initial Catalog=EvoAgro;User ID=TU_USUARIO;Password=TU_CONTRASEÑA";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Usuarios WHERE username=@username AND Contraseña=@password", connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);

                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // Usuario encontrado, redirigir a la página de membresía
                    await Navigation.PushAsync(new MembershipPage(reader["Usuario_ID"].ToString()));
                }
                else
                {
                    await DisplayAlert("Error", "Usuario o contraseña incorrectos", "OK");
                }
            }
        }

        private async void OnRegisterButtonClicked(object sender, EventArgs e)
        {
            // Navegar a la página de registro (no implementada en este ejemplo)
            await Navigation.PushAsync(new RegisterPage());
        }
    }
}