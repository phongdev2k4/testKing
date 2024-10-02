create database Library_Management;
use Library_Management;
create table DocGia
(
MaDG varchar(20) not null,
HoTen NVARCHAR(20) not null,
Email VARCHAR(30) not null,
SDT INT not null,
PRIMARY KEY(maDG)
)
create table TacGia
(
MaTG INT not null,
HoTen NVARCHAR(20) not null,
TieuSu VARCHAR(50) not null,
PRIMARY KEY(matG)
)

create table NhanVien
(
MaNV varchar(20) not null,
HoTen NVARCHAR(20) not null,
matKhau VARCHAR(30) not null,
SDT INT not null,
VaiTro bit not null,
PRIMARY KEY(maNV)
)

create table Sach
(
MaSach INT IDENTIty(1,1) not null,
tenSach NVARCHAR(20) not null,
maTacGia int not null,
PRIMARY KEY(MaSach),
FOREIGN KEY(maTacGia) REFERENCES TacGia (matG)
)

create table PhieuMuonTra
(
MaPhieuMuon varchar(20) not null,
ngayMuon date not null,
maNV VARCHAR(20) not null,
maDG varchar(20) not null,
PRIMARY KEY(MaPhieuMuon),
FOREIGN KEY(maNV) REFERENCES NhanVien (maNV),
FOREIGN KEY(maDG) REFERENCES DocGia (maDG),
)

create table CTPhieuMuonTra
(
MaPhieuMuon varchar(20) not null,
MaSach INT  not null,
TinhTrang bit not null,
ngayTra date not null,
PRIMARY KEY (MaPhieuMuon,MaSach),
FOREIGN KEY(MaPhieuMuon) REFERENCES PhieuMuonTra (MaPhieuMuon),
FOREIGN KEY(MaSach) REFERENCES Sach (MaSach),
)

