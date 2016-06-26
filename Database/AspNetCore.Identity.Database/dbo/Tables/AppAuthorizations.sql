CREATE TABLE [dbo].[AppAuthorizations] (
    [Id]                        BIGINT         IDENTITY (1, 1) NOT NULL,
    [Scope]                     NVARCHAR (MAX) NULL,
    [AuthorizedUserId]          BIGINT         NOT NULL,
    [AuthorizedOEliteAccountId] BIGINT         NULL,
    [CreatedOnUtc]              DATETIME2 (7)  CONSTRAINT [DF_AppAuthorizations_CreatedOnUtc] DEFAULT (sysutcdatetime()) NOT NULL,
    [ExpiresOnUtc]              DATETIME2 (7)  NULL,
    CONSTRAINT [PK_AppAuthorizations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AppAuthorizations_OEliteAccounts] FOREIGN KEY ([AuthorizedOEliteAccountId]) REFERENCES [dbo].[OEliteAccounts] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_AppAuthorizations_Users] FOREIGN KEY ([AuthorizedUserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
);

