
CREATE DATABASE newPizzaMizza
USE newPizzaMizza
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ImageId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeletedSliders]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeletedSliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ImageId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AllSliders]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllSliders] 
as 
Select ProductId,ImageId from Sliders 
UNION 
SELECT ProductId as DeletedProduct,ImageId as DeletedImage FROM DeletedSliders
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](255) NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prices]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeId] [int] NULL,
	[Price] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[CategoryId] [int] NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[TypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SizeCode] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 16-Dec-22 09:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Pizza')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Salat')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Pasta')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Shorba')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Lunch')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Sous')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Desert')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Drink')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[DeletedSliders] ON 

INSERT [dbo].[DeletedSliders] ([Id], [ProductId], [ImageId]) VALUES (1, 2, 2)
SET IDENTITY_INSERT [dbo].[DeletedSliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (1, N'https://pizzamizza.az/upload/resize_cache/iblock/f87/254_254_2/f87e770b152b9410cf45ac22e788c166.jpg?162750386084708', 1)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (2, N'https://pizzamizza.az/upload/resize_cache/iblock/f87/254_254_2/f87e770b152b9410cf45ac22e788c166.jpg?162750386084708', 2)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (3, N'https://pizzamizza.az/upload/resize_cache/iblock/f23/254_254_2/f238ce28ac3c02d5d6a82a80249f9a48.jpg?161761730268362', 3)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (4, N'https://pizzamizza.az/upload/resize_cache/iblock/b30/254_254_2/b30d1e5de4821be1816d952c60800e1b.jpg?161761730269872', 4)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (5, N'https://pizzamizza.az/upload/resize_cache/iblock/ef1/254_254_2/ef101bab9b1423ec8fab06c27a418082.jpg?161761730266647', 5)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (6, N'https://pizzamizza.az/upload/resize_cache/iblock/2bf/254_254_2/2bf59f331eeb5ac9fba6c8903c9097e3.jpg?162116974442640', 6)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (7, N'https://pizzamizza.az/upload/resize_cache/iblock/23a/254_254_2/23a9e1b6d069fe8cc358908bc863c732.jpg?162116974451013', 7)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (8, N'https://pizzamizza.az/upload/resize_cache/iblock/37e/254_254_2/37ee4feffc0faa6ffb2879557c077caa.jpg?162116974449488', 8)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (9, N'https://pizzamizza.az/upload/resize_cache/iblock/d7d/254_254_2/d7dcf5fc4a29d77b563171805c7b7791.jpg?162116974442952', 9)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (10, N'https://pizzamizza.az/upload/resize_cache/iblock/90a/254_254_2/90a8e02da0c8f2da3dcc99bef6dd0de7.jpg?162116954753223', 10)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (11, N'https://pizzamizza.az/upload/resize_cache/iblock/8de/254_254_2/8dec5ce76d7dd79d2b1a34a7f9016100.jpg?162116956552283', 11)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (12, N'https://pizzamizza.az/upload/resize_cache/iblock/3e3/254_254_2/3e30fa2504faa36fba79cbdffa5972a4.jpg?162116974527925', 12)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (13, N'https://pizzamizza.az/upload/resize_cache/iblock/3e3/254_254_2/3e30fa2504faa36fba79cbdffa5972a4.jpg?162116974527925', 13)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (14, N'https://pizzamizza.az/upload/resize_cache/iblock/3d5/254_254_2/3d5624564f8775601e7c4207332093c4.jpg?162116974528319', 14)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (15, N'https://pizzamizza.az/upload/resize_cache/iblock/2cd/254_254_2/2cdebbfb8045357e753586d436d35b0f.jpg?158818803630649', 15)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (16, N'https://pizzamizza.az/upload/resize_cache/iblock/9a6/254_254_2/9a6ba0a9ea916be2a702491ae257fd2d.jpg?158818803626674', 16)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (17, N'https://pizzamizza.az/upload/resize_cache/iblock/004/254_254_2/00482897e628d4d1af9508cbc6a25129.jpg?158818803637299', 17)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (18, N'https://pizzamizza.az/upload/resize_cache/iblock/d3a/254_254_2/d3a56fd4c88e8fe3fb5e62ab2980e1f9.jpg?158818803632725', 18)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (19, N'https://pizzamizza.az/upload/resize_cache/iblock/28b/254_254_2/28bfb7475680bc43014b1a8b09882fb5.jpg?158689277736548', 19)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (20, N'https://pizzamizza.az/upload/resize_cache/iblock/fc8/254_254_2/fc80e271f371dfb090482bf21f5bd5d7.jpg?158689277734036', 20)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (21, N'https://pizzamizza.az/upload/resize_cache/iblock/d1a/254_254_2/d1a423d953c29f7202dc445391a217af.jpg?158689277731649', 21)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (22, N'https://pizzamizza.az/upload/resize_cache/iblock/acc/254_254_2/acc32c1c4f6379696cd616aee341d37d.png?166601190488509', 22)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (23, N'https://pizzamizza.az/upload/resize_cache/iblock/bc8/254_254_2/bc8f342895142874cca5d06ed60acdb7.png?166601215365516', 23)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (24, N'https://pizzamizza.az/upload/resize_cache/iblock/c7b/254_254_2/c7b1474b736a7fbeb28f600a925a5cfa.png?166601190452715', 24)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (25, N'https://pizzamizza.az/upload/resize_cache/iblock/572/254_254_2/5722e0ba609cdf4a3a91dd253b9e48ae.png?166601194065733', 25)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (26, N'https://pizzamizza.az/upload/resize_cache/iblock/865/254_254_2/865a133d61211e85f0698e1a124a7066.jpg?162116954714969', 26)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (27, N'https://pizzamizza.az/upload/resize_cache/iblock/45d/254_254_2/45d5d9d035e5408bfbd06ce0b309c5aa.jpg?162116954720529', 27)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (28, N'https://pizzamizza.az/upload/resize_cache/iblock/e34/254_254_2/e34f0dcbf495926061acf2e36dfddf94.jpg?162116954725760', 28)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (29, N'https://pizzamizza.az/upload/resize_cache/iblock/830/254_254_2/8306f2881bc4da4be727fee120a05858.jpg?162116954720832', 29)
INSERT [dbo].[Images] ([Id], [Path], [ProductId]) VALUES (30, N'https://pizzamizza.az/upload/resize_cache/iblock/66e/254_254_2/66e31877521e9cf4a442a534ed1abe16.png?166385207952619', 30)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Prices] ON 

INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (1, 1, 1, 7.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (2, 1, 2, 11.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (3, 1, 3, 14.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (4, 2, 1, 8.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (5, 2, 2, 12.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (6, 2, 3, 15.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (7, 3, 1, 9.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (8, 3, 2, 14.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (9, 3, 3, 18.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (10, 4, 1, 9.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (11, 4, 2, 14.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (12, 4, 3, 18.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (13, 5, 1, 9.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (14, 5, 2, 14.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (15, 5, 3, 18.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (16, 6, 4, 7.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (17, 7, 4, 7.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (18, 8, 4, 7.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (19, 12, 5, 2.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (20, 13, 5, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (21, 14, 5, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (22, 15, NULL, 1)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (23, 16, NULL, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (24, 17, NULL, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (25, 18, NULL, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (26, 19, NULL, 0.8)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (27, 20, NULL, 0.8)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (28, 21, NULL, 0.8)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (29, 22, NULL, 6.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (30, 23, NULL, 6.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (31, 24, NULL, 3.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (32, 25, NULL, 7.9)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (33, 26, NULL, 1.5)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (34, 27, NULL, 3)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (35, 28, NULL, 3)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (36, 29, NULL, 1.5)
INSERT [dbo].[Prices] ([Id], [ProductId], [SizeId], [Price]) VALUES (37, 30, NULL, 3)
SET IDENTITY_INSERT [dbo].[Prices] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (1, N'Margarita', 1, N'Pizza sous, gouda pendiri, mozarella pendiri, pomidor')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (2, N'Vegetarian', 1, N'Pizza sous, gouda pendiri,  ispanaq, qirmizi sogan, bolqar bib?ri, pomidor, göb?l?k')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (3, N'Fungi Kon Pollo
', 1, N'Pizza sous, gouda pendiri, göb?l?k, toyuq filesi')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (4, N'Speçiale', 1, N'Pizza sous, gouda pendiri, toyuq filesi, qirmizi sogan')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (5, N'Mista', 1, N'Pizza sous, gouda pendiri, göb?l?k, mal ?tind?n vetçina (halal), salyami kolbasasi (halal)')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (6, N'Yunan', 2, N'Aysberq kahi, pomidor, xiyar, ag pendir, qara zeytun,  zeytun yagi, limon suyu, ?dviyyat')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (7, N'Speçiale', 2, N'Aysberq kahi, kök, pomidor, xiyar, qargidali, toyuq filesi, gouda pendiri, qurudulmus çör?k, xüsusi sous, ?dviyyat')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (8, N'Kapriçoza', 2, N'Aysberq kahi, pomidor, xiyar, qargidali, kök, gouda pendiri, ton baligi, mal ?tind?n vetçina (halal), kokteyl sousu')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (9, N'Sezar', 2, N'Aysberq kahi, pomidoru, toyuq filesi, parmezan pendiri, qurudulmus çör?k, klassik Sezar sousu')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (10, N'Fettuçini Speçiale', 3, N'Fettuçini makaronu, toyuq filesi, i?spanaq, bolqar bib?ri, tomat sousu, qauda pendiri, qaymaqli sous, oreqano')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (11, N'Penne Kon Pollo', 3, N'Penne makaronu, toyuq filesi, göb?l?k, ag pendir, qaymaqli sous, gouda pendiri, ?dviyyatlar')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (12, N'Mərci Şorbası', 4, N'M?rci, tomat pastasi, sogan, kök, ?dviyyatlar')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (13, N'Göbələk Şorbası', 4, N'Göb?l?k, sogan, qaymaq, ?dviyyatlar')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (14, N'Tomat Şorbası', 4, N'Pomidor, kök, sogan, qaymaq, ?dviyyatlar')
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (15, N'Panini (Sadə)', 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (16, N'Kartof Fri', 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (17, N'Kəndsayağı Kartof', 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (18, N'Panini', 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (19, N'Pendirli Sous', 6, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (20, N'Barbekyu Sous', 6, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (21, N'Ketçup', 6, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (22, N'Ballı tort', 7, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (23, N'Merenqa
', 7, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (24, N'Ekler', 7, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (25, N'Çizkeyk San Sebastian
', 7, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (26, N'Ayran', 8, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (27, N'Coca-cola', 8, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (28, N'Fanta', 8, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (29, N'Sirab', 8, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Description]) VALUES (30, N'Meyvə şirəsi', 8, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (1, 1, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (2, 2, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (3, 5, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (4, 6, 3)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (5, 8, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (6, 12, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (7, 13, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (8, 14, 1)
INSERT [dbo].[ProductType] ([Id], [ProductId], [TypeId]) VALUES (9, 18, 1)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [SizeCode]) VALUES (5, N'250 ml')
INSERT [dbo].[Sizes] ([Id], [SizeCode]) VALUES (4, N'300 qr')
INSERT [dbo].[Sizes] ([Id], [SizeCode]) VALUES (3, N'Large')
INSERT [dbo].[Sizes] ([Id], [SizeCode]) VALUES (2, N'Medium')
INSERT [dbo].[Sizes] ([Id], [SizeCode]) VALUES (1, N'Small')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (1, 1, 1)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (3, 3, 3)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (4, 4, 4)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (5, 5, 5)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (6, 6, 6)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (7, 7, 7)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (8, 8, 8)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (9, 9, 9)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (10, 10, 10)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (11, 11, 11)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (12, 12, 12)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (13, 13, 13)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (14, 14, 14)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (15, 15, 15)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (16, 16, 16)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (17, 17, 17)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (18, 18, 18)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (19, 19, 19)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (20, 20, 20)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (21, 21, 21)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (22, 22, 22)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (23, 23, 23)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (24, 24, 24)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (25, 25, 25)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (26, 26, 26)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (27, 27, 27)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (28, 28, 28)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (29, 29, 29)
INSERT [dbo].[Sliders] ([Id], [ProductId], [ImageId]) VALUES (30, 30, 30)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([Id], [TypeCode]) VALUES (2, N'Acili')
INSERT [dbo].[Types] ([Id], [TypeCode]) VALUES (1, N'Halal')
INSERT [dbo].[Types] ([Id], [TypeCode]) VALUES (3, N'Vegeterian')
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Sizes__FA994BF60AC52064]    Script Date: 16-Dec-22 09:32:15 ******/
ALTER TABLE [dbo].[Sizes] ADD UNIQUE NONCLUSTERED 
(
	[SizeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Types__3E1CDC7C53F7B47A]    Script Date: 16-Dec-22 09:32:15 ******/
ALTER TABLE [dbo].[Types] ADD UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Prices]  WITH CHECK ADD FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD FOREIGN KEY([ImageId])
REFERENCES [dbo].[Images] ([Id])
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO



GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllInfo]    Script Date: 19-Dec-22 10:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[sp_GetAllInfo]
as
Select P.Id, P.Name,P.Description,S.SizeCode,Price ,T.TypeCode,C.Name  as Category from Products P
join Prices Pr
on
P.Id=Pr.ProductId
join Sizes S
on
Pr.SizeId=S.Id
join Types T
on
T.Id=P.Id
join Categories C
on C.Id=P.CategoryId

GO
/****** Object:  StoredProcedure [dbo].[sp_FindProductById]    Script Date: 19-Dec-22 10:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FindProductById] @Id int
as
Select P.Id, P.Name,P.Description,S.SizeCode,Price ,T.TypeCode,C.Name  as Category from Products P 
join Prices Pr
on
P.Id=Pr.ProductId
join Sizes S
on
Pr.SizeId=S.Id
join Types T
on
T.Id=P.Id
join Categories C
on C.Id=P.CategoryId
