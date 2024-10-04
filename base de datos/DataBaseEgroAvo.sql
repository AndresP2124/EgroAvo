--Creacion de la base de datos 
Create DataBase EvoAgro
go
Use EvoAgro
go

-- Creación de la tabla Usuarios
CREATE TABLE Usuarios (
    Usuario_ID INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    Contraseña VARCHAR(255) NOT NULL,
    
);
--Creacion de la tabla membresia
create table Membresia(
	IdMembresia int primary key IDENTITY(1,1),
	membresiaTipo VARCHAR(20) NOT NULL CHECK (membresiaTipo IN ('Gratuito', 'Mensual', 'Anual')),
    membresia_Inicio DATE,
    membresia_Final DATE,
	Usuario_ID int,
	FOREIGN KEY (Usuario_ID) REFERENCES Usuarios(Usuario_ID)
);

