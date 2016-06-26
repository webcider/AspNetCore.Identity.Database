CREATE TABLE [dbo].[AppTokens] (
    [Id]                 UNIQUEIDENTIFIER CONSTRAINT [DF_AppTokens_Id] DEFAULT (newsequentialid()) ROWGUIDCOL NOT NULL,
    [AppClientId]        BIGINT           NOT NULL,
    [AppAuthorizationId] BIGINT           NOT NULL,
    [TokenType]          INT              NOT NULL,
    CONSTRAINT [PK_AppTokens] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AppTokens_AppAuthorizations] FOREIGN KEY ([AppAuthorizationId]) REFERENCES [dbo].[AppAuthorizations] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_AppTokens_AppClients] FOREIGN KEY ([AppClientId]) REFERENCES [dbo].[AppClients] ([Id]) ON DELETE CASCADE
);

