-- Crear la base de datos
CREATE DATABASE EvoAgro
GO
USE EvoAgro

-- Tabla de Usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY IDENTITY(1,1),
    Nombre_Usuario VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(100) NOT NULL,
    tipo_usuario VARCHAR(20) NOT NULL -- Ejemplo: agricultor, experto, proveedor
);

-- Tabla de Categorías por Cultivo
CREATE TABLE Categorias_Cultivos (
    id_categoria INT PRIMARY KEY IDENTITY(1,1),
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Tabla de Artículos
CREATE TABLE Articulos (
    id_articulo INT PRIMARY KEY IDENTITY(1,1),
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL,
    resumen TEXT,
    contenido TEXT,
    fecha_publicacion DATE NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias_Cultivos(id_categoria)
);

-- Tabla de Tutoriales en Video
CREATE TABLE Tutoriales (
    id_tutorial INT PRIMARY KEY IDENTITY(1,1),
    id_categoria INT,
    titulo VARCHAR(255) NOT NULL,
    url_video VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_publicacion DATE NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias_Cultivos(id_categoria)
);

-- Tabla de Análisis de Suelos
CREATE TABLE Suelos_Analisis (
    id_analisis INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    fecha_analisis DATE NOT NULL,
    ph DECIMAL(5,2),
    nutrientes_N DECIMAL(5,2),
    nutrientes_P DECIMAL(5,2),
    nutrientes_K DECIMAL(5,2),
    nutrientes_Ca DECIMAL(5,2),
    nutrientes_Mg DECIMAL(5,2),
    recomendaciones TEXT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Historial de Análisis de Suelos
CREATE TABLE Historial_Analisis (
    id_historial INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    id_analisis INT,
    fecha_consulta DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_analisis) REFERENCES Suelos_Analisis(id_analisis)
);

-- Tabla de Parcelas
CREATE TABLE Parcelas (
    id_parcela INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    nombre_parcela VARCHAR(100) NOT NULL,
    tipo_suelo VARCHAR(100),
    cultivo_actual VARCHAR(100),
    rendimiento_esperado DECIMAL(10,2),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Historial de Cultivos
CREATE TABLE Historial_Cultivos (
    id_historial_cultivo INT PRIMARY KEY IDENTITY(1,1),
    id_parcela INT,
    cultivo VARCHAR(100),
    rendimiento DECIMAL(10,2),
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_parcela) REFERENCES Parcelas(id_parcela)
);

-- Tabla de Contactos
CREATE TABLE Contactos (
    id_contacto INT PRIMARY KEY IDENTITY(1,1),
    tipo_contacto VARCHAR(50), -- Ejemplo: institución, proveedor, experto
    nombre_contacto VARCHAR(100) NOT NULL,
    contacto_detalle VARCHAR(255),
    tipo_servicio VARCHAR(100)
);

-- Tabla de Foros
CREATE TABLE Foros (
    id_foro INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    tema VARCHAR(255) NOT NULL,
    fecha_creacion DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Mentores
CREATE TABLE Mentores (
    id_mentor INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    id_usuario_mentor INT,
    fecha_asignacion DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_usuario_mentor) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Alertas
CREATE TABLE Alertas (
    id_alerta INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    tipo_alerta VARCHAR(100), -- Ejemplo: investigación, clima, fitosanitaria
    mensaje_alerta TEXT NOT NULL,
    fecha_alerta DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Marketplace
CREATE TABLE Marketplace (
    id_producto INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    tipo_producto VARCHAR(50), -- Ejemplo: insumo, cosecha
    nombre_producto VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad DECIMAL(10,2),
    fecha_disponible DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla de Membresías Anuales
CREATE TABLE Membresias (
    id_membresia INT PRIMARY KEY IDENTITY(1,1),
    id_usuario INT,
    fecha_inicio DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    estado VARCHAR(10) NOT NULL, -- Ejemplo: activa, inactiva
    tipo_membresia VARCHAR(20), -- Ejemplo: anual, premium
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
