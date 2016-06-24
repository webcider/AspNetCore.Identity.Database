CREATE TABLE [dbo].[Users] (
    [Id]                   BIGINT         IDENTITY (1, 1) NOT NULL,
    [AccessFailedCount]    INT            NOT NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX) NULL,
    [Email]                NVARCHAR (256) NULL,
    [EmailConfirmed]       BIT            NOT NULL,
    [LockoutEnabled]       BIT            NOT NULL,
    [LockoutEndUtc]        DATETIME2 (7)  NULL,
    [NormalizedEmail]      NVARCHAR (256) NULL,
    [NormalizedUserName]   NVARCHAR (256) NULL,
    [PasswordHash]         NVARCHAR (MAX) NULL,
    [PhoneNumber]          NVARCHAR (MAX) NULL,
    [PhoneNumberConfirmed] BIT            NOT NULL,
    [SecurityStamp]        NVARCHAR (MAX) NULL,
    [TwoFactorEnabled]     BIT            NOT NULL,
    [UserName]             NVARCHAR (256) NULL,
    [Status]               INT            DEFAULT ((0)) NOT NULL,
    [CreatedOnUtc]         DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [EmailIndex]
    ON [dbo].[Users]([NormalizedEmail] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[Users]([NormalizedUserName] ASC) WHERE ([NormalizedUserName] IS NOT NULL);

