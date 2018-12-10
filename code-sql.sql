Create database QLTHUENHA
 go
 use QLTHUENHA
 go

 --Tạo bảng Khách hàng
     Create Table KHACHHANG(
	      makh nvarchar(10) primary key,
		  tenkh nvarchar(30),
		  diachi nvarchar(50),
		  sdt numeric, 
		  nganhnghe nvarchar(50)
	 )
 go

 --Tạo bảng Chủ nhà
     Create Table CHUNHA(
	      machunha nvarchar(10) primary key,
		  tenchunha nvarchar(30),
		  sdt numeric,
		  diachi nvarchar(50)
	 )
go  

 --Tạo bảng Nhà trọ
     Create Table NHATRO(
	       manha nvarchar(10) primary key,
		   tenchunha nvarchar(30),
		   giathue int,
		   diachinha nvarchar(50),
		   tinhtrang nvarchar(30)
	 )
 go

--Tạo bảng Hợp đồng
     Create Table HOPDONG(
	     sohd nvarchar(10) primary key,
		 makh nvarchar(10),
		 manha nvarchar(10),
		 machunha nvarchar(10),
		 ngaybd datetime,
		 ngaykt datetime,
		 soluongthue int,
		 ghichu ntext,
		 foreign key(makh) references KHACHHANG(makh),
		 foreign key(manha) references NHATRO(manha),
		 foreign key(machunha) references CHUNHA(machunha)
	 )
go
  --Tạo bảng Phiếu thanh toán 
    Create Table PHIEUTHANHTOAN(
	    maptt nvarchar(10) primary key,
		makh nvarchar(10),
		manha nvarchar(10),
		machunha nvarchar(10),
		sothang int,
		ngattt datetime,
		tontien int,
		ghichu ntext,
		foreign key(makh) references KHACHHANG(makh),
		foreign key(manha) references NHATRO(manha),
		foreign key(machunha) references CHUNHA(machunha)

	)
	
go

  --Tạo bảng TKAdmin
      Create Table TKAdmin(
	       username nvarchar(30) primary key,
		   password varchar(32),
		   status int
	  )
go

   --Chèn dữ liệu cho bảng Khách hàng
          Insert into KHACHHANG Values(N'KH001',N'Chu Xuân Linh',N'Quảng Ninh',0357602338,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH002',N'Phạm Xuân Tú',N'Thái Nguyên',0356702341,N'Công Nhân')
		  Insert into KHACHHANG Values(N'KH003',N'Ngô Doãn Tình',N'Hải Dương',0456603772,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH004',N'Trịnh Minh Hải',N'Hà Nội',0457742881,N'Công Nhân')
		  Insert into KHACHHANG Values(N'KH005',N'Lại Thị Linh',N'Thái Bình',0467642710,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH006',N'Trịnh Thị Thu',N'Vĩnh Phúc',0372846023,N'Sinh Viên')
	      Insert into KHACHHANG Values(N'KH007',N'Ngô Văn Linh',N'Hà Nội',0367482351,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH008',N'Nguyễn Việt Nam',N'Thanh Hóa',0347602381,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH009',N'Phạm Mai Anh',N'Khánh Hòa',0357846215,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH010',N'Trịnh Doãn Phú',N'Thái Nguyên',0578421352,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH011',N'Nguyễn Minh Loan',N'bắc Giang',0367814253,N'Sinh Viên')
		  Insert into KHACHHANG Values(N'KH012',N'Trịnh Thị Mai',N'Bắc Ninh',0375671842,N'Sinh Viên')
    go

 --Chèn dữ liệu cho bảng Chủ nhà
         Insert into CHUNHA Values(N'cn001',N'Trần Văn Cương',0375601338,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn002',N'Nguyễn AN Khánh',0376601448,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn003',N'Thùy Minh',0475602551,N'Thái Nguyên')
		 Insert into CHUNHA Values(N'cn004',N'Nguyễn Thúy Diễm',0375123456,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn005',N'Tạ Thị Kiều An',0371245601,N'TP Hồ Chí Minh')
		 Insert into CHUNHA Values(N'cn006',N'Trịnh Thu Phương',0367128405,N'Bắc Giang')
		 Insert into CHUNHA Values(N'cn007',N'Trần Mai Linh',0472816498,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn008',N'Nguyễn Mỹ Hạnh',0371242606,N'Bắc Ninh')
		 Insert into CHUNHA Values(N'cn009',N'Lại Thị Thúy Nga',0561782429,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn010',N'Trần Doãn Khải',0432617429,N'Thái Nguyên')
		 Insert into CHUNHA Values(N'cn011',N'Nguyễn Kiều Oanh',0361728497,N'TP Hồ Chí Minh')
		 Insert into CHUNHA Values(N'cn012',N'Lê Thị Thúy',0371824905,N'Hà Nội')
		 Insert into CHUNHA Values(N'cn013',N'Nguyễn Thú Quỳnh',0375421606,N'Hà Nội')
 go

 --Chèn dữ liệu cho bảng Nhà trọ
        Insert into NHATRO Values(N'MN001',N'Trần Văn Cương',400000,N'Hà Nội',N'Còn Phòng')
		Insert into NHATRO Values(N'MN002',N'Nguyễn Thúy Diễm',2000000,N'TP Hồ Chí Minh',N'Còn Phòng')
        Insert into NHATRO Values(N'MN003',N'Tạ Thị Kiều An',1200000,N'Hà Nội',N'Còn Phòng')
	    Insert into NHATRO Values(N'MN004',N'Trịnh Thu Phương',1800000,N'TP Hồ Chí Minh',N'Còn Phòng')
        Insert into NHATRO Values(N'MN005',N'Trần Mai Linh',1500000,N'Hà Nội',N'Còn Phòng')
        Insert into NHATRO Values(N'MN006',N'Nguyễn Thúy Quỳnh',800000,N'Hà Nội',N'Còn Phòng')
	    Insert into NHATRO Values(N'MN007',N'Nguyễn Mỹ Hạnh',600000,N'Bắc Ninh',N'Hết Phòng')
	    Insert into NHATRO Values(N'MN008',N'Lại Thị Thúy Nga',500000,N'Bắc Ninh',N'Còn Phòng')
        Insert into NHATRO Values(N'MN009',N'Trần Doãn Khải',400000,N'Thái Nguyên',N'Hết  Phòng')
	    Insert into NHATRO Values(N'MN010',N'Nguyễn Kiều Oanh',1200000,N'Hà Nội',N'Còn Phòng')
	    Insert into NHATRO Values(N'MN011',N'Lê Thị Thúy',1500000,N'TP Hồ Chí Minh',N'Còn Phòng')
	    Insert into NHATRO Values(N'MN012',N'Thùy Minh',1600000,N'Hà Nội',N'Còn Phòng')
	    Insert into NHATRO Values(N'MN013',N'Nguyễn An Khánh',1200000,N'Hà Nội',N'Hết Phòng')
 go

 --Chèn dữ liệu cho bảng Hợp đồng
       Insert into HOPDONG Values(N'HD001',N'KH001',N'MN002',N'cn008',N'2017/2/20',N'2018/2/20',1,null)
	   Insert into HOPDONG Values(N'HD002',N'KH004',N'MN001',N'cn006',N'2016/1/15',N'2016/3/15',2,null)
	   Insert into HOPDONG Values(N'HD003',N'KH002',N'MN004',N'cn005',N'2018/3/20',N'2019/4/20',1,null)
	   Insert into HOPDONG Values(N'HD004',N'KH001',N'MN001',N'cn007',N'2016/8/12',N'2018/10/2',1,null)
	   Insert into HOPDONG Values(N'HD005',N'KH007',N'MN011',N'cn010',N'2017/5/12',N'2019/8/20',2,null)
	   Insert into HOPDONG Values(N'HD006',N'KH004',N'MN010',N'cn005',N'2016/2/3',N'2018/3/4',2,null)
	   Insert into HOPDONG Values(N'HD007',N'KH012',N'MN006',N'cn008',N'2017/2/4',N'2017/10/4',1,null)
	   Insert into HOPDONG Values(N'HD008',N'KH003',N'MN013',N'cn009',N'2018/8/9',N'2018/12/5',3,null)
	   Insert into HOPDONG Values(N'HD009',N'KH002',N'MN005',N'cn010',N'2017/2/3',N'2018/5/12',1,null)
	   Insert into HOPDONG Values(N'HD010',N'KH006',N'MN008',N'cn001',N'2017/3/2',N'2019/2/5',2,null)
go

--Chèn dữ liệu cho bảng Phiếu Thanh Toán
       Insert into PHIEUTHANHTOAN Values(N'mp001',N'KH002',N'MN004',N'cn005',1,N'2018/5/20',1800000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp002',N'KH001',N'MN002',N'cn008',1,N'2017/3/15',2000000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp003',N'KH004',N'MN001',N'cn006',2,N'2016/2/15',800000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp004',N'KH003',N'MN013',N'cn009',2,N'2018/8/15',2400000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp005',N'KH012',N'MN006',N'cn008',1,N'2017/5/2',1600000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp006',N'KH002',N'MN005',N'cn010',2,N'2018/3/4',3000000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp007',N'KH006',N'MN008',N'cn001',1,N'2017/4/2',500000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp008',N'KH007',N'MN011',N'cn010',2,N'2017/6/12',3000000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp009',N'KH004',N'MN010',N'cn005',3,N'2016/3/2',3600000,null)
	   Insert into PHIEUTHANHTOAN Values(N'mp010',N'KH001',N'MN003',N'cn007',1,N'2016/8/15',1200000,null)

go

  --Chèn dữ liệu cho bảng TKAdmin 
       Insert into TKAdmin Values(N'admin','123456',1)
	   Insert into TKAdmin Values(N'lehongquang','quang',3)
	   Insert into TKAdmin Values(N'haquanghuy','huy',3)
	   Insert into TKAdmin Values(N'chuxuanlinh','linh',3)
	   Insert into TKAdmin Values(N'phamxuantu','tu',3)
	   Insert into TKAdmin Values(N'trinhthithu','thu',3)
	   Insert into TKAdmin Values(N'tranvancuong','cuong',2)
	   Insert into TKAdmin Values(N'thuyminh','minh',2)
	   Insert into TKAdmin Values(N'nguyenkieuoanh','oanh',2)
	   Insert into TKAdmin Values(N'nguyenmyhanh','hanh',2)
 go

  --Hiển thị dữ liệu của các bảng
        Select * from KHACHHANG 
		Select * from CHUNHA
		Select * from NHATRO
		Select * from HOPDONG
		Select * from PHIEUTHANHTOAN
		Select * from TKAdmin

go
  --Một số câu lệnh truy vấn
      --1.Hiển thị ra màn hình thông tin các nhà trọ còn phòng
	        Select * from NHATRO where tinhtrang=N'Còn Phòng'

	 --2 .Hiển thị ra màn hình thông tin các nhà trọ ở hà nội
	        Select * from NHATRO where diachinha=N'Hà Nội'

	 --3.Hiển thị ra màn hình thông tin các nhà trọ có mức giá dưới 1500.000 ở Hà Nội và trong tình trạng còn phòng
	       Select * from NHATRO where giathue <1500000 and diachinha=N'Hà Nội' and tinhtrang=N'Còn Phòng'

	--4.Hiển thị Thông tin hợp đồng thuê nhà của khách hàng KH002
	      Select * from HOPDONG where makh=N'KH002'