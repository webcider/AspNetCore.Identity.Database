CREATE TABLE [dbo].[AppClients] (
    [Id]                BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (500) NOT NULL,
    [ClientId]          NVARCHAR (500) NOT NULL,
    [ClientSecret]      NVARCHAR (MAX) NULL,
    [LogoutRedirectUri] NVARCHAR (MAX) NULL,
    [RedirectUri]       NVARCHAR (MAX) NULL,
    [AppClientType]     INT            NOT NULL,
    [OEliteAccountId]   BIGINT         NOT NULL,
    [CreatedOnUtc]      DATETIME2 (7)  CONSTRAINT [DF_AppClients_CreatedOnUtc] DEFAULT (sysutcdatetime()) NOT NULL,
    CONSTRAINT [PK_AppClients] PRIMARY KEY CLUSTERED ([Id] ASC)
);

