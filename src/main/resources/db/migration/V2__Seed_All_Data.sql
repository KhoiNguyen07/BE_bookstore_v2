-- =========================
-- ROLE
-- =========================
INSERT INTO role (role_code, role_name) VALUES
    ('ADMIN', 'Admin'),
    ('MPOS', 'MPOS'),
    ('KT', 'Accountant'),
    ('USER', 'User');

-- =========================
-- ACCOUNT
-- =========================
INSERT INTO account (account_code, username, password, phone_number, email, role_code) VALUES
    ('TK_USER01', 'devsoga', '$2a$10$c3h6fvOYaAcAS3BDYZWRG.7NHD8WePgNugJKU5RYCgMM.46Ho7ewq', '0934567890', 'user@email.com', 'USER'),
    ('TK_ADMIN', 'admin', '$2a$10$c3h6fvOYaAcAS3BDYZWRG.7NHD8WePgNugJKU5RYCgMM.46Ho7ewq', '0901234567', 'admin@bookstore.com', 'ADMIN'),
    ('TK_MPOS1', 'mpos1', '$2a$10$c3h6fvOYaAcAS3BDYZWRG.7NHD8WePgNugJKU5RYCgMM.46Ho7ewq', '0912345678', 'mpos1@bookstore.com', 'MPOS'),
    ('TK_MPOS2', 'mpos2', '$2a$10$c3h6fvOYaAcAS3BDYZWRG.7NHD8WePgNugJKU5RYCgMM.46Ho7ewq', '0912345679', 'mpos2@bookstore.com', 'MPOS'),
    ('TK_KETOAN', 'ketoan', '$2a$10$c3h6fvOYaAcAS3BDYZWRG.7NHD8WePgNugJKU5RYCgMM.46Ho7ewq', '0923456789', 'ketoan@bookstore.com', 'KT');

-- =========================
-- EMPLOYEE
-- =========================
INSERT INTO employee (employee_code, employee_name, date_of_birth, gender, status, account_code) VALUES
    ('NV_ADMIN', 'Admin', '1990-01-01', 1, 1, 'TK_ADMIN'),
    ('NV_MPOS1', 'MPOS1', '1995-05-15', 1, 1, 'TK_MPOS1'),
    ('NV_MPOS2', 'MPOS2', '1996-06-20', 1, 1, 'TK_MPOS2'),
    ('NV_KETOAN', 'KeToan', '1988-12-20', 1, 1, 'TK_KETOAN');


-- =========================
-- CUSTOMER TYPE
-- =========================
INSERT INTO customer_type (customer_type_code, customer_type_name, description) VALUES
    ('LKH_VIP', 'Khách hàng VIP', 'Khách hàng thân thiết'),
    ('LKH_THUONG', 'Khách hàng thường', 'Khách hàng bình thường');

-- =========================
-- CUSTOMER
-- =========================
INSERT INTO customer (customer_code, customer_name, points, address, customer_type_code, account_code) VALUES
    ('KH_USER', 'Đặng Khôi Nguyên', 100, '123 Đường ABC, TP.HCM', 'LKH_THUONG', 'TK_USER01');

-- =========================
-- SUPPLIER
-- =========================
INSERT INTO supplier (supplier_code, supplier_name, address, phone_number, email)
VALUES ('NCC01', 'NXB Tổng Hợp', '123 Đường Sách, HN', '0912345678', 'nxb@example.com');

-- =========================
-- PRODUCT CATEGORY (10 CATEGORIES)
-- =========================
INSERT INTO product_category (category_code, category_name, description) VALUES
    ('LSP01', 'Âm nhạc', 'Sách về âm nhạc'),
    ('LSP02', 'Kiến trúc', 'Sách về kiến trúc'),
    ('LSP03', 'Kinh dị', 'Sách kinh dị'),
    ('LSP04', 'Nghệ thuật', 'Sách về nghệ thuật'),
    ('LSP05', 'Ngôn tình', 'Sách ngôn tình'),
    ('LSP06', 'Thơ văn', 'Sách thơ văn'),
    ('LSP07', 'Tiểu thuyết', 'Sách tiểu thuyết'),
    ('LSP08', 'Trinh thám', 'Sách trinh thám'),
    ('LSP09', 'Truyện lịch sử', 'Sách truyện lịch sử'),
    ('LSP10', 'Văn học', 'Sách văn học');

-- =========================
-- PRODUCTS (10 CATEGORIES x 5 BOOKS = 50 BOOKS)
-- =========================
-- =========================
-- PRODUCTS (10 CATEGORIES x 5 BOOKS = 50 BOOKS)
-- =========================
INSERT INTO product (product_code, product_name, description, image, category_code) VALUES
    -- LSP01 Âm nhạc
    ('SP0101','Lịch sử âm nhạc Việt Nam','Tìm hiểu về lịch sử âm nhạc dân tộc','music1.jpg','LSP01'),
    ('SP0102','Giáo trình Piano cơ bản','Học Piano từ cơ bản đến nâng cao','music2.jpg','LSP01'),
    ('SP0103','Âm nhạc cổ điển phương Tây','Khám phá âm nhạc cổ điển','music3.jpg','LSP01'),
    ('SP0104','Kỹ thuật chơi Guitar','Hướng dẫn chơi Guitar hiệu quả','music4.jpg','LSP01'),
    ('SP0105','Lý thuyết âm nhạc','Cơ sở lý thuyết âm nhạc','music5.jpg','LSP01'),

    -- LSP02 Kiến trúc
    ('SP0201','Kiến trúc Việt Nam qua các thời kỳ','Tìm hiểu kiến trúc truyền thống','arch1.jpg','LSP02'),
    ('SP0202','Thiết kế nội thất hiện đại','Xu hướng thiết kế nội thất','arch2.jpg','LSP02'),
    ('SP0203','Kiến trúc Gothic','Nghệ thuật kiến trúc Gothic','arch3.jpg','LSP02'),
    ('SP0204','Quy hoạch đô thị','Nguyên lý quy hoạch đô thị','arch4.jpg','LSP02'),
    ('SP0205','Kiến trúc xanh','Kiến trúc bền vững và thân thiện môi trường','arch5.jpg','LSP02'),

    -- LSP03 Kinh dị
    ('SP0301','Ma lai','Truyện ma Việt Nam','horror1.jpg','LSP03'),
    ('SP0302','Lời nguyền của bóng đêm','Câu chuyện kinh dị đầy ám ảnh','horror2.jpg','LSP03'),
    ('SP0303','Ngôi nhà ma ám','Bí ẩn trong ngôi nhà cũ','horror3.jpg','LSP03'),
    ('SP0304','Những linh hồn lạc lối','Tập truyện kinh dị hay nhất','horror4.jpg','LSP03'),
    ('SP0305','Đêm Halloween kinh hoàng','Câu chuyện về đêm Halloween','horror5.jpg','LSP03'),

    -- LSP04 Nghệ thuật
    ('SP0401','Lịch sử hội họa Việt Nam','Tranh Việt qua các thời kỳ','art1.jpg','LSP04'),
    ('SP0402','Nghệ thuật điêu khắc','Tác phẩm điêu khắc nổi tiếng','art2.jpg','LSP04'),
    ('SP0403','Mỹ thuật đương đại','Xu hướng mỹ thuật hiện đại','art3.jpg','LSP04'),
    ('SP0404','Thư pháp Việt Nam','Nghệ thuật viết chữ Hán','art4.jpg','LSP04'),
    ('SP0405','Gốm sứ truyền thống','Nghệ thuật gốm sứ Việt','art5.jpg','LSP04'),

    -- LSP05 Ngôn tình
    ('SP0501','Tình yêu mùa thu','Câu chuyện tình yêu lãng mạn','romance1.jpg','LSP05'),
    ('SP0502','Nơi em thuộc về','Tình yêu và gia đình','romance2.jpg','LSP05'),
    ('SP0503','Một nửa yêu thương','Tình yêu đẹp như mơ','romance3.jpg','LSP05'),
    ('SP0504','Duyên phận tiền định','Định mệnh tình yêu','romance4.jpg','LSP05'),
    ('SP0505','Hạnh phúc bên em','Tình yêu và hạnh phúc','romance5.jpg','LSP05'),

    -- LSP06 Thơ văn
    ('SP0601','Truyện Kiều','Tác phẩm kinh điển Nguyễn Du','poem1.jpg','LSP06'),
    ('SP0602','Thơ Xuân Diệu','Tuyển tập thơ hay nhất','poem2.jpg','LSP06'),
    ('SP0603','Thơ Tố Hữu','Thơ cách mạng Việt Nam','poem3.jpg','LSP06'),
    ('SP0604','Văn học dân gian','Truyện cổ tích Việt Nam','poem4.jpg','LSP06'),
    ('SP0605','Thơ tình yêu','Những bài thơ về tình yêu','poem5.jpg','LSP06'),

    -- LSP07 Tiểu thuyết
    ('SP0701','Số đỏ','Tác phẩm của Vũ Trọng Phụng','novel1.jpg','LSP07'),
    ('SP0702','Chí Phèo','Truyện ngắn Nam Cao','novel2.jpg','LSP07'),
    ('SP0703','Tắt đèn','Tiểu thuyết Ngô Tất Tố','novel3.jpg','LSP07'),
    ('SP0704','Đất rừng phương Nam','Tác phẩm Đoàn Giỏi','novel4.jpg','LSP07'),
    ('SP0705','Những ngày thơ ấu','Hồi ký tuổi thơ','novel5.jpg','LSP07'),

    -- LSP08 Trinh thám
    ('SP0801','Sherlock Holmes','Tập truyện trinh thám kinh điển','detective1.jpg','LSP08'),
    ('SP0802','Án mạng trên sông Nile','Agatha Christie','detective2.jpg','LSP08'),
    ('SP0803','Mật mã Da Vinci','Dan Brown','detective3.jpg','LSP08'),
    ('SP0804','Thám tử Conan','Truyện tranh trinh thám','detective4.jpg','LSP08'),
    ('SP0805','CSI: Hiện trường tội phạm','Khoa học điều tra','detective5.jpg','LSP08'),

    -- LSP09 Truyện lịch sử
    ('SP0901','Lịch sử Việt Nam','Từ thời cổ đại đến hiện đại','history1.jpg','LSP09'),
    ('SP0902','Chiến tranh Việt Nam','Những trận đánh lịch sử','history2.jpg','LSP09'),
    ('SP0903','Các vương triều Việt','Lịch sử các triều đại','history3.jpg','LSP09'),
    ('SP0904','Anh hùng dân tộc','Những vị anh hùng Việt Nam','history4.jpg','LSP09'),
    ('SP0905','Di sản văn hóa','Bảo tồn di sản dân tộc','history5.jpg','LSP09'),

    -- LSP10 Văn học
    ('SP1001','Văn học Việt Nam hiện đại','Tổng quan văn học đương đại','literature1.jpg','LSP10'),
    ('SP1002','Văn học thế giới','Những tác phẩm kinh điển','literature2.jpg','LSP10'),
    ('SP1003','Phê bình văn học','Lý luận phê bình','literature3.jpg','LSP10'),
    ('SP1004','Văn học so sánh','So sánh văn học các nước','literature4.jpg','LSP10'),
    ('SP1005','Tác giả và tác phẩm','Những tác giả nổi tiếng','literature5.jpg','LSP10');

-- =========================
-- INITIAL IMPORT INVOICE
-- =========================
INSERT INTO import_invoice (import_invoice_code, discount, status, total_amount, description, employee_code, supplier_code)
VALUES ('PN01', 0, 'Hoàn tất', 250000000, 'Phiếu nhập lần đầu toàn bộ sách', 'NV_KETOAN', 'NCC01');

-- =========================
-- IMPORT INVOICE DETAILS (50 PRODUCTS)
-- =========================
-- =========================
-- IMPORT INVOICE DETAILS (50 PRODUCTS)
-- =========================
INSERT INTO import_invoice_detail (import_invoice_detail_code, quantity, import_price, total_amount, product_code, import_invoice_code) VALUES
    -- LSP01 Âm nhạc
    ('CTPN001', 100, 50000, 5000000, 'SP0101','PN01'),
    ('CTPN002', 100, 50000, 5000000, 'SP0102','PN01'),
    ('CTPN003', 100, 50000, 5000000, 'SP0103','PN01'),
    ('CTPN004', 100, 50000, 5000000, 'SP0104','PN01'),
    ('CTPN005', 100, 50000, 5000000, 'SP0105','PN01'),
    -- LSP02 Kiến trúc
    ('CTPN006', 100, 50000, 5000000, 'SP0201','PN01'),
    ('CTPN007', 100, 50000, 5000000, 'SP0202','PN01'),
    ('CTPN008', 100, 50000, 5000000, 'SP0203','PN01'),
    ('CTPN009', 100, 50000, 5000000, 'SP0204','PN01'),
    ('CTPN010', 100, 50000, 5000000, 'SP0205','PN01'),
    -- LSP03 Kinh dị
    ('CTPN011', 100, 50000, 5000000, 'SP0301','PN01'),
    ('CTPN012', 100, 50000, 5000000, 'SP0302','PN01'),
    ('CTPN013', 100, 50000, 5000000, 'SP0303','PN01'),
    ('CTPN014', 100, 50000, 5000000, 'SP0304','PN01'),
    ('CTPN015', 100, 50000, 5000000, 'SP0305','PN01'),
    -- LSP04 Nghệ thuật
    ('CTPN016', 100, 50000, 5000000, 'SP0401','PN01'),
    ('CTPN017', 100, 50000, 5000000, 'SP0402','PN01'),
    ('CTPN018', 100, 50000, 5000000, 'SP0403','PN01'),
    ('CTPN019', 100, 50000, 5000000, 'SP0404','PN01'),
    ('CTPN020', 100, 50000, 5000000, 'SP0405','PN01'),
    -- LSP05 Ngôn tình
    ('CTPN021', 100, 50000, 5000000, 'SP0501','PN01'),
    ('CTPN022', 100, 50000, 5000000, 'SP0502','PN01'),
    ('CTPN023', 100, 50000, 5000000, 'SP0503','PN01'),
    ('CTPN024', 100, 50000, 5000000, 'SP0504','PN01'),
    ('CTPN025', 100, 50000, 5000000, 'SP0505','PN01'),
    -- LSP06 Thơ văn
    ('CTPN026', 100, 50000, 5000000, 'SP0601','PN01'),
    ('CTPN027', 100, 50000, 5000000, 'SP0602','PN01'),
    ('CTPN028', 100, 50000, 5000000, 'SP0603','PN01'),
    ('CTPN029', 100, 50000, 5000000, 'SP0604','PN01'),
    ('CTPN030', 100, 50000, 5000000, 'SP0605','PN01'),
    -- LSP07 Tiểu thuyết
    ('CTPN031', 100, 50000, 5000000, 'SP0701','PN01'),
    ('CTPN032', 100, 50000, 5000000, 'SP0702','PN01'),
    ('CTPN033', 100, 50000, 5000000, 'SP0703','PN01'),
    ('CTPN034', 100, 50000, 5000000, 'SP0704','PN01'),
    ('CTPN035', 100, 50000, 5000000, 'SP0705','PN01'),
    -- LSP08 Trinh thám
    ('CTPN036', 100, 50000, 5000000, 'SP0801','PN01'),
    ('CTPN037', 100, 50000, 5000000, 'SP0802','PN01'),
    ('CTPN038', 100, 50000, 5000000, 'SP0803','PN01'),
    ('CTPN039', 100, 50000, 5000000, 'SP0804','PN01'),
    ('CTPN040', 100, 50000, 5000000, 'SP0805','PN01'),
    -- LSP09 Truyện lịch sử
    ('CTPN041', 100, 50000, 5000000, 'SP0901','PN01'),
    ('CTPN042', 100, 50000, 5000000, 'SP0902','PN01'),
    ('CTPN043', 100, 50000, 5000000, 'SP0903','PN01'),
    ('CTPN044', 100, 50000, 5000000, 'SP0904','PN01'),
    ('CTPN045', 100, 50000, 5000000, 'SP0905','PN01'),
    -- LSP10 Văn học
    ('CTPN046', 100, 50000, 5000000, 'SP1001','PN01'),
    ('CTPN047', 100, 50000, 5000000, 'SP1002','PN01'),
    ('CTPN048', 100, 50000, 5000000, 'SP1003','PN01'),
    ('CTPN049', 100, 50000, 5000000, 'SP1004','PN01'),
    ('CTPN050', 100, 50000, 5000000, 'SP1005','PN01');

-- =========================
-- INVENTORY (50 PRODUCTS)
-- =========================
-- =========================
-- INVENTORY (50 PRODUCTS)
-- =========================
INSERT INTO inventory (inventory_code, quantity_on_hand, product_code, import_invoice_detail_code) VALUES
    -- LSP01 Âm nhạc
    ('KHO001',100,'SP0101','CTPN001'),
    ('KHO002',100,'SP0102','CTPN002'),
    ('KHO003',100,'SP0103','CTPN003'),
    ('KHO004',100,'SP0104','CTPN004'),
    ('KHO005',100,'SP0105','CTPN005'),
    -- LSP02 Kiến trúc
    ('KHO006',100,'SP0201','CTPN006'),
    ('KHO007',100,'SP0202','CTPN007'),
    ('KHO008',100,'SP0203','CTPN008'),
    ('KHO009',100,'SP0204','CTPN009'),
    ('KHO010',100,'SP0205','CTPN010'),
    -- LSP03 Kinh dị
    ('KHO011',100,'SP0301','CTPN011'),
    ('KHO012',100,'SP0302','CTPN012'),
    ('KHO013',100,'SP0303','CTPN013'),
    ('KHO014',100,'SP0304','CTPN014'),
    ('KHO015',100,'SP0305','CTPN015'),
    -- LSP04 Nghệ thuật
    ('KHO016',100,'SP0401','CTPN016'),
    ('KHO017',100,'SP0402','CTPN017'),
    ('KHO018',100,'SP0403','CTPN018'),
    ('KHO019',100,'SP0404','CTPN019'),
    ('KHO020',100,'SP0405','CTPN020'),
    -- LSP05 Ngôn tình
    ('KHO021',100,'SP0501','CTPN021'),
    ('KHO022',100,'SP0502','CTPN022'),
    ('KHO023',100,'SP0503','CTPN023'),
    ('KHO024',100,'SP0504','CTPN024'),
    ('KHO025',100,'SP0505','CTPN025'),
    -- LSP06 Thơ văn
    ('KHO026',100,'SP0601','CTPN026'),
    ('KHO027',100,'SP0602','CTPN027'),
    ('KHO028',100,'SP0603','CTPN028'),
    ('KHO029',100,'SP0604','CTPN029'),
    ('KHO030',100,'SP0605','CTPN030'),
    -- LSP07 Tiểu thuyết
    ('KHO031',100,'SP0701','CTPN031'),
    ('KHO032',100,'SP0702','CTPN032'),
    ('KHO033',100,'SP0703','CTPN033'),
    ('KHO034',100,'SP0704','CTPN034'),
    ('KHO035',100,'SP0705','CTPN035'),
    -- LSP08 Trinh thám
    ('KHO036',100,'SP0801','CTPN036'),
    ('KHO037',100,'SP0802','CTPN037'),
    ('KHO038',100,'SP0803','CTPN038'),
    ('KHO039',100,'SP0804','CTPN039'),
    ('KHO040',100,'SP0805','CTPN040'),
    -- LSP09 Truyện lịch sử
    ('KHO041',100,'SP0901','CTPN041'),
    ('KHO042',100,'SP0902','CTPN042'),
    ('KHO043',100,'SP0903','CTPN043'),
    ('KHO044',100,'SP0904','CTPN044'),
    ('KHO045',100,'SP0905','CTPN045'),
    -- LSP10 Văn học
    ('KHO046',100,'SP1001','CTPN046'),
    ('KHO047',100,'SP1002','CTPN047'),
    ('KHO048',100,'SP1003','CTPN048'),
    ('KHO049',100,'SP1004','CTPN049'),
    ('KHO050',100,'SP1005','CTPN050');

-- =========================
-- PRICE HISTORY (50 PRODUCTS)
-- =========================
INSERT INTO price_history (price_history_code, unit_price, product_code, import_invoice_detail_code) VALUES
-- LSP01 Âm nhạc
('LSG001',60000,'SP0101','CTPN001'),
('LSG002',60000,'SP0102','CTPN002'),
('LSG003',60000,'SP0103','CTPN003'),
('LSG004',60000,'SP0104','CTPN004'),
('LSG005',60000,'SP0105','CTPN005'),
-- LSP02 Kiến trúc
('LSG006',60000,'SP0201','CTPN006'),
('LSG007',60000,'SP0202','CTPN007'),
('LSG008',60000,'SP0203','CTPN008'),
('LSG009',60000,'SP0204','CTPN009'),
('LSG010',60000,'SP0205','CTPN010'),
-- LSP03 Kinh dị
('LSG011',60000,'SP0301','CTPN011'),
('LSG012',60000,'SP0302','CTPN012'),
('LSG013',60000,'SP0303','CTPN013'),
('LSG014',60000,'SP0304','CTPN014'),
('LSG015',60000,'SP0305','CTPN015'),
-- LSP04 Nghệ thuật
('LSG016',60000,'SP0401','CTPN016'),
('LSG017',60000,'SP0402','CTPN017'),
('LSG018',60000,'SP0403','CTPN018'),
('LSG019',60000,'SP0404','CTPN019'),
('LSG020',60000,'SP0405','CTPN020'),
-- LSP05 Ngôn tình
('LSG021',60000,'SP0501','CTPN021'),
('LSG022',60000,'SP0502','CTPN022'),
('LSG023',60000,'SP0503','CTPN023'),
('LSG024',60000,'SP0504','CTPN024'),
('LSG025',60000,'SP0505','CTPN025'),
-- LSP06 Thơ văn
('LSG026',60000,'SP0601','CTPN026'),
('LSG027',60000,'SP0602','CTPN027'),
('LSG028',60000,'SP0603','CTPN028'),
('LSG029',60000,'SP0604','CTPN029'),
('LSG030',60000,'SP0605','CTPN030'),
-- LSP07 Tiểu thuyết
('LSG031',60000,'SP0701','CTPN031'),
('LSG032',60000,'SP0702','CTPN032'),
('LSG033',60000,'SP0703','CTPN033'),
('LSG034',60000,'SP0704','CTPN034'),
('LSG035',60000,'SP0705','CTPN035'),
-- LSP08 Trinh thám
('LSG036',60000,'SP0801','CTPN036'),
('LSG037',60000,'SP0802','CTPN037'),
('LSG038',60000,'SP0803','CTPN038'),
('LSG039',60000,'SP0804','CTPN039'),
('LSG040',60000,'SP0805','CTPN040'),
-- LSP09 Truyện lịch sử
('LSG041',60000,'SP0901','CTPN041'),
('LSG042',60000,'SP0902','CTPN042'),
('LSG043',60000,'SP0903','CTPN043'),
('LSG044',60000,'SP0904','CTPN044'),
('LSG045',60000,'SP0905','CTPN045'),
-- LSP10 Văn học
('LSG046',60000,'SP1001','CTPN046'),
('LSG047',60000,'SP1002','CTPN047'),
('LSG048',60000,'SP1003','CTPN048'),
('LSG049',60000,'SP1004','CTPN049'),
('LSG050',60000,'SP1005','CTPN050');
