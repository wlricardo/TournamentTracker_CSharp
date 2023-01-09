USE [Tournaments]
GO
/****** Object:  Table [dbo].[MatchupEntries]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchupEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ParentMatchupId] [int] NULL,
	[MatchupId] [int] NULL,
	[TeamCompetingId] [int] NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matchups]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matchups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatchUpRound] [int] NULL,
	[WinnerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[EmailAddress] [nvarchar](200) NOT NULL,
	[CellPhoneNumber] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prizes]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prizes](
	[id] [int] NOT NULL,
	[PlaceNumber] [int] NOT NULL,
	[PlaceName] [nvarchar](50) NOT NULL,
	[PrizeAmount] [money] NOT NULL,
	[PrizePercentage] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMembers]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMembers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NULL,
	[PersonId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentEntries]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentEntries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentId] [int] NULL,
	[TeamId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentPrizes]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentPrizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentId] [int] NULL,
	[PrizeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 08/01/2023 23:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournaments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TournamentName] [nvarchar](100) NOT NULL,
	[EntryFee] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchupEntries]  WITH CHECK ADD  CONSTRAINT [fk_matchup_id] FOREIGN KEY([MatchupId])
REFERENCES [dbo].[Matchups] ([id])
GO
ALTER TABLE [dbo].[MatchupEntries] CHECK CONSTRAINT [fk_matchup_id]
GO
ALTER TABLE [dbo].[MatchupEntries]  WITH CHECK ADD  CONSTRAINT [fk_team_competing_id] FOREIGN KEY([TeamCompetingId])
REFERENCES [dbo].[Teams] ([id])
GO
ALTER TABLE [dbo].[MatchupEntries] CHECK CONSTRAINT [fk_team_competing_id]
GO
ALTER TABLE [dbo].[Matchups]  WITH CHECK ADD  CONSTRAINT [fk_winner_id] FOREIGN KEY([WinnerId])
REFERENCES [dbo].[Teams] ([id])
GO
ALTER TABLE [dbo].[Matchups] CHECK CONSTRAINT [fk_winner_id]
GO
ALTER TABLE [dbo].[TeamMembers]  WITH CHECK ADD  CONSTRAINT [fk_person_id] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([id])
GO
ALTER TABLE [dbo].[TeamMembers] CHECK CONSTRAINT [fk_person_id]
GO
ALTER TABLE [dbo].[TeamMembers]  WITH CHECK ADD  CONSTRAINT [fk_team_id_entry] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([id])
GO
ALTER TABLE [dbo].[TeamMembers] CHECK CONSTRAINT [fk_team_id_entry]
GO
ALTER TABLE [dbo].[TournamentEntries]  WITH CHECK ADD  CONSTRAINT [fk_team_id] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([id])
GO
ALTER TABLE [dbo].[TournamentEntries] CHECK CONSTRAINT [fk_team_id]
GO
ALTER TABLE [dbo].[TournamentEntries]  WITH CHECK ADD  CONSTRAINT [fk_tournament_id_entry] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([id])
GO
ALTER TABLE [dbo].[TournamentEntries] CHECK CONSTRAINT [fk_tournament_id_entry]
GO
ALTER TABLE [dbo].[TournamentPrizes]  WITH CHECK ADD  CONSTRAINT [fk_prize_id] FOREIGN KEY([PrizeId])
REFERENCES [dbo].[Prizes] ([id])
GO
ALTER TABLE [dbo].[TournamentPrizes] CHECK CONSTRAINT [fk_prize_id]
GO
ALTER TABLE [dbo].[TournamentPrizes]  WITH CHECK ADD  CONSTRAINT [fk_tournament_id] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([id])
GO
ALTER TABLE [dbo].[TournamentPrizes] CHECK CONSTRAINT [fk_tournament_id]
GO
