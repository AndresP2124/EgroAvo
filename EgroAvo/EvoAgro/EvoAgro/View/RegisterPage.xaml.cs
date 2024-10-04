using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace EvoAgro.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegisterPage : ContentPage
    {
        public RegisterPage()
        {
            InitializeComponent();
        }

        private async void OnRegisterButtonClicked(object sender, EventArgs e)
        {
            string username = usernameEntry.Text;
            string email = emailEntry.Text;
            string password = passwordEntry.Text;

            // Validación simple
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
            {
                await DisplayAlert("Error", "Por favor, completa todos los campos", "OK");
                return;
            }

            if (!IsValidEmail(email))
            {
                await DisplayAlert("Error", "Por favor, ingresa un correo electrónico válido", "OK");
                return;
            }

            string connectionString = "Data Source=TU_SERVIDOR;Initial Catalog=EvoAgro;User ID=TU_USUARIO;Password=TU_CONTRASEÑA";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("INSERT INTO Usuarios (username, email, Contraseña) VALUES (@username, @Email, @password)", connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@password", password); // Considera usar un hash aquí

                try
                {
                    await command.ExecuteNonQueryAsync();
                    await DisplayAlert("Éxito", "Registro completado exitosamente", "OK");
                    await Navigation.PopAsync(); // Volver a la página de inicio de sesión
                }
                catch (SqlException ex)
                {
                    await DisplayAlert("Error", "El registro falló: " + ex.Message, "OK");
                }
            }
        }

        private async void OnBackButtonClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync(); // Volver a la página anterior
        }

        private bool IsValidEmail(string email)
        {
            // Validación simple de correo electrónico
            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, pattern);
        }
    }

    
}


