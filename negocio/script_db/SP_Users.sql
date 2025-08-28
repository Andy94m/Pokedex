USE [POKEDEX_DB]
GO

/****** Object:  StoredProcedure [dbo].[insertarNuevo]    Script Date: 28/8/2025 16:21:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[insertarNuevo]
@email varchar(50),
@pass varchar(50)
as
insert into USERS (email, pass, admin) output inserted.id values (@email, @pass, 0)
GO

