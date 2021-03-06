create database Nhaccuatui
go
USE [Nhaccuatui]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[maalbum] [int] IDENTITY(1,1) NOT NULL,
	[tenalbum] [nvarchar](50) NOT NULL,
	[hinhanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maalbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat](
	[mabaihat] [int] IDENTITY(1,1) NOT NULL,
	[tenbaihat] [nvarchar](50) NOT NULL,
	[hinhanh] [nvarchar](50) NULL,
	[loibaihat] [nvarchar](1000) NULL,
	[tacgia] [nvarchar](50) NULL,
	[matheloai] [int] NOT NULL,
	[maalbum] [int] NOT NULL,
	[machude] [int] NOT NULL,
	[linkbaihat] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mabaihat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi](
	[macasi] [int] IDENTITY(1,1) NOT NULL,
	[tencasi] [nvarchar](50) NOT NULL,
	[namsinh] [int] NULL,
	[hinhanh] [nvarchar](50) NULL,
	[quequan] [nvarchar](30) NULL,
	[motathem] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[macasi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi_Album]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi_Album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macasi] [int] NOT NULL,
	[maalbum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi_BaiHat]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi_BaiHat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macasi] [int] NOT NULL,
	[mabaihat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[machude] [int] IDENTITY(1,1) NOT NULL,
	[tenchude] [nvarchar](50) NOT NULL,
	[motathem] [nvarchar](1000) NULL,
	[hinhanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[machude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[maplaylist] [int] IDENTITY(1,1) NOT NULL,
	[tenplaylist] [nvarchar](50) NOT NULL,
	[hinhanh] [nvarchar](50) NOT NULL,
	[matheloai] [int] NOT NULL,
	[nguoitao] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maplaylist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList_BaiHat]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList_BaiHat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maplaylist] [int] NOT NULL,
	[mabaihat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tendangnhap] [nvarchar](30) NOT NULL,
	[matkhau] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 04/01/2021 8:24:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[matheloai] [int] IDENTITY(1,1) NOT NULL,
	[tentheloai] [nvarchar](50) NOT NULL,
	[hinhanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([maalbum], [tenalbum], [hinhanh]) VALUES (1, N'Sai người sai thời điểm', N'pic7.jpg')
INSERT [dbo].[Album] ([maalbum], [tenalbum], [hinhanh]) VALUES (2, N'Có em chờ', N'pic2.jpg')
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[BaiHat] ON 

INSERT [dbo].[BaiHat] ([mabaihat], [tenbaihat], [hinhanh], [loibaihat], [tacgia], [matheloai], [maalbum], [machude], [linkbaihat]) VALUES (1, N'Sai người sai thời điểm', N'pic7.jpg', N'Chuyện tình yêu lúc nào cũng thế Đi mãi bao năm lê thê mong tìm được ai trên lối về Để dành một đời yêu thương trao về nhau không vấn vương Chỉ mong rằng ta mãi bên cạnh dù đời còn bao gió sương  Và chuyện tình yêu bây giờ vẫn thế Anh vẫn luôn yêu em thôi dẫu em giờ đây đã khác rồi Tình yêu mà anh vun vén bao lâu Kết thúc khi em nói câu Em thấy chúng ta không hợp mình chia tay nhé  ĐK: Mình gặp nhau đúng hay sai mà đã chia hai Coi nhau như chẳng tồn tại Hợp nhau là do mình thôi luôn sống thứ tha vì nhau Tìm được nhau dễ dàng đâu có phải bên nhau một ngày hay bốn năm hôm? Nay em nói câu không hợp là do duyên số hay sao? Vậy em có chắc bao năm mọi thứ yêu thương em trao riêng mỗi anh không? Mình gặp nhau sai thời gian và sai người phải không em? Nhìn người mà anh từng thương cứ thế đi xa từng bước trên phố *** thuộc Một người đứng trông một người khuất xa dần.', N'Thanh Hưng', 1, 1, 1, N'Sai-Nguoi-Sai-Thoi-Diem-Thanh-Hung.mp3')
INSERT [dbo].[BaiHat] ([mabaihat], [tenbaihat], [hinhanh], [loibaihat], [tacgia], [matheloai], [maalbum], [machude], [linkbaihat]) VALUES (3, N'Có em chờ', N'pic2.jpg', N'Từ lần đầu tiên ta đi bên nhau Em đã biết tim mình đánh rơi rồi Từ lần đầu tiên môi hôn trao nhau Em đã biết không thể yêu thêm ai.  Cách anh cười cong môi, cách anh lặng lẽ ngồi Ngồi nhìn bóng tối lặng thầm thời gian trôi.  Người đàn ông em yêu đôi khi Có những phút giây yếu đuối không ngờ Ngoài kia nếu có khó khăn quá về nhà anh nhé Có em chờ!  Có môi mềm thơm thơm, có dư vị mỗi bữa cơm Xuân hạ thu đông đều có em chờ.', N'MIN', 1, 2, 1, N'Co-Em-Cho-MIN-Mr-A.mp3')
SET IDENTITY_INSERT [dbo].[BaiHat] OFF
GO
SET IDENTITY_INSERT [dbo].[CaSi] ON 

INSERT [dbo].[CaSi] ([macasi], [tencasi], [namsinh], [hinhanh], [quequan], [motathem]) VALUES (1, N'Thanh Hưng', 1992, N'pic1.jpg', N'Hải Dương', N'Năm 2010, thi đỗ vào trường Cao Đẳng Nghệ Thuật Hà Nội. ')
INSERT [dbo].[CaSi] ([macasi], [tencasi], [namsinh], [hinhanh], [quequan], [motathem]) VALUES (2, N'MIN', 1988, N'pic4.jpg', N'Hà Nội', N'Nguyễn Minh Hằng được biết tới với nghệ danh MIN. MIN bắt đầu được biết đến với tư cách là thành viên của nhóm nhảy St.319 (tiền thân của công ty giải trí St.319 Entertainment).')
SET IDENTITY_INSERT [dbo].[CaSi] OFF
GO
SET IDENTITY_INSERT [dbo].[CaSi_Album] ON 

INSERT [dbo].[CaSi_Album] ([id], [macasi], [maalbum]) VALUES (1, 1, 1)
INSERT [dbo].[CaSi_Album] ([id], [macasi], [maalbum]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[CaSi_Album] OFF
GO
SET IDENTITY_INSERT [dbo].[CaSi_BaiHat] ON 

INSERT [dbo].[CaSi_BaiHat] ([id], [macasi], [mabaihat]) VALUES (1, 1, 1)
INSERT [dbo].[CaSi_BaiHat] ([id], [macasi], [mabaihat]) VALUES (3, 2, 3)
SET IDENTITY_INSERT [dbo].[CaSi_BaiHat] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([machude], [tenchude], [motathem], [hinhanh]) VALUES (1, N'hot v-pop', N'Đến hẹn lại lên, cứ một tháng mới đến, NhacCuaTui tập trung các ca khúc nhạc trẻ mới nhất trong tháng sắp tới và cập nhật vào playlist để người dùng NhacCuaTui thoải mái đón nhận, tận hưởng và chia sẻ. Được tạo nên dựa trên thị hiếu và sở thích riêng của người dùng NhacCuaTui, các playlist này chắc chắn sẽ khiến bạn cảm nhận được chất NhacCuaTui, của bạn một cách riêng biệt và rõ rệt nhất. Cùng lắng nghe và ủng hộ các nghệ sĩ trẻ của Việt Nam để nền âm nhạc nước nhà ngày một phát triển hơn nữa', N'pic8.jpg')
INSERT [dbo].[ChuDe] ([machude], [tenchude], [motathem], [hinhanh]) VALUES (2, N'bài hát yêu thích', N'Thị trường âm nhạc trong nước và thế giới luôn có sự biến đổi nhanh chóng trong những năm gần đây. Hàng loạt bài HIT mới xuất hiện như những "cơn bão" mạnh mẽ tấn công vào các bảng xếp hạng. Những gương mặt mới tài năng, xinh đẹp liên tục xuất hiện làm khuynh đảo các fan yêu nhạc. Với loạt các tuyển tập "Bài Hát Yêu Thích", NhacCuaTui.Com xin giới thiệu đến các bạn những ca khúc HIT chọn lọc từng "làm mưa làm gió" trên các trang mạng, các bảng xếp hạng toàn cầu khiến các bạn trẻ phải điên đảo trong năm', N'pic9.jpg')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
SET IDENTITY_INSERT [dbo].[Playlist] ON 

INSERT [dbo].[Playlist] ([maplaylist], [tenplaylist], [hinhanh], [matheloai], [nguoitao]) VALUES (1, N'nhạc việt hot tháng 1/2021', N'pic8.jpg', 1, N'V.A')
INSERT [dbo].[Playlist] ([maplaylist], [tenplaylist], [hinhanh], [matheloai], [nguoitao]) VALUES (2, N'bài hát yêu thích tháng 12/2020', N'pic1.jpg', 1, N'V.A')
SET IDENTITY_INSERT [dbo].[Playlist] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayList_BaiHat] ON 

INSERT [dbo].[PlayList_BaiHat] ([id], [maplaylist], [mabaihat]) VALUES (4, 1, 1)
INSERT [dbo].[PlayList_BaiHat] ([id], [maplaylist], [mabaihat]) VALUES (6, 1, 3)
INSERT [dbo].[PlayList_BaiHat] ([id], [maplaylist], [mabaihat]) VALUES (7, 2, 3)
INSERT [dbo].[PlayList_BaiHat] ([id], [maplaylist], [mabaihat]) VALUES (8, 2, 1)
SET IDENTITY_INSERT [dbo].[PlayList_BaiHat] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [tendangnhap], [matkhau]) VALUES (1, N'ngothang', N'11111')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([matheloai], [tentheloai], [hinhanh]) VALUES (1, N'nhạc trẻ', N'pic4.png')
INSERT [dbo].[TheLoai] ([matheloai], [tentheloai], [hinhanh]) VALUES (2, N'nhạc trữ tình', N'pic1.jpg')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_bh_ab] FOREIGN KEY([maalbum])
REFERENCES [dbo].[Album] ([maalbum])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_bh_ab]
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_bh_cd] FOREIGN KEY([machude])
REFERENCES [dbo].[ChuDe] ([machude])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_bh_cd]
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_bh_tl] FOREIGN KEY([matheloai])
REFERENCES [dbo].[TheLoai] ([matheloai])
GO
ALTER TABLE [dbo].[BaiHat] CHECK CONSTRAINT [FK_bh_tl]
GO
ALTER TABLE [dbo].[CaSi_Album]  WITH CHECK ADD  CONSTRAINT [FK_csab_ab] FOREIGN KEY([maalbum])
REFERENCES [dbo].[Album] ([maalbum])
GO
ALTER TABLE [dbo].[CaSi_Album] CHECK CONSTRAINT [FK_csab_ab]
GO
ALTER TABLE [dbo].[CaSi_Album]  WITH CHECK ADD  CONSTRAINT [FK_csab_cs] FOREIGN KEY([macasi])
REFERENCES [dbo].[CaSi] ([macasi])
GO
ALTER TABLE [dbo].[CaSi_Album] CHECK CONSTRAINT [FK_csab_cs]
GO
ALTER TABLE [dbo].[CaSi_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_csbh_bh] FOREIGN KEY([mabaihat])
REFERENCES [dbo].[BaiHat] ([mabaihat])
GO
ALTER TABLE [dbo].[CaSi_BaiHat] CHECK CONSTRAINT [FK_csbh_bh]
GO
ALTER TABLE [dbo].[CaSi_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_csbh_cs] FOREIGN KEY([macasi])
REFERENCES [dbo].[CaSi] ([macasi])
GO
ALTER TABLE [dbo].[CaSi_BaiHat] CHECK CONSTRAINT [FK_csbh_cs]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_pl_tl] FOREIGN KEY([matheloai])
REFERENCES [dbo].[TheLoai] ([matheloai])
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_pl_tl]
GO
ALTER TABLE [dbo].[PlayList_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_plbh_bh] FOREIGN KEY([mabaihat])
REFERENCES [dbo].[BaiHat] ([mabaihat])
GO
ALTER TABLE [dbo].[PlayList_BaiHat] CHECK CONSTRAINT [FK_plbh_bh]
GO
ALTER TABLE [dbo].[PlayList_BaiHat]  WITH CHECK ADD  CONSTRAINT [FK_plbh_pl] FOREIGN KEY([maplaylist])
REFERENCES [dbo].[Playlist] ([maplaylist])
GO
ALTER TABLE [dbo].[PlayList_BaiHat] CHECK CONSTRAINT [FK_plbh_pl]
GO
