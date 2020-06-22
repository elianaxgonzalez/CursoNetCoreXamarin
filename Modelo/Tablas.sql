CREATE TABLE Restaurante(
	Id_Restaurante INT PRIMARY KEY IDENTITY (1,1),
	Nombre NVARCHAR(128) NOT NULL,
	Direccion NVARCHAR(64) NOT NULL,
	Telefono NVARCHAR(32) NOT NULL,
	Propietario NVARCHAR(128) NOT NULL,
	Email NVARCHAR(128) NOT NULL
)

GO

CREATE TABLE Hamburguesa(
	Id_Hamburguesa INT PRIMARY KEY IDENTITY (1,1),
	IdRestaurante INT NOT NULL,
	NombreHamburguesa NVARCHAR(64) NOT NULL,
	Categoria NVARCHAR(64) NOT NULL,
	Calificacion NUMERIC(2,1) NOT NULL,
	Rating NUMERIC NOT NULL,
	Favorito BIT,
	Imagen NVARCHAR(128) NOT NULL,
	CONSTRAINT fk_Restaurante FOREIGN KEY (IdRestaurante) REFERENCES Restaurante (Id_Restaurante)
)
