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
	('LSP01', 'Romance', 'Những câu chuyện tình yêu lãng mạn, đầy cảm xúc.'),
	('LSP02', 'Horror', 'Những câu chuyện kinh dị rùng rợn, ly kỳ.'),
	('LSP03', 'Fantasy', 'Thế giới kỳ ảo, phép thuật và phiêu lưu hấp dẫn.'),
	('LSP04', 'Detective', 'Những vụ án ly kỳ và hành trình phá án thông minh.'),
	('LSP05', 'Novel', 'Các tác phẩm tiểu thuyết đa dạng về đề tài và cảm xúc.'),
	('LSP06', 'Historical', 'Tác phẩm mang đậm dấu ấn lịch sử và thời đại.'),
	('LSP07', 'Literature', 'Những tác phẩm văn học kinh điển, sâu sắc.'),
	('LSP08', 'Poetry', 'Tập thơ tinh tế, chạm đến cảm xúc và tâm hồn.'),
	('LSP09', 'Art', 'Sách về nghệ thuật, hội họa và sáng tạo.'),
	('LSP10', 'Architecture', 'Tác phẩm về kiến trúc và không gian sống.');


-- =========================
-- PRODUCTS (10 CATEGORIES x 5 BOOKS = 50 BOOKS)
-- =========================
-- =========================
-- PRODUCTS (10 CATEGORIES x 5 BOOKS = 50 BOOKS)
-- =========================
INSERT INTO product (product_code, product_name, description, image, category_code) VALUES

-- LSP01 Ngôn tình - Romance
    ('SP0101','Define The Relationship - Định Rõ Mối Quan Hệ',
    'Karlyle – một Alpha lãnh cảm, vô tình hôn người lạ trong đêm giao thừa và sau này lại gặp lại anh ta. Họ đặt ra ranh giới rõ ràng, nhưng càng gần gũi, tình cảm giữa hai người càng vượt ngoài kiểm soát.',
    '/uploads/book/Romance/Romance1.jpg','LSP01'),

    ('SP0102','Vũ Khúc Đoạn Tình (Tái bản năm 2025)',
    'Evangeline phát hiện mình có phép thuật và buộc phải hợp tác với Hoàng tử Jacks trong hành trình đầy nguy hiểm, nơi tình yêu và sự sống còn cùng bị thử thách.',
    '/uploads/book/Romance/Romance2.jpg','LSP01'),

    ('SP0103','Vẫn Cứ Yêu',
    'Giang Nhẫn và Mạnh Thính – hai con người kiên cường cùng vun đắp tình yêu bền bỉ, dịu dàng giữa những tổn thương và thử thách của tuổi trẻ.',
    '/uploads/book/Romance/Romance3.jpg','LSP01'),

    ('SP0104','Khi Anh Cười, Hào Hoa Phong Nhã',
    'Cô gái đem lòng thương chàng trai phóng túng, tài hoa nhưng lạc lối. Giữa tuổi trẻ nổi loạn, cô chỉ mong giúp anh tìm lại chính mình.',
    '/uploads/book/Romance/Romance4.jpg','LSP01'),

    ('SP0105','Reminders Of Him - Hồi Ức Vụn Vỡ',
    'Sau khi ra tù, Kenna trở lại quê hương để chuộc lỗi và tìm lại con gái bị chia cắt. Trong hành trình đó, cô mở lòng với một chàng bartender bí ẩn.',
    '/uploads/book/Romance/Romance5.jpg','LSP01'),

    ('SP0106','Đuổi Theo Mùa Hạ',
    'Câu chuyện ngọt ngào giữa đôi bạn thanh mai trúc mã Trì Diệu và Lâm Chiết Hạ, cùng trưởng thành qua những mùa hè rực rỡ và rung động đầu đời.',
    '/uploads/book/Romance/Romance6.jpg','LSP01'),

    ('SP0107','Tình Yêu Đau Dạ Dày',
    'Tiêu Phàm trầm ổn và Vệ Đằng sôi nổi – hai con người trái ngược vô tình gặp nhau trong chuyến du lịch, bắt đầu mối tình ngọt ngào xen lẫn tổn thương.',
    '/uploads/book/Romance/Romance7.jpg','LSP01'),

    ('SP0108','Heart Bones - Lời Nói Dối Mùa Hè',
    'Bayeh – cô gái mang tổn thương quá khứ, gặp Samson – chàng trai giấu kín bí mật. Giữa mùa hè đầy biến cố, họ tìm thấy tình yêu và sự thật bị chôn vùi.',
    '/uploads/book/Romance/Romance8.jpg','LSP01'),

    ('SP0109','Con Dao Nhỏ Của Emiri',
    'Emiri rời phố thị về sống cùng ông ngoại sau biến cố. Giữa bình yên miền biển, cô học cách chữa lành, tìm lại chính mình và niềm tin vào cuộc sống.',
    '/uploads/book/Romance/Romance9.jpg','LSP01'),

    ('SP0110','Yêu Anh Hơn Cả Tử Thần',
    'Tiên nữ Mễ Bối bị phạt hạ phàm, gặp lại ân nhân Mạc Ngôn Hy – chàng trai mắc trọng bệnh. Nàng yêu anh, dẫu biết tình yêu ấy phải đánh đổi bằng cả sinh mệnh.',
    '/uploads/book/Romance/Romance10.jpg','LSP01'),

    ('SP0111','Phán Quan',
    'Văn Thời – vị phán quan lạc lối trong vòng luân hồi, gặp Tạ Vấn và cùng giải “lồng” để cứu những linh hồn oan khuất, dần hé mở bí mật ngàn năm bị che giấu.',
    '/uploads/book/Romance/Romance11.jpg','LSP01'),


    -- LSP02 Kinh dị - horror
    ('SP0201','Tết Ở Làng Địa Ngục',
    'Một chuyến hành trình rùng rợn đến ngôi làng bị lãng quên, nơi người sống và kẻ chết cùng tồn tại. Bí mật về lễ Tết kỳ quái dần hé lộ, kéo người đọc vào thế giới ám ảnh không lối thoát.',
    '/uploads/book/Horror/Horror1.jpg','LSP02'),

    ('SP0202','Đũa: Chuyện Linh Dị',
    'Tác phẩm hợp tác giữa các tác giả Nhật Bản, Hồng Kông và Đài Loan. Xoay quanh chiếc đũa quen thuộc nhưng chứa sức mạnh tâm linh bí ẩn của văn hóa Á Đông – nơi ranh giới giữa tâm linh và hiện thực bị xóa nhòa.',
    '/uploads/book/Horror/Horror2.jpg','LSP02'),

    ('SP0203','Ngôi Nhà Kỳ Quái',
    'Một bản vẽ nhà tưởng chừng bình thường lại ẩn chứa những chi tiết bất thường: phòng không cửa sổ, lối đi bí ẩn... Càng tìm hiểu, họ càng tiến gần đến sự thật kinh hoàng mà ngôi nhà cũ kia đang che giấu.',
    '/uploads/book/Horror/Horror3.jpg','LSP02'),

    ('SP0204','Sĩ Số Lớp Vắng 0',
    'Từ kênh “Truyện của Emma”, cuốn sách gồm 10 truyện ma học đường rùng rợn chưa từng công bố. Hồn ma học sinh, lớp học ám ảnh và những bí mật đen tối nơi sân trường – tất cả khiến người đọc lạnh sống lưng.',
    '/uploads/book/Horror/Horror4.jpg','LSP02'),

    ('SP0205','Đôi Mắt Trũng Sâu',
    'Một năm sau cái chết của con trai, Tina phát hiện dòng chữ “CHƯA CHẾT” bí ẩn trên bảng đen. Hành trình tìm sự thật dẫn cô qua những nơi tăm tối nhất, để đối mặt với bí mật khủng khiếp bị che giấu bấy lâu.',
    '/uploads/book/Horror/Horror5.jpg','LSP02'),

    ('SP0206','Những Đồ Vật Có Linh Hồn',
    'Mười câu chuyện kể về những vật dụng đời thường – chiếc lược, con búp bê, điếu thuốc – chứa linh hồn người đã khuất. Không cường điệu, không máu me, nhưng chân thật đến rợn người và chan chứa nhân văn.',
    '/uploads/book/Horror/Horror6.jpg','LSP02'),

    ('SP0207','Bức Họa Múa Rối Xương',
    'Bảy thiếu niên khám phá bí ẩn sau chuỗi cái chết trên tàu lượn. Khi cánh cửa rỉ sét mở ra, họ bước vào trò chơi sinh tử, nơi chỉ cần một sai lầm nhỏ là mất mạng.',
    '/uploads/book/Horror/Horror7.jpg','LSP02'),

    ('SP0208','Tứ Trấn Huyền Linh',
    'Tĩnh – sinh viên trường Y – vô tình bị ám bởi bản sao của chính mình. Bị cuốn vào thế giới tâm linh huyền ảo, anh phải dựa vào sức mạnh của Tứ Trấn Thăng Long để hóa giải lời nguyền đáng sợ kia.',
    '/uploads/book/Horror/Horror8.jpg','LSP02'),

    ('SP0209','Bóng Trăng Trắng Ngà',
    'Tình bạn giữa hai đứa trẻ – Bảo và cô bé Chi – dần biến thành cơn ác mộng. Từ những câu hát ma mị đến cái chết bí ẩn, tất cả dẫn Bảo đến sự thật đau đớn và ám ảnh không thể quên.',
    '/uploads/book/Horror/Horror9.jpg','LSP02'),

    ('SP0210','Cốt Toái',
    'Một bản hồ sơ rợn gáy ghi lại chuỗi hiện tượng ma quái trong đời sống thường nhật. Khi theo chân người kể chuyện, độc giả dần nhận ra ranh giới giữa người quan sát và nạn nhân đã biến mất từ lúc nào.',
    '/uploads/book/Horror/Horror10.jpg','LSP02'),

    ('SP0211','17 Âm 1',
    'Lớp 12D4 có một học sinh vắng mặt vĩnh viễn. Khi Duy Lâm được giao nhiệm vụ trả lại mảnh thi thể về hồ An Yên, cậu dấn thân vào hành trình kinh hoàng, nơi mỗi bước tiến là một mảnh sự thật được khơi lên.',
    '/uploads/book/Horror/Horror11.jpg','LSP02'),


-- LSP03 Viễn tưởng - Fantasy
    ('SP0301','Xứ Tháng Mười',
    'Thế giới linh hồn huyền ảo của Ray Bradbury, nơi những nỗi kinh hoàng và ký ức đen tối ẩn sâu trong con người được đánh thức. 19 câu chuyện kỳ dị đưa người đọc vào hành trình khám phá ranh giới giữa mộng và thực.',
    '/uploads/book/Fantasy/Fantasy1.jpg','LSP03'),

    ('SP0302','Trường Ca Achilles',
    'Câu chuyện bi tráng về Achilles và Patroclus – hai chiến binh Hy Lạp giữa chiến trường thành Troy. Tình yêu, danh dự và định mệnh giao hòa trong bản trường ca đầy cảm xúc và bi thương.',
    '/uploads/book/Fantasy/Fantasy2.jpg','LSP03'),

    ('SP0303','Combo Harry Potter (Bộ 7 cuốn)',
    'Hành trình từ cậu bé mồ côi đến phù thủy huyền thoại. Harry Potter bước vào thế giới phép thuật kỳ diệu, đối đầu Chúa tể Hắc ám và khám phá sức mạnh tiềm ẩn của tình bạn, dũng cảm và niềm tin.',
    '/uploads/book/Fantasy/Fantasy3.jpg','LSP03'),

    ('SP0304','Biên Niên Ký Sao Hỏa',
    'Một kiệt tác của Ray Bradbury về cuộc di cư của loài người lên Sao Hỏa – nơi ảo mộng và thực tại đan xen. Không chỉ là viễn tưởng, đây còn là bản suy ngẫm sâu sắc về nhân loại và khát vọng tự do.',
    '/uploads/book/Fantasy/Fantasy4.jpg','LSP03'),

    ('SP0305','Cái Chết Của Những Xác Sống - Tập 1',
    'Khi người chết sống lại, ranh giới giữa sự sống và cái chết bị xóa nhòa. Grin trở về từ cõi chết để khám phá bí mật đen tối đằng sau cuộc tranh chấp tài sản và những án mạng kinh hoàng tại thị trấn Tombsville.',
    '/uploads/book/Fantasy/Fantasy5.jpg','LSP03'),

    ('SP0306','Hòn Đá Mù - Medusa: Những Chuyện Chưa Kể',
    'Một góc nhìn mới về Medusa – quái vật trong thần thoại Hy Lạp. Đằng sau ánh nhìn hóa đá là một số phận bị nguyền rủa, một linh hồn khao khát được yêu thương và thấu hiểu.',
    '/uploads/book/Fantasy/Fantasy6.jpg','LSP03'),

    ('SP0307','Cựu Tộc - Quyển 1: Huyền Thoại Về Rồng Tuyết',
    'Hành trình kỳ ảo của San Gracie trong thế giới giả tưởng đậm bản sắc Việt. Câu chuyện về tình bạn, lòng dũng cảm và khát vọng khám phá – mang đậm hơi thở văn hóa dân tộc.',
    '/uploads/book/Fantasy/Fantasy7.jpg','LSP03'),

    ('SP0308','Hội Bàn Tròn Ma Thuật - Tập 1: Legendborn',
    'Bree Matthews – cô gái 16 tuổi xâm nhập vào hội kín ma thuật để điều tra cái chết bí ẩn của mẹ mình. Cuộc phiêu lưu đưa cô đến gần hơn với sự thật, sức mạnh tiềm ẩn và di sản cổ xưa của Vua Arthur.',
    '/uploads/book/Fantasy/Fantasy8.jpg','LSP03'),

    ('SP0309','Thế Giới Atlantis',
    'Một tín hiệu bí ẩn từ vũ trụ và cuộc chạy đua sinh tồn của nhân loại. Tiến sĩ Kate Warner cùng cộng sự khám phá di sản thất lạc của nền văn minh Atlantis – nơi ẩn giấu sự thật vượt ngoài trí tưởng tượng.',
    '/uploads/book/Fantasy/Fantasy9.jpg','LSP03'),

    ('SP0310','Fourth Wing - Cánh Tư',
    'Tại học viện quân sự huấn luyện kỵ sĩ rồng, Violet Sorrengail phải chiến đấu để sinh tồn. Cô yếu đuối nhưng thông minh, dấn thân vào thế giới nơi rồng chỉ gắn kết với những chiến binh xứng đáng.',
    '/uploads/book/Fantasy/Fantasy10.jpg','LSP03'),

    ('SP0311','Kẻ Canh Gác Bầu Trời - Những Chân Trời Đã Mất',
    'Sau hàng loạt vụ mất tích bí ẩn, Linh Phong phát hiện ra bí mật về một thế giới song song. Cuộc hành trình tìm cha cô dần trở thành chuyến du hành vượt qua giới hạn của thực tại và niềm tin con người.',
    '/uploads/book/Fantasy/Fantasy11.jpg','LSP03'),


-- LSP04 Trinh thám - Detective
    ('SP0401','Ghi Chép Pháp Y - Những Thi Thể Không Hoàn Chỉnh',
    'Phần thứ 3 trong series đình đám “Ghi chép pháp y”, gồm 7 vụ án có thật được bác sĩ pháp y Lưu Bát Bách ghi lại sau 18 năm kinh nghiệm, hé lộ những hiện trường tội ác man rợ và tâm lý biến thái ẩn giấu sau bộ mặt bình thản của hung thủ.',
    '/uploads/book/Detective/Detective1.jpg','LSP04'),

    ('SP0402','Tội Ác Liên Hoàn - Tập 1: Ván Bài Đô Mi Nô',
    'Một chuỗi án mạng kỳ lạ liên tiếp xảy ra, như hiệu ứng đô mi nô nối liền nhau. Cảnh sát Tần Hướng Dương bị cuốn vào “ván bài” đầy cạm bẫy, nơi ranh giới giữa thiện và ác trở nên mờ nhạt.',
    '/uploads/book/Detective/Detective2.jpg','LSP04'),

    ('SP0403','Sự Thật Bị Che Khuất',
    'Một vụ án tưởng chừng đơn giản lại ẩn chứa những tầng lớp chân tướng phức tạp. Khi công lý, chính nghĩa và lòng người đều bị thử thách, sự thật liệu có bao giờ được phơi bày?',
    '/uploads/book/Detective/Detective3.jpg','LSP04'),

    ('SP0404','Bàn Tròn Trí Mạng (Bộ 2 tập)',
    'Một trò chơi chết chóc mở ra, nơi người chơi dùng chính tính mạng để đánh đổi ước vọng. Bí mật, máu và sự sống đan xen trong hành trình tìm lại chân tướng đằng sau “bàn tròn” quỷ dị.',
    '/uploads/book/Detective/Detective4.jpg','LSP04'),

    ('SP0405','Nhân Chứng Cuối Cùng',
    'Pippa, một nữ sinh trung học, quyết định điều tra lại vụ án giết người tưởng chừng đã khép lại 5 năm trước để minh oan cho người bị buộc tội. Nhưng sự thật càng đến gần, cô càng đối mặt với hiểm nguy.',
    '/uploads/book/Detective/Detective5.jpg','LSP04'),

    ('SP0406','8 Vụ Án Hoàn Hảo - Vạch Trần Tâm Lý Kẻ Phạm Tội',
    'Một đặc vụ FBI truy tìm kẻ giết người hàng loạt đang tái hiện những vụ án từ danh sách “8 vụ giết người hoàn hảo”. Mỗi manh mối đều đan xen giữa thực tại và ám ảnh tâm lý của con người.',
    '/uploads/book/Detective/Detective6.jpg','LSP04'),

    ('SP0407','Sherlock Holmes: Tuyển Tập Những Vụ Án Hóc Búa Nhất',
    'Tập hợp những vụ án kinh điển nhất của Sherlock Holmes – “cỗ máy suy luận hoàn hảo” của văn học trinh thám, với các màn phá án sắc bén và đầy kịch tính.',
    '/uploads/book/Detective/Detective7.jpg','LSP04'),

    ('SP0408','Mindhunter - Kẻ Săn Suy Nghĩ',
    'Dựa trên ghi chép thật của đặc vụ FBI John E. Douglas – người khai sinh lĩnh vực phân tích tâm lý tội phạm, hé lộ những cuộc đối đầu với các sát nhân hàng loạt khét tiếng nhất thế kỷ.',
    '/uploads/book/Detective/Detective8.jpg','LSP04'),

    ('SP0409','Cô Hầu Gái',
    'Một người phụ nữ tìm việc làm tại gia đình Winchester tưởng chừng hoàn hảo, nhưng rồi nhận ra căn nhà ẩn giấu những bí mật chết người – và chính cô cũng không hề vô tội.',
    '/uploads/book/Detective/Detective9.jpg','LSP04'),

    ('SP0410','Hải Quỳ',
    'Ba vụ việc tưởng chừng không liên quan: một đứa trẻ mất tích, một người giấu xác cha mình, và một cô gái bị tấn công – tất cả đan xen thành một bí ẩn kinh hoàng khó giải.',
    '/uploads/book/Detective/Detective10.jpg','LSP04'),

    ('SP0411','Thiên Thần Và Ác Quỷ (Tái bản 2023)',
    'Giáo sư Langdon bị cuốn vào âm mưu giữa Giáo hội và hội kín Illuminati, cùng cuộc chạy đua với thời gian để ngăn chặn thảm họa tại thành Rome.',
    '/uploads/book/Detective/Detective11.jpg','LSP04'),


-- LSP05 Tiểu thuyết - Novel
    ('SP0501','Nếu Gặp Lại Em Trên Ngọn Đồi Hoa Nở',
    'Yuri – cô gái lớp 8 xuyên không về Nhật Bản 70 năm trước, gặp chàng phi công Akira. Tình yêu nảy nở giữa chiến tranh, vượt qua ranh giới thời gian và cái chết.',
    '/uploads/book/Novel/Novel1.jpg','LSP05'),

	('SP0502','Hôn Nhân Hạnh Phúc Của Tôi',
    'Miyo bị ép gả cho vị quân nhân tàn nhẫn Kiyoka. Tưởng như bi kịch, nhưng dần dần, giữa hai người lại nảy sinh một tình yêu chân thành và hạnh phúc.',
    '/uploads/book/Novel/Novel2.jpg','LSP05'),

	('SP0503','Đêm Nay Dẫu Tình Yêu Này Biến Mất Khỏi Thế Gian',
    'Câu chuyện tình buồn giữa chàng trai và cô gái mắc chứng quên thuận chiều – mỗi sáng tỉnh dậy đều quên hết ký ức của ngày hôm qua.',
    '/uploads/book/Novel/Novel3.jpg','LSP05'),

	('SP0504','Hội Chứng Tuổi Thanh Xuân',
    'Những câu chuyện kỳ lạ xảy ra với Sakuta và Mai – nơi các rắc rối tâm lý tuổi trẻ được thể hiện bằng những hiện tượng siêu nhiên.',
    '/uploads/book/Novel/Novel4.jpg','LSP05'),

	('SP0505','Thiên Sứ Nhà Bên',
    'Chuyện tình ngọt ngào giữa Amane và Mahiru – cô gái hoàn hảo ở nhà bên, cùng nhau vượt qua sự ngượng ngùng để tìm đến hạnh phúc.',
    '/uploads/book/Novel/Novel5.jpg','LSP05'),

	('SP0506','Chúa Tể Bóng Tối',
    'Một chàng trai mơ ước trở thành “Chúa tể bóng tối”, vô tình lập nên giáo phái thật sự khi chuyển sinh sang thế giới khác.',
    '/uploads/book/Novel/Novel6.jpg','LSP05'),

	('SP0507','Dược Sư Tự Sự',
    'Miêu Miêu, cựu cung nữ tài giỏi, tiếp tục bị cuốn vào hàng loạt vụ án bí ẩn trong triều đình, nơi âm mưu và dối trá ẩn sau lớp bình yên giả tạo.',
    '/uploads/book/Novel/Novel7.jpg','LSP05'),

	('SP0508','Tôi Muốn Bảo Vệ Cậu, Dù Phải Mất Đi... Tình Yêu Này',
    'Câu chuyện nhẹ nhàng giữa Moeka – cô gái nói lắp nhút nhát và Terumichi – cậu học sinh tươi sáng mang những vết thương lòng sâu kín.',
    '/uploads/book/Novel/Novel8.jpg','LSP05'),

	('SP0509','Thám Tử Đã Chết',
    'Kimizuka – chàng học sinh “hút rắc rối” – trở thành trợ thủ của nữ thám tử thiên tài Siesta. Sau khi cô chết, bí ẩn về cô vẫn tiếp diễn.',
    '/uploads/book/Novel/Novel9.jpg','LSP05'),

	('SP0510','Arya Bàn Bên Thỉnh Thoảng Lại Trêu Ghẹo Tôi Bằng Tiếng Nga',
    'Chuyện tình học đường dễ thương giữa Arya xinh đẹp và Masachika trong chuyến du lịch mùa hè đầy kỷ niệm và rung động đầu đời.',
    '/uploads/book/Novel/Novel10.jpg','LSP05'),

	('SP0511','Nguyệt Đạo Dị Giới',
    'Makoto bị kéo vào cuộc chiến giữa loài người và ma tộc ở thế giới khác, nơi sức mạnh và ý chí của cậu dần được hé lộ.',
    '/uploads/book/Novel/Novel11.jpg','LSP05'),


-- LSP06 Truyện lịch sử - Historical
    ('SP0601','Thắng Pháp Trên Bầu Trời Điện Biên Phủ',
    'Tác giả Lưu Trọng Lân kể lại ký ức chiến đấu tại Điện Biên Phủ – nơi bộ đội cao xạ 367 đã đánh bại không quân Pháp, góp phần làm nên chiến thắng lừng lẫy năm châu.',
    '/uploads/book/Historical/Historical1.jpg','LSP06'),

	('SP0602','Hồ Xuân Hương',
    'Tiểu thuyết tiểu sử về nữ sĩ Hồ Xuân Hương – người phụ nữ tài hoa, mạnh mẽ và lạc quan, biểu tượng của khát vọng tự do và tình yêu cuộc sống.',
    '/uploads/book/Historical/Historical2.jpg','LSP06'),

	('SP0603','Hoan Châu Ký - Thiên Nam Liệt Truyện (Tái bản năm 2024)',
    'Tác phẩm dã sử quý hiếm của dòng họ Nguyễn Cảnh, phản ánh thời kỳ Lê Trung Hưng, vừa mang giá trị lịch sử, vừa là cột mốc của tiểu thuyết chương hồi Việt Nam.',
    '/uploads/book/Historical/Historical3.jpg','LSP06'),

	('SP0604','Bốn Năm Sau Và Những Trang Viết Về Điện Biên',
    'Gồm tiểu thuyết “Bốn năm sau” và nhật ký, thư từ của Nguyễn Huy Tưởng trong hành trình tái thiết Điện Biên – một tư liệu quý về thời hậu chiến.',
    '/uploads/book/Historical/Historical4.jpg','LSP06'),

	('SP0605','Tước Gấm Giấu Đay (Bìa mềm)',
    'Tập truyện ngắn dã sử kể về những người phụ nữ trong triều đình Việt Nam xưa – pha trộn yếu tố cung đấu, linh dị và tâm lý đầy bất ngờ.',
    '/uploads/book/Historical/Historical5.jpg','LSP06'),

	('SP0606','Ngự Tiền Quan Án - Đại Án Quảng Nam',
    'Tiểu thuyết trinh thám dã sử lấy bối cảnh triều Nguyễn, xoay quanh vụ án tham nhũng chấn động tại Quảng Nam thời vua Tự Đức.',
    '/uploads/book/Historical/Historical6.jpg','LSP06'),

	('SP0607','Nước Non Vạn Dặm 3 - Từ Việt Bắc Về Hà Nội',
    'Tập 3 trong bộ sử thi “Nước non vạn dặm” của Nguyễn Thế Kỷ, kể hành trình Bác Hồ từ Việt Bắc trở về Hà Nội, lập nên nước Việt Nam Dân chủ Cộng hòa.',
    '/uploads/book/Historical/Historical7.jpg','LSP06'),

	('SP0608','Ấn Kiếm Hồng Nhan',
    'Dựa trên sự kiện vua Lê Thánh Tông băng hà, hai báu vật biến mất – câu chuyện tái hiện thời Lê đầy biến động, ngai vàng năm lần đổi chủ.',
    '/uploads/book/Historical/Historical8.jpg','LSP06'),

	('SP0609','Hoàng Lê Nhất Thống Chí',
    'Tác phẩm kinh điển ghi lại biến cố cuối thế kỷ XVIII – từ loạn kiêu binh đến chiến thắng quân Thanh, ca ngợi người anh hùng áo vải Nguyễn Huệ.',
    '/uploads/book/Historical/Historical9.jpg','LSP06'),

	('SP0610','Như Sơ',
    'Chuyện tình cảm động giữa Trần Quang Khải và Phụng Dương công chúa – cuộc hôn nhân “cưới trước yêu sau” đầy hy sinh và thủy chung.',
    '/uploads/book/Historical/Historical10.jpg','LSP06'),

	('SP0611','Trần Triều Nhàn Thoại',
    'Tuyển tập truyện ngắn lấy cảm hứng từ thời Trần – kể những câu chuyện nhỏ về tình thân, lý tưởng và trách nhiệm với giang sơn.',
    '/uploads/book/Historical/Historical11.jpg','LSP06'),


-- LSP07 Văn học đương đại
    ('SP0701','Khó Dỗ Dành',
    'Ôn Dĩ Phàm và Tang Diên từng là bạn học, hai người tình cờ gặp lại nhau trong một quán bar, sau đó lại tình cờ trở thành bạn thuê trọ chung. Chuyện cũng chẳng có gì nếu như hồi còn đi học Ôn Dĩ Phàm chưa từng... từ chối tình cảm của Tang Diên. Thật ra Tang Diên là một người rất cộc cằn, anh có thể gây sát thương bằng lời nói với bất kỳ ai, nhưng anh lại vô cùng dịu dàng với Ôn Dĩ Phàm. Yêu thầm cô suốt sáu năm, tìm đủ mọi cách để lưu giữ hình ảnh của cô trong những năm tháng xa cách... Kể cả khi bị cô từ chối, anh vẫn âm thầm dõi theo cô từ xa. Còn về Ôn Dĩ Phàm, vì những tổn thương trong quá khứ mà cô luôn cảm thấy mình không xứng với Tang Diên - một chàng trai quá đỗi đẹp đẽ. Gặp lại sau sáu năm, cô quyết định sẽ không bỏ lỡ Tang Diên lần nữa...',
    '/uploads/book/Literature/Literature1.jpg','LSP07'),

	('SP0702','Nếu Gặp Lại Em Trên Ngọn Đồi Hoa Nở',
    'Mối lương duyên vượt thời gian. Dù không bao giờ gặp lại, kỷ niệm vẫn khắc sâu trong trái tim. Yuri, một nữ sinh lớp 8, đã xuyên không về Nhật Bản 70 năm trước và gặp Akira - một phi công cảm tử. Giữa họ nảy sinh tình cảm, nhưng chiến tranh đã chia lìa hai người. Một chuyện tình vừa mong manh vừa bất tử giữa chiến tranh và thời gian.',
    '/uploads/book/Literature/Literature2.jpg','LSP07'),

	('SP0703','Những Chiếc Cầu Ở Quận Madison (Tái bản năm 2022)',
    'Câu chuyện tình ngắn ngủi giữa nhiếp ảnh gia Robert Kincaid và Francesca – người phụ nữ đã có gia đình. Chỉ trong 4 ngày ngắn ngủi, họ sống trọn một tình yêu đủ cho cả đời. Một tác phẩm day dứt, ám ảnh và sâu sắc về định mệnh, tình yêu và sự hy sinh.',
    '/uploads/book/Literature/Literature3.jpg','LSP07'),

	('SP0704','Lưỡng Giới (Giải Pulitzer 2003)',
    'Middlesex là câu chuyện kéo dài ba thế hệ của một gia đình Hy Lạp di cư sang Mỹ. Nhân vật chính, Calliope Stephanides, sinh ra là nữ nhưng sau này phát hiện giới tính thật của mình. Một tiểu thuyết vĩ đại về bản dạng, di sản và hành trình tìm kiếm chính mình.',
    '/uploads/book/Literature/Literature4.jpg','LSP07'),

	('SP0705','Điều Kỳ Diệu Của Tiệm Tạp Hóa Namiya (Tái bản năm 2018)',
    'Ba tên trộm trẻ tuổi lạc vào một tiệm tạp hóa cũ và bất ngờ bị cuốn vào những bức thư kỳ lạ gửi đến từ quá khứ. Keigo Higashino khéo léo đan xen thời gian và không gian, tạo nên câu chuyện cảm động về lòng tốt, sự chuộc lỗi và niềm tin vào con người.',
    '/uploads/book/Literature/Literature5.jpg','LSP07'),

	('SP0706','Người Đẹp Ngủ Mê (Tái bản năm 2023)',
    'Một tiểu thuyết u huyền của Kawabata Yasunari. Ông lão Eguchi đến một ngôi nhà nơi những cô gái trẻ ngủ say trong vô thức, và ông chỉ có thể ngắm nhìn họ trong bóng tối. Một tác phẩm về sự cô độc, dục vọng và cái chết, mang đậm chất thơ và ám ảnh.',
    '/uploads/book/Literature/Literature6.jpg','LSP07'),

	('SP0707','Chiến Binh Cầu Vồng',
    'Câu chuyện cảm động về nhóm học sinh nghèo ở Indonesia và người thầy tận tụy của họ. Giữa nghèo khó, định kiến và hiểm nguy, họ vẫn không ngừng mơ ước và chiến đấu vì tri thức. Một bức tranh sâu sắc về lòng kiên cường và giá trị của giáo dục.',
    '/uploads/book/Literature/Literature7.jpg','LSP07'),

	('SP0708','Gã Du Đãng Chúng Ta Đang Lùng Kiếm',
    'Một lát cắt dữ dội và chân thực về cuộc sống của thế hệ người Việt tại Mỹ sau chiến tranh. Tác phẩm khắc họa nỗi đau di dân, ký ức chiến tranh và hành trình tìm lại bản sắc qua những mảnh ghép gia đình đầy thương tổn.',
    '/uploads/book/Literature/Literature8.jpg','LSP07'),

	('SP0709','Đêm Nay Dẫu Tình Yêu Này Biến Mất Khỏi Thế Gian',
    'Một câu chuyện tình nhẹ nhàng mà day dứt về chàng trai mắc chứng quên thuận chiều và cô gái tên Hino. Mỗi ngày, tình yêu của họ được viết lại từ đầu — một bản tình ca ngắn ngủi nhưng sâu đậm, về ký ức và yêu thương.',
    '/uploads/book/Literature/Literature9.jpg','LSP07'),

	('SP0710','Thoát Đến Phương Tây',
    'Nadia và Saeed yêu nhau giữa bối cảnh đất nước chìm trong nội chiến. Họ vượt qua những cánh cửa kỳ bí để tìm tự do và hy vọng. Một tiểu thuyết đậm chất hiện thực pha yếu tố kỳ ảo, ca ngợi tình người giữa hỗn loạn thời đại.',
    '/uploads/book/Literature/Literature10.jpg','LSP07'),

	('SP0711','Truyện Kiều Văn Xuôi: Dành Cho Người Trẻ (Tái bản năm 2022)',
    'Phiên bản văn xuôi của Truyện Kiều, giúp người trẻ dễ dàng tiếp cận và cảm nhận vẻ đẹp của kiệt tác văn học Việt Nam. Một lời mời gọi trở về với tinh hoa văn hóa dân tộc qua góc nhìn mới mẻ và gần gũi.',
    '/uploads/book/Literature/Literature11.jpg','LSP07'),


-- LSP08 Thơ văn - Poetry
    ('SP0801','Tục Ngữ, Ca Dao, Dân Ca Việt Nam',
    'Tác phẩm sưu tầm và nghiên cứu đồ sộ, tập hợp tinh hoa tục ngữ, ca dao, dân ca của các dân tộc Việt Nam. Đây là những viên ngọc quý trong kho tàng văn học dân gian, phản ánh đời sống, lao động và tâm hồn nhân dân qua bao thế hệ.',
    '/uploads/book/Poetry/Poetry1.jpg','LSP08'),

	('SP0802','Ai Tưới Tình Để Hồn Thơ Lén Nở',
    'Tập thơ chứa đựng những cung bậc cảm xúc của tình yêu – hạnh phúc, nuối tiếc và cô đơn. Những vần thơ dịu dàng, sâu lắng, dành cho những tâm hồn từng yêu, từng thương và vẫn đang tìm kiếm bình yên trong chính mình.',
    '/uploads/book/Poetry/Poetry2.jpg','LSP08'),

	('SP0803','Vườn Tôi Có Cây Lá Bình Yên',
    'Một tập thơ thiền nhẹ nhàng của Winlinh, mang đến sự an yên và chiêm nghiệm về cuộc đời. Những vần thơ dung dị, mộc mạc giúp người đọc tìm thấy góc bình yên trong tâm hồn giữa cuộc sống bộn bề.',
    '/uploads/book/Poetry/Poetry3.jpg','LSP08'),

	('SP0804','Tặng Người, Người Ấy Em Thương',
    'Tập thơ thứ hai của tác giả Dưa – tiếng lòng của một cô gái yêu đơn phương, gửi gắm nỗi nhớ, sự thổn thức và tình yêu không thể nói thành lời. Những câu thơ mang âm hưởng dịu dàng, gần gũi và chân thật.',
    '/uploads/book/Poetry/Poetry4.jpg','LSP08'),

	('SP0805','Cảm Ơn Bạn Đã Không Từ Bỏ Chính Mình',
    'Những vần thơ chữa lành, sẻ chia và động viên tinh thần dành cho những ai đang đi qua khó khăn. Một lời tri ân, một cái ôm dịu dàng gửi đến chính mình – người đã không ngừng kiên cường và yêu thương cuộc sống.',
    '/uploads/book/Poetry/Poetry5.jpg','LSP08'),

	('SP0806','Thanh Xuân Là Gì Em Nhỉ?',
    'Tập thơ gợi lại dư vị thanh xuân – trong sáng, vụng dại nhưng cũng đầy cảm xúc. Những trang thơ như một tách trà hoài niệm, khiến ta mỉm cười khi nhớ lại một thời tuổi trẻ đầy sắc màu và chân thành.',
    '/uploads/book/Poetry/Poetry6.jpg','LSP08'),

	('SP0807','Không Sao Mà, Chúng Ta Rồi Sẽ Ổn',
    'Một tập thơ an ủi, tiếp thêm sức mạnh cho những tâm hồn đang tổn thương. Giọng thơ giản dị, ấm áp như một lời thì thầm: dù bão giông có đến, rồi mọi chuyện cũng sẽ ổn thôi.',
    '/uploads/book/Poetry/Poetry7.jpg','LSP08'),

	('SP0808','Người Con Gái Ta Thương',
    'Những vần thơ trĩu nặng cảm xúc về yêu thương, chia xa và những mối duyên dang dở. Một góc nhìn chân thực và sâu sắc về tình yêu, về sự thấu hiểu và cả những im lặng đầy tổn thương.',
    '/uploads/book/Poetry/Poetry8.jpg','LSP08'),

	('SP0809','Thơ Từng Ôm Và Mặt Trời Từng Hạt',
    'Bộ thơ của Thiền sư Thích Nhất Hạnh – dung dị mà sâu sắc. Mỗi bài thơ là một bài học về tình thương, tuệ giác và lòng từ bi, chạm đến trái tim người đọc bằng ánh sáng của sự tỉnh thức.',
    '/uploads/book/Poetry/Poetry9.jpg','LSP08'),

	('SP0810','Như Sao Trời Ôm Lấy Đại Dương',
    'Tập thơ đầu tay của Hngoc, chia làm hai phần: Yêu mình – Yêu người. Những vần thơ trong trẻo, lấp lánh khát vọng sống và yêu, khơi dậy niềm tin vào bản thân và vào những điều tốt đẹp quanh ta.',
    '/uploads/book/Poetry/Poetry10.jpg','LSP08'),

	('SP0811','An (Thơ @yenlamtho)',
    'Tập thơ dịu dàng và chữa lành của tác giả @yenlamtho, gửi gắm thông điệp sống an yên, yêu thương và biết ơn cuộc đời. Mỗi vần thơ là một lời nhắn gửi về lòng kiên định và sự dịu dàng với chính mình.',
    '/uploads/book/Poetry/Poetry11.jpg','LSP08'),


-- LSP09 Nghệ thuật - Art
    ('SP0901','Tranh Dân Gian Việt Nam: Sưu Tầm Và Nghiên Cứu',
    'Tranh dân gian Việt Nam được làm và bán lẻ vào mỗi dịp Tết, các dịp lễ trọng đại hoặc dành cho nghi thức tôn giáo hay đơn giản chỉ là thú tiêu khiển trong gia đình. Là loại tranh thủ công, tranh dân gian vừa phụ thuộc vào các mẫu tranh thịnh hành nhưng đồng thời cũng để lại dấu ấn sâu sắc do tính độc đáo của những nghệ nhân sáng tạo ra chúng. Maurice Durand đã sưu tầm và giới thiệu bộ tranh dân gian với nhiều kiểu tranh đa dạng và các chủ đề về cuộc sống thường nhật, tín ngưỡng, văn học và lịch sử. Công trình Tranh dân gian Việt Nam được in màu, chỉnh sửa, bổ sung và tái bản lần này có nguyện vọng cung cấp cho độc giả một cuốn sách hấp dẫn, tiện dụng trong việc tra cứu với khuôn khổ hoành tráng và được bố cục lại theo trình tự hợp lý.',
    '/uploads/book/Art/Art10.jpg','LSP09'),


    ('SP0902','Để hiểu nghệ thuật','Để hiểu nghệ thuật của Janetta Rebold Benton nằm trong bộ sách công cụ giúp hiểu nghệ thuật trong tầm tay của Omega+, được mua bản quyền từ Thames & Hudson. Cuốn sách cung cấp cái nhìn tổng quan, dễ hiểu và trực quan về các nguyên tắc cơ bản trong nghệ thuật thị giác, giúp độc giả tư duy về nghệ thuật một cách cẩn thận, tò mò và mang tính phê bình.',
    '/uploads/book/Art/Art2.jpg','LSP09'),

    ('SP0903','Xem Tranh',
    '“Xem tranh” của Susan Woodford giúp người đọc phân tích nguồn gốc, thiết kế và chủ đề của hơn 100 bức tranh từ nhiều thời kỳ và vùng đất khác nhau. Cuốn sách khơi dậy sự tò mò, giúp độc giả hiểu sâu hơn về cái đẹp ẩn giấu trong từng tác phẩm nghệ thuật.',
    '/uploads/book/Art/Art3.jpg','LSP09'),

    ('SP0904','Theo Dòng Lịch Sử Nghệ Thuật',
    'Một bản tổng kết các trào lưu nghệ thuật chủ đạo, những phong cách sáng tạo nổi bật, các nghệ sĩ tiêu biểu và các kiệt tác trong hội họa, điêu khắc, kiến trúc, âm nhạc. Cuốn sách mở ra hành trình xuyên suốt lịch sử nghệ thuật thế giới với kiến thức dễ tiếp cận và giàu cảm hứng.',
    '/uploads/book/Art/Art4.jpg','LSP09'),

    ('SP0905','Nghệ Thuật Với Thị Giác',
    '“Nghệ Thuật Với Thị Giác” của Bates Lowry là hành trình khám phá cách con người cảm nhận nghệ thuật bằng cả tâm hồn. Tác giả phân tích những yếu tố ảnh hưởng đến cảm xúc thẩm mỹ và cách nghệ thuật định hình xã hội, giúp người đọc mở rộng tầm nhìn sáng tạo.',
    '/uploads/book/Art/Art5.jpg','LSP09'),

    ('SP0906','Dẫn Luận Về Lịch Sử Nghệ Thuật',
    'Dana Arnold giới thiệu các phương pháp, tranh biện và góc nhìn đa dạng giúp hiểu sâu hơn về lịch sử nghệ thuật. Cuốn sách là một dẫn nhập quý giá và dễ tiếp cận cho bất kỳ ai muốn bắt đầu hành trình tìm hiểu nghệ thuật nhân loại.',
    '/uploads/book/Art/Art6.jpg','LSP09'),

    ('SP0907','Mỹ Thuật Huế - Nhìn Từ Góc Độ Ý Nghĩa Và Biểu Tượng Trang Trí',
    'Một công trình nghiên cứu sâu sắc về nghệ thuật truyền thống Huế – nơi hội tụ tinh hoa văn hóa và tâm linh dân tộc. Cuốn sách khai thác ý nghĩa biểu tượng, màu sắc, và sự tinh tế trong từng chi tiết mỹ thuật, thể hiện bản sắc văn hóa độc đáo của vùng đất cố đô.',
    '/uploads/book/Art/Art7.jpg','LSP09'),

    ('SP0908','Câu Chuyện Nghệ Thuật',
    'Một cuốn sách đồ sộ trình bày lịch sử nghệ thuật qua hơn 700 nghệ sĩ và 2.500 kiệt tác. Độc giả sẽ được khám phá quá trình phát triển của các trào lưu nghệ thuật, hiểu vì sao mỗi tác phẩm lại trở thành biểu tượng của thời đại và rung động lòng người.',
    '/uploads/book/Art/Art8.jpg','LSP09'),

    ('SP0909','Vẻ Đẹp Của Những Vật Dụng Hàng Ngày',
    'Soetsu Yanagi – triết gia và người tiên phong trong phong trào thủ công dân gian Nhật Bản – chia sẻ quan điểm về vẻ đẹp của những vật dụng bình dị. Tác phẩm khuyến khích con người trân trọng những điều giản đơn, gắn bó với thế giới quanh mình bằng lòng yêu thương và tôn trọng.',
    '/uploads/book/Art/Art9.jpg','LSP09'),

    ('SP0910','Nghệ Thuật Không Chỉ Để Ngắm',
    'Một góc nhìn mới mẻ về nghệ thuật qua liệu pháp Trị liệu Nghệ thuật (Art Therapy). Cuốn sách lý giải cách nghệ thuật kết nối con người, chữa lành tâm hồn và khơi nguồn cảm hứng sống, qua các tác phẩm của hơn 70 nghệ sĩ nổi tiếng.',
    '/uploads/book/Art/Art10.jpg','LSP09'),

    ('SP0911','How Art Works - Hiểu Hết Về Nghệ Thuật',
    'Một cuốn sách trực quan, dễ hiểu và đầy đủ nhất dành cho người mới bắt đầu làm quen với nghệ thuật. Từ luật phối cảnh, trường phái ấn tượng đến cách cảm nhận và phân tích tác phẩm, cuốn sách giúp bạn hiểu nghệ thuật một cách toàn diện và sâu sắc.',
    '/uploads/book/Art/Art11.jpg','LSP09'),


-- LSP10 Kiến trúc - Architecture
    ('SP1001','Thái Công - A Passion for Aesthetics (Sách tiếng Anh)',
    'Hơn cả một quyển sách chuyên ngành Thiết kế Nội thất, quyển sách như hé mở một cánh cửa cho độc giả về Thế giới Thượng lưu. “Thái Công - A Passion for Aesthetics” là một tác phẩm nghệ thuật về thiết kế đúng nghĩa, được hoàn thiện theo một cách đặc biệt mà mỗi độc giả có thể tự nhìn thấy và cảm nhận. Dành cho những ai yêu thích thiết kế nội thất, có niềm đam mê thẩm mỹ - nghệ thuật và những người hâm mộ Thái Công. Cuốn sách thể hiện dấu ấn thẩm mỹ của nhà thiết kế nội thất hàng đầu Quách Thái Công – người Đức gốc Việt, nổi tiếng với phong cách kết hợp tinh tế giữa nghệ thuật phương Tây và văn hóa phương Đông. Trong suốt hơn 20 năm qua, các công trình của Thái Công luôn mang đậm dấu ấn cá nhân, sang trọng và tinh tế. Cuốn sách giới thiệu những không gian nội thất tiêu biểu cùng các cuộc trò chuyện thú vị xoay quanh chủ đề “Thế nào mới là thẩm mỹ?”.',
    '/uploads/book/Architecture/Architecture1.jpg','LSP10'),

    ('SP1002','Kiến Trúc Hiện Đại Miền Nam Việt Nam - Chủ Nghĩa Bản Địa Hiện Đại Giữa Thế Kỷ XX',
    'Cuốn sách tái hiện quá trình hình thành phong cách kiến trúc hiện đại của Việt Nam trong giai đoạn giữa thế kỷ XX, khi đất nước vừa thoát khỏi chủ nghĩa thực dân và bước vào thời kỳ công nghiệp hóa. Các kiến trúc sư Việt Nam đã phát triển một phong cách riêng, mang đậm bản sắc dân tộc, dung hòa giữa ảnh hưởng toàn cầu và yếu tố địa phương. Cuốn sách thể hiện niềm tự hào về phiên bản kiến trúc hiện đại khác biệt của Việt Nam, đồng thời giới thiệu lịch sử và thành tựu kiến trúc ấy đến với độc giả trong và ngoài nước.',
    '/uploads/book/Architecture/Architecture2.jpg','LSP10'),

    ('SP1003','Kỹ Thuật Kiến Trúc Cảnh Quan',
    'Một tài liệu tổng quát về các nguyên tắc cơ bản khi xây dựng cảnh quan và công trình ngoài trời. Cuốn sách giới thiệu kiến thức cần thiết cho những người làm việc trong lĩnh vực thiết kế, kỹ thuật và thi công cảnh quan, được biên soạn bởi hai kiến trúc sư cảnh quan có kinh nghiệm từ thập niên 1970. Từ những ví dụ thực tế đến các nguyên tắc vật lý, hóa học của vật liệu, cuốn sách cung cấp nền tảng vững chắc để hiểu và thực hành thiết kế cảnh quan hiệu quả.',
    '/uploads/book/Architecture/Architecture3.jpg','LSP10'),

    ('SP1004','Ngôi Nhà Điên (Sách ảnh) (Ngôn ngữ Việt - Anh - Trung - Nga)',
    'Một cuốn sách ảnh đặc biệt hơn 350 trang, thể hiện bằng bốn ngôn ngữ (Việt, Anh, Trung, Nga), giới thiệu công trình “Ngôi Nhà Điên” – hay “Biệt thự Hằng Nga” tại Đà Lạt. Tác phẩm tái hiện quá trình sáng tạo độc đáo của KTS. TS Đặng Việt Nga, người đã tạo nên một công trình kỳ dị, phá cách và mang đậm yếu tố biểu tượng. Cuốn sách dẫn dắt người đọc khám phá từng chi tiết kiến trúc, cùng thông điệp nghệ thuật ẩn chứa trong công trình được mệnh danh là một trong những kiến trúc độc đáo nhất thế giới.',
    '/uploads/book/Architecture/Architecture4.jpg','LSP10'),

    ('SP1005','Dẫn Luận Về Kiến Trúc',
    'Một hướng dẫn cô đọng và đầy cảm hứng về nghệ thuật và lịch sử kiến trúc. Cuốn sách được đánh giá cao bởi lối viết súc tích, giàu kiến thức và truyền cảm hứng. Nó lý giải cách kiến trúc phản ánh chân thực xã hội, văn hóa và thời đại của con người. Đây là một tài liệu nhập môn lý tưởng dành cho sinh viên, kiến trúc sư trẻ hoặc bất kỳ ai quan tâm đến kiến trúc và nghệ thuật xây dựng.',
    '/uploads/book/Architecture/Architecture5.jpg','LSP10'),

    ('SP1006','Lịch Sử Kiến Trúc Cảnh Quan Thế Giới Qua Hình Vẽ',
    'Một hành trình trực quan qua lịch sử kiến trúc cảnh quan thế giới, được trình bày sinh động bằng các bản vẽ minh họa theo trình tự thời gian và địa lý. Cuốn sách cho thấy cách con người định hình tự nhiên qua các thời đại, đồng thời phản ánh mối quan hệ giữa nghệ thuật, xã hội và môi trường. Đây là nguồn tư liệu quý giá cho sinh viên, kiến trúc sư và những người yêu thích thiết kế cảnh quan.',
    '/uploads/book/Architecture/Architecture6.jpg','LSP10'),

    ('SP1007','Nhận Diện Đô Thị Việt Nam Đương Đại: Câu Chuyện Quy Hoạch - Kiến Trúc',
    'Một góc nhìn sâu sắc về quy hoạch và kiến trúc đô thị Việt Nam trong bối cảnh hiện đại, đặt trong mối quan hệ giữa lịch sử, văn hóa và chính trị - xã hội. Tác phẩm phản ánh chân dung đô thị Việt Nam qua từng giai đoạn phát triển, thể hiện trách nhiệm xã hội của người làm nghề quy hoạch và kiến trúc. Cuốn sách mang đến một câu chuyện sống động, đậm tính nhân văn về đô thị và con người Việt Nam đương đại.',
    '/uploads/book/Architecture/Architecture7.jpg','LSP10'),

    ('SP1008','A Crash Course Series: Đọc Hiểu Công Trình Kiến Trúc',
    'Một “khóa học nhanh” về ngôn ngữ kiến trúc. Cuốn sách trình bày các yếu tố cơ bản trong cấu trúc công trình, phong cách và thành phần kiến trúc. Với hàng trăm hình minh họa rõ ràng, “Đọc hiểu công trình kiến trúc” giúp người đọc dễ dàng nhận diện, phân tích và hiểu sâu hơn về các công trình từ cổ điển đến hiện đại. Là tài liệu hữu ích cho người mới bắt đầu và cả những ai đã có nền tảng kiến thức trong lĩnh vực này.',
    '/uploads/book/Architecture/Architecture8.jpg','LSP10'),

    ('SP1009','Có Ngôi Nhà Ở Trong Ta',
    'Tác giả Bùi Thúc Đạt mang đến những ghi chép và suy ngẫm sâu sắc về kiến trúc – từ khía cạnh thẩm mỹ, ánh sáng, màu sắc đến triết lý sống. Cuốn sách phản ánh mối quan hệ giữa kiến trúc và con người, giữa không gian và tâm hồn. Qua đó, tác giả đề xuất những giải pháp và hướng đi mới cho kiến trúc hiện đại, trong mối liên hệ hài hòa giữa quá khứ và tương lai.',
    '/uploads/book/Architecture/Architecture9.jpg','LSP10'),

    ('SP1010','Kiến Trúc Pháp - Đông Dương: Dấu Tích "Sài Gòn - Hòn Ngọc Viễn Đông"',
    'Một công trình nghiên cứu công phu về kiến trúc Pháp – Đông Dương tại Sài Gòn – Thành phố Hồ Chí Minh giai đoạn 1862–1945. Cuốn sách mô tả cách người Pháp và người Việt cùng kiến tạo nên một đô thị giao thoa Đông – Tây độc đáo. Những công trình, dinh thự, phố chợ và nhà ở mang phong cách pha trộn đã tạo nên vẻ đẹp huyền thoại “Hòn ngọc Viễn Đông”. Đây là tài liệu quý giá cho những ai yêu kiến trúc và lịch sử đô thị Việt Nam.',
    '/uploads/book/Architecture/Architecture10.jpg','LSP10'),

    ('SP1011','Kiến Trúc Hà Nội',
    'Một tác phẩm khắc họa bản sắc kiến trúc của Thăng Long – Hà Nội, thành phố mang trầm tích văn hóa lâu đời nhất Việt Nam. Qua những phân tích tinh tế và hình ảnh sinh động, cuốn sách cho thấy Hà Nội là nơi hội tụ giữa truyền thống và hiện đại, giữa bản sắc và hội nhập. Đây là tài liệu giá trị cho những người yêu kiến trúc, đô thị học và di sản văn hóa Việt Nam.',
    '/uploads/book/Architecture/Architecture11.jpg','LSP10');


-- =========================
-- INITIAL IMPORT INVOICE
-- =========================
INSERT INTO import_invoice (import_invoice_code, discount, status, total_amount, description, employee_code, supplier_code)
VALUES ('PN01', 0, 'Hoàn tất', 550000000, 'Phiếu nhập lần đầu toàn bộ sách', 'NV_KETOAN', 'NCC01');

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
    ('CTPN106', 100, 50000, 5000000, 'SP0606','PN01'),
    ('CTPN107', 100, 50000, 5000000, 'SP0607','PN01'),
    ('CTPN108', 100, 50000, 5000000, 'SP0608','PN01'),
    ('CTPN109', 100, 50000, 5000000, 'SP0609','PN01'),
    ('CTPN110', 100, 50000, 5000000, 'SP0610','PN01'),
    ('CTPN111', 100, 50000, 5000000, 'SP0611','PN01'),
    -- LSP07 Tiểu thuyết
    ('CTPN031', 100, 50000, 5000000, 'SP0701','PN01'),
    ('CTPN032', 100, 50000, 5000000, 'SP0702','PN01'),
    ('CTPN033', 100, 50000, 5000000, 'SP0703','PN01'),
    ('CTPN034', 100, 50000, 5000000, 'SP0704','PN01'),
    ('CTPN035', 100, 50000, 5000000, 'SP0705','PN01'),
    ('CTPN112', 100, 50000, 5000000, 'SP0706','PN01'),
    ('CTPN113', 100, 50000, 5000000, 'SP0707','PN01'),
    ('CTPN114', 100, 50000, 5000000, 'SP0708','PN01'),
    ('CTPN115', 100, 50000, 5000000, 'SP0709','PN01'),
    ('CTPN116', 100, 50000, 5000000, 'SP0710','PN01'),
    ('CTPN117', 100, 50000, 5000000, 'SP0711','PN01'),
    -- LSP08 Trinh thám
    ('CTPN036', 100, 50000, 5000000, 'SP0801','PN01'),
    ('CTPN037', 100, 50000, 5000000, 'SP0802','PN01'),
    ('CTPN038', 100, 50000, 5000000, 'SP0803','PN01'),
    ('CTPN039', 100, 50000, 5000000, 'SP0804','PN01'),
    ('CTPN040', 100, 50000, 5000000, 'SP0805','PN01'),
    ('CTPN118', 100, 50000, 5000000, 'SP0806','PN01'),
    ('CTPN119', 100, 50000, 5000000, 'SP0807','PN01'),
    ('CTPN120', 100, 50000, 5000000, 'SP0808','PN01'),
    ('CTPN121', 100, 50000, 5000000, 'SP0809','PN01'),
    ('CTPN122', 100, 50000, 5000000, 'SP0810','PN01'),
    ('CTPN123', 100, 50000, 5000000, 'SP0811','PN01'),
    -- LSP09 Truyện lịch sử
    ('CTPN041', 100, 50000, 5000000, 'SP0901','PN01'),
    ('CTPN042', 100, 50000, 5000000, 'SP0902','PN01'),
    ('CTPN043', 100, 50000, 5000000, 'SP0903','PN01'),
    ('CTPN044', 100, 50000, 5000000, 'SP0904','PN01'),
    ('CTPN045', 100, 50000, 5000000, 'SP0905','PN01'),
    ('CTPN124', 100, 50000, 5000000, 'SP0906','PN01'),
    ('CTPN125', 100, 50000, 5000000, 'SP0907','PN01'),
    ('CTPN126', 100, 50000, 5000000, 'SP0908','PN01'),
    ('CTPN127', 100, 50000, 5000000, 'SP0909','PN01'),
    ('CTPN128', 100, 50000, 5000000, 'SP0910','PN01'),
    ('CTPN129', 100, 50000, 5000000, 'SP0911','PN01'),
    -- LSP10 Văn học
    ('CTPN046', 100, 50000, 5000000, 'SP1001','PN01'),
    ('CTPN047', 100, 50000, 5000000, 'SP1002','PN01'),
    ('CTPN048', 100, 50000, 5000000, 'SP1003','PN01'),
    ('CTPN049', 100, 50000, 5000000, 'SP1004','PN01'),
    ('CTPN050', 100, 50000, 5000000, 'SP1005','PN01'),
    ('CTPN130', 100, 50000, 5000000, 'SP1006','PN01'),
    ('CTPN131', 100, 50000, 5000000, 'SP1007','PN01'),
    ('CTPN132', 100, 50000, 5000000, 'SP1008','PN01'),
    ('CTPN133', 100, 50000, 5000000, 'SP1009','PN01'),
    ('CTPN134', 100, 50000, 5000000, 'SP1010','PN01'),
    ('CTPN135', 100, 50000, 5000000, 'SP1011','PN01'),
    -- Additional import invoice details for missing Romance category products  
    ('CTPN136', 100, 50000, 5000000, 'SP0106','PN01'),
    ('CTPN137', 100, 50000, 5000000, 'SP0107','PN01'),
    ('CTPN138', 100, 50000, 5000000, 'SP0108','PN01'),
    ('CTPN139', 100, 50000, 5000000, 'SP0109','PN01'),
    ('CTPN140', 100, 50000, 5000000, 'SP0110','PN01'),
    ('CTPN141', 100, 50000, 5000000, 'SP0111','PN01'),
    -- Additional import invoice details for missing Horror category products
    ('CTPN142', 100, 50000, 5000000, 'SP0206','PN01'),
    ('CTPN143', 100, 50000, 5000000, 'SP0207','PN01'),
    ('CTPN144', 100, 50000, 5000000, 'SP0208','PN01'),
    ('CTPN145', 100, 50000, 5000000, 'SP0209','PN01'),
    ('CTPN146', 100, 50000, 5000000, 'SP0210','PN01'),
    ('CTPN147', 100, 50000, 5000000, 'SP0211','PN01'),
    -- Additional import invoice details for missing Fantasy category products
    ('CTPN148', 100, 50000, 5000000, 'SP0306','PN01'),
    ('CTPN149', 100, 50000, 5000000, 'SP0307','PN01'),
    ('CTPN150', 100, 50000, 5000000, 'SP0308','PN01'),
    ('CTPN151', 100, 50000, 5000000, 'SP0309','PN01'),
    ('CTPN152', 100, 50000, 5000000, 'SP0310','PN01'),
    ('CTPN153', 100, 50000, 5000000, 'SP0311','PN01'),
    -- Additional import invoice details for missing Detective category products
    ('CTPN154', 100, 50000, 5000000, 'SP0406','PN01'),
    ('CTPN155', 100, 50000, 5000000, 'SP0407','PN01'),
    ('CTPN156', 100, 50000, 5000000, 'SP0408','PN01'),
    ('CTPN157', 100, 50000, 5000000, 'SP0409','PN01'),
    ('CTPN158', 100, 50000, 5000000, 'SP0410','PN01'),
    ('CTPN159', 100, 50000, 5000000, 'SP0411','PN01'),
    -- Additional import invoice details for missing Novel category products
    ('CTPN160', 100, 50000, 5000000, 'SP0506','PN01'),
    ('CTPN161', 100, 50000, 5000000, 'SP0507','PN01'),
    ('CTPN162', 100, 50000, 5000000, 'SP0508','PN01'),
    ('CTPN163', 100, 50000, 5000000, 'SP0509','PN01'),
    ('CTPN164', 100, 50000, 5000000, 'SP0510','PN01'),
    ('CTPN165', 100, 50000, 5000000, 'SP0511','PN01');

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
    ('KHO050',100,'SP1005','CTPN050'),
    -- Additional inventory for missing products
    -- Additional Romance products (SP0106-SP0111)
    ('KHO051',100,'SP0106','CTPN136'),
    ('KHO052',100,'SP0107','CTPN137'),
    ('KHO053',100,'SP0108','CTPN138'),
    ('KHO054',100,'SP0109','CTPN139'),
    ('KHO055',100,'SP0110','CTPN140'),
    ('KHO056',100,'SP0111','CTPN141'),
    -- Additional Horror products (SP0206-SP0211)
    ('KHO057',100,'SP0206','CTPN142'),
    ('KHO058',100,'SP0207','CTPN143'),
    ('KHO059',100,'SP0208','CTPN144'),
    ('KHO060',100,'SP0209','CTPN145'),
    ('KHO061',100,'SP0210','CTPN146'),
    ('KHO062',100,'SP0211','CTPN147'),
    -- Additional Fantasy products (SP0306-SP0311)
    ('KHO063',100,'SP0306','CTPN148'),
    ('KHO064',100,'SP0307','CTPN149'),
    ('KHO065',100,'SP0308','CTPN150'),
    ('KHO066',100,'SP0309','CTPN151'),
    ('KHO067',100,'SP0310','CTPN152'),
    ('KHO068',100,'SP0311','CTPN153'),
    -- Additional Detective products (SP0406-SP0411)
    ('KHO069',100,'SP0406','CTPN154'),
    ('KHO070',100,'SP0407','CTPN155'),
    ('KHO071',100,'SP0408','CTPN156'),
    ('KHO072',100,'SP0409','CTPN157'),
    ('KHO073',100,'SP0410','CTPN158'),
    ('KHO074',100,'SP0411','CTPN159'),
    -- Additional Novel products (SP0506-SP0511)
    ('KHO075',100,'SP0506','CTPN160'),
    ('KHO076',100,'SP0507','CTPN161'),
    ('KHO077',100,'SP0508','CTPN162'),
    ('KHO078',100,'SP0509','CTPN163'),
    ('KHO079',100,'SP0510','CTPN164'),
    ('KHO080',100,'SP0511','CTPN165'),
    -- Additional Historical products (SP0606-SP0611)
    ('KHO081',100,'SP0606','CTPN106'),
    ('KHO082',100,'SP0607','CTPN107'),
    ('KHO083',100,'SP0608','CTPN108'),
    ('KHO084',100,'SP0609','CTPN109'),
    ('KHO085',100,'SP0610','CTPN110'),
    ('KHO086',100,'SP0611','CTPN111'),
    -- Additional Literature products (SP0706-SP0711)
    ('KHO087',100,'SP0706','CTPN112'),
    ('KHO088',100,'SP0707','CTPN113'),
    ('KHO089',100,'SP0708','CTPN114'),
    ('KHO090',100,'SP0709','CTPN115'),
    ('KHO091',100,'SP0710','CTPN116'),
    ('KHO092',100,'SP0711','CTPN117'),
    -- Additional Poetry products (SP0806-SP0811)  
    ('KHO093',100,'SP0806','CTPN118'),
    ('KHO094',100,'SP0807','CTPN119'),
    ('KHO095',100,'SP0808','CTPN120'),
    ('KHO096',100,'SP0809','CTPN121'),
    ('KHO097',100,'SP0810','CTPN122'),
    ('KHO098',100,'SP0811','CTPN123'),
    -- Additional Art products (SP0906-SP0911)
    ('KHO099',100,'SP0906','CTPN124'),
    ('KHO100',100,'SP0907','CTPN125'),
    ('KHO101',100,'SP0908','CTPN126'),
    ('KHO102',100,'SP0909','CTPN127'),
    ('KHO103',100,'SP0910','CTPN128'),
    ('KHO104',100,'SP0911','CTPN129'),
    -- Additional Architecture products (SP1006-SP1011)
    ('KHO105',100,'SP1006','CTPN130'),
    ('KHO106',100,'SP1007','CTPN131'),
    ('KHO107',100,'SP1008','CTPN132'),
    ('KHO108',100,'SP1009','CTPN133'),
    ('KHO109',100,'SP1010','CTPN134'),
    ('KHO110',100,'SP1011','CTPN135');

INSERT INTO price_history (price_history_code, unit_price, product_code, import_invoice_detail_code) VALUES
-- LSP01 Romance
('LSG001A',75000,'SP0101','CTPN001'),
('LSG002A',68000,'SP0102','CTPN002'),
('LSG003A',52000,'SP0103','CTPN003'),
('LSG004A',63000,'SP0104','CTPN004'),
('LSG005A',71000,'SP0105','CTPN005'),
('LSG136A',65000,'SP0106','CTPN136'),
('LSG137A',59000,'SP0107','CTPN137'),
('LSG138A',72000,'SP0108','CTPN138'),
('LSG139A',58000,'SP0109','CTPN139'),
('LSG140A',67000,'SP0110','CTPN140'),
('LSG141A',74000,'SP0111','CTPN141'),
-- LSP02 Horror
('LSG006A',82000,'SP0201','CTPN006'),
('LSG007A',76000,'SP0202','CTPN007'),
('LSG008A',59000,'SP0203','CTPN008'),
('LSG009A',88000,'SP0204','CTPN009'),
('LSG010A',85000,'SP0205','CTPN010'),
('LSG142A',91000,'SP0206','CTPN142'),
('LSG143A',79000,'SP0207','CTPN143'),
('LSG144A',95000,'SP0208','CTPN144'),
('LSG145A',83000,'SP0209','CTPN145'),
('LSG146A',87000,'SP0210','CTPN146'),
('LSG147A',92000,'SP0211','CTPN147'),
-- LSP03 Fantasy
('LSG011A',78000,'SP0301','CTPN011'),
('LSG012A',95000,'SP0302','CTPN012'),
('LSG013A',150000,'SP0303','CTPN013'),
('LSG014A',89000,'SP0304','CTPN014'),
('LSG015A',67000,'SP0305','CTPN015'),
('LSG148A',145000,'SP0306','CTPN148'),
('LSG149A',92000,'SP0307','CTPN149'),
('LSG150A',87000,'SP0308','CTPN150'),
('LSG151A',165000,'SP0309','CTPN151'),
('LSG152A',138000,'SP0310','CTPN152'),
('LSG153A',125000,'SP0311','CTPN153'),
-- LSP04 Detective
('LSG016A',98000,'SP0401','CTPN016'),
('LSG017A',73000,'SP0402','CTPN017'),
('LSG018A',86000,'SP0403','CTPN018'),
('LSG019A',112000,'SP0404','CTPN019'),
('LSG020A',79000,'SP0405','CTPN020'),
('LSG154A',105000,'SP0406','CTPN154'),
('LSG155A',94000,'SP0407','CTPN155'),
('LSG156A',118000,'SP0408','CTPN156'),
('LSG157A',87000,'SP0409','CTPN157'),
('LSG158A',102000,'SP0410','CTPN158'),
('LSG159A',89000,'SP0411','CTPN159'),
-- LSP05 Novel
('LSG021A',55000,'SP0501','CTPN021'),
('LSG022A',62000,'SP0502','CTPN022'),
('LSG023A',48000,'SP0503','CTPN023'),
('LSG024A',77000,'SP0504','CTPN024'),
('LSG025A',84000,'SP0505','CTPN025'),
('LSG160A',69000,'SP0506','CTPN160'),
('LSG161A',74000,'SP0507','CTPN161'),
('LSG162A',52000,'SP0508','CTPN162'),
('LSG163A',81000,'SP0509','CTPN163'),
('LSG164A',67000,'SP0510','CTPN164'),
('LSG165A',73000,'SP0511','CTPN165'),
-- LSP06 Historical
('LSG026A',89000,'SP0601','CTPN026'),
('LSG027A',72000,'SP0602','CTPN027'),
('LSG028A',105000,'SP0603','CTPN028'),
('LSG029A',68000,'SP0604','CTPN029'),
('LSG030A',91000,'SP0605','CTPN030'),
('LSG106A',97000,'SP0606','CTPN106'),
('LSG107A',84000,'SP0607','CTPN107'),
('LSG108A',76000,'SP0608','CTPN108'),
('LSG109A',108000,'SP0609','CTPN109'),
('LSG110A',95000,'SP0610','CTPN110'),
('LSG111A',82000,'SP0611','CTPN111'),
-- LSP07 Literature
('LSG031A',87000,'SP0701','CTPN031'),
('LSG032A',64000,'SP0702','CTPN032'),
('LSG033A',93000,'SP0703','CTPN033'),
('LSG034A',58000,'SP0704','CTPN034'),
('LSG035A',81000,'SP0705','CTPN035'),
('LSG112A',75000,'SP0706','CTPN112'),
('LSG113A',89000,'SP0707','CTPN113'),
('LSG114A',95000,'SP0708','CTPN114'),
('LSG115A',67000,'SP0709','CTPN115'),
('LSG116A',85000,'SP0710','CTPN116'),
('LSG117A',78000,'SP0711','CTPN117'),
-- LSP08 Poetry
('LSG036A',42000,'SP0801','CTPN036'),
('LSG037A',38000,'SP0802','CTPN037'),
('LSG038A',56000,'SP0803','CTPN038'),
('LSG039A',47000,'SP0804','CTPN039'),
('LSG040A',61000,'SP0805','CTPN040'),
('LSG118A',45000,'SP0806','CTPN118'),
('LSG119A',53000,'SP0807','CTPN119'),
('LSG120A',39000,'SP0808','CTPN120'),
('LSG121A',58000,'SP0809','CTPN121'),
('LSG122A',49000,'SP0810','CTPN122'),
('LSG123A',44000,'SP0811','CTPN123'),
-- LSP09 Art
('LSG041A',125000,'SP0901','CTPN041'),
('LSG042A',96000,'SP0902','CTPN042'),
('LSG043A',157000,'SP0903','CTPN043'),
('LSG044A',143000,'SP0904','CTPN044'),
('LSG045A',108000,'SP0905','CTPN045'),
('LSG124A',115000,'SP0906','CTPN124'),
('LSG125A',168000,'SP0907','CTPN125'),
('LSG126A',139000,'SP0908','CTPN126'),
('LSG127A',152000,'SP0909','CTPN127'),
('LSG128A',127000,'SP0910','CTPN128'),
('LSG129A',145000,'SP0911','CTPN129'),
-- LSP10 Architecture
('LSG046A',195000,'SP1001','CTPN046'),
('LSG047A',134000,'SP1002','CTPN047'),
('LSG048A',167000,'SP1003','CTPN048'),
('LSG049A',228000,'SP1004','CTPN049'),
('LSG050A',152000,'SP1005','CTPN050'),
('LSG130A',178000,'SP1006','CTPN130'),
('LSG131A',145000,'SP1007','CTPN131'),
('LSG132A',156000,'SP1008','CTPN132'),
('LSG133A',189000,'SP1009','CTPN133'),
('LSG134A',198000,'SP1010','CTPN134'),
('LSG135A',164000,'SP1011','CTPN135');
