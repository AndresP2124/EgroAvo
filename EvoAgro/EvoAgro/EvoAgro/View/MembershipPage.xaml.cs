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
    public partial class MembershipPage : ContentPage
    {
        public MembershipPage(string userId)
        {
            InitializeComponent();
            LoadMemberships(userId);
        }

        private void LoadMemberships(string userId)
        {
            string connectionString = "Data Source=TU_SERVIDOR;Initial Catalog=EvoAgro;User ID=TU_USUARIO;Password=TU_CONTRASEÑA";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Membresia WHERE Usuario_ID=@userId", connection);
                command.Parameters.AddWithValue("@userId", userId);

                SqlDataReader reader = command.ExecuteReader();
                var memberships = new List<string>();
                while (reader.Read())
                {
                    memberships.Add($"{reader["membresiaTipo"]} desde {reader["membresia_Inicio"]} hasta {reader["membresia_Final"]}");
                }
                membershipListView.ItemsSource = memberships;
            }
        }
    }
}