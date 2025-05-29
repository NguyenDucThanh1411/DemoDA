<?php
session_start();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu về NĐT Shop</title>
    <style>
         * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
        body {
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #e1d9d9;
        }

        .intro-container {
            width: 100%;
            margin-top: 0px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .intro-container h1 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-top: 200px;
            margin-bottom: 20px;
        }

        .image-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .image-container img {
            width: 100%;
            max-width: 800px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .content{
            width: 1000px;
            justify-content: center;
            align-items: center;
            margin-left: 250px;
        }
        .content h2 {
            font-size: 20px;
            color: #333;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .content p {
            font-size: 16px;
            color: black;
            margin-bottom: 15px;
            text-align: justify;
        }
       

        .direction-button {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 20px;
            background-color: #FF6347;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
        }

        .direction-button:hover {
            background-color: #CD4F39;
        }
    </style>
</head>
<?php include 'header2.php'; ?>
<body>

    <div class="intro-container">
        <b><h1>Giới thiệu về NĐT Shop</h1></b>
        
        <div class="image-container">
            <img src="../image/anh1.png" alt="Giới thiệu về NĐT Shop">
        </div>

        <div class="content">
        <h2>1. NĐT Shop - Thiên đường Thời trang hiện đại</h2>
        <p> NĐT Shop là điểm đến lý tưởng cho những ai tìm kiếm các sản phẩm thời trang chất lượng cao,
        hiện đại cho cuộc sống hàng ngày. NĐT Shop tự hào cung cấp đa dạng các sản phẩm thời trang từ quần áo, giày dép, váy, 
        và nhiều hơn nữa. Mỗi sản phẩm đều được chọn lọc kỹ lưỡng, 
        đảm bảo chất lượng và độ bền cao để phục vụ nhu cầu sử dụng của từng gia đình.</p>
        <h2>2. Sứ mệnh của NĐT Shop</h2> 
        <p> NĐT Shop ,nơi phong cách gặp gỡ sự bền vững! Tại đây, chúng tôi mang đến những bộ trang phục thời thượng, đa dạng từ thanh lịch đến năng động, được làm từ chất liệu hữu cơ thân thiện với môi trường. Với dịch vụ khách hàng tận tâm và quy trình sản xuất bền vững, chúng tôi cam kết giúp bạn tự tin tỏa sáng trong mọi khoảnh khắc. Hãy đến và khám phá bộ sưu tập độc đáo  </p>
        <h2>3. Tại sao chọn NĐT Shop?</h2>
        <p> Chất lượng vượt trội: Tất cả sản phẩm tại NĐT Shop đều được nhập khẩu từ những thương 
        hiệu uy tín trên thế giới, cam kết an toàn và chất lượng cao. Mẫu mã đa dạng, hiện đại: 
        NĐT Shop cập nhật liên tục các mẫu mã mới nhất, phù hợp với xu hướng hiện đại 
        và nhu cầu sử dụng ngày càng phong phú của người tiêu dùng. Dịch vụ tư vấn tận tình: 
        Đội ngũ nhân viên của NĐT Shop luôn sẵn sàng hỗ trợ bạn trong việc chọn lựa sản phẩm 
        phù hợp nhất. Chính sách bảo hành và hậu mãi: Chúng tôi cam kết đem lại 
        sự yên tâm cho khách hàng với các chế độ bảo hành uy tín, hỗ trợ đổi trả và dịch vụ hậu mãi tận tâm.</p>
        <h2>5. Một trải nghiệm mua sắm đẳng cấp</h2> 
        <p> Tại NĐT Shop, bạn không chỉ đơn thuần là mua sắm mà còn được trải nghiệm một phong cách sống tiện 
        nghi và đẳng cấp. Chúng tôi hy vọng, mỗi sản phẩm sẽ là một phần trong cuộc sống hạnh phúc của
         gia đình bạn. Hãy đến với NĐT Shop </p>
        <p>Địa chỉ: Số 156, ngõ 99 Định Công Hạ</p>
        <p>Hãy đến với chúng tôi hôm nay!</p>
        <div class="map-container">
        <div class="map-container">
        <iframe 
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.187326704914!2d105.87573251535227!3d20.978403694628733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aca5155c40c5%3A0x791998e239d444db!2zMjE4IMSQLiBMxqFpIE5hbSwgVmnhu4djaCBIdW5nLCBIb8OgbmcgTWFpLCBIw6AgTuG7mWkgQ8O0bmcgVmnhu4d0LCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1699989082341!5m2!1svi!2s" 
            width="100%" 
            height="400" 
            style="border:0;" 
            allowfullscreen="" 
            loading="lazy">
        </iframe>
    </div>

    <a href="https://www.google.com/maps/dir/?api=1&destination=218+Lĩnh+Nam,+Vĩnh+Hưng,+Hoàng+Mai,+Hà+Nội,+Việt+Nam" 
       target="_blank" 
       class="direction-button">
       Chỉ đường
    </a>
            </div>        
        </div>
    </div>
    <?php include 'back.php'; ?>
    <?php include 'footer.php'; ?>

</body>
</html>
