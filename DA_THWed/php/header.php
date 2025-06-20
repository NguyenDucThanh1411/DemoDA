<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Header</title>
    <style>
        * { 
             margin: 0; 
             padding: 0; 
             box-sizing: border-box; 
            }
        body { 
            font-family: Arial, sans-serif; 
            background-color: #f7f7f7; 
            z-index: 1000;
        }
        .header-container {
            background: #E7717D;
            color: white;
            display: flex;
            position: fixed;
            width: 100%;
            z-index: 1000;
            flex-direction: column;
            align-items: center;
        }

        .header-top {
            display: flex;
            justify-content: space-between;
            width: 100%;
            max-width: 1200px;
            padding: 5px 20px;
            font-size: 13px;
        }

        .header-left,
        .header-right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .header-left a,
        .header-right a {
            color: white;
            text-decoration: none;
            font-size: 13px;
        }

        .header-left a:hover,
        .header-right a:hover {
            text-decoration: underline;
        }

        .header-middle {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            max-width: 1200px;
            padding: 10px 20px;
            gap: 20px;
        }

        .logo {
            display: flex;
            align-items: center;
            font-weight: bold;
            font-size: 25px;
            color: white;
        }

        .logo img {
            width: 50px;
            height: 50px;
            margin-right: 5px;
        }
        .logo h2 span a {
            color: white;
            text-decoration: none;
            font-size: 40px;
            font-weight: bold;
        }

        .logo h2 span a:hover {
            text-decoration: none; 
        }

        .search-bar {
            display: flex;
            align-items: center;
            flex: 1;
            max-width: 600px;
            border-radius: 5px;
            overflow: hidden; 
            background-color: white;
        }

        .search-bar input[type="text"] {
            width: 100%;
            padding: 8px 10px;
            border: none;
            outline: none;
            font-size: 14px;
        }

        .search-bar button {
            padding: 8px 15px;
            border: none; 
            background-color: transparent; 
            color: #1c1c1c; 
            font-size: 16px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        #cart {
            background-color: transparent;
            border: none;
            color: white;
            font-size: 35px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px;
        }

        #cart:hover {
            color: #C0C0C0; 
            transform: scale(1.1); 
        }

        .icon {
            position: relative;
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
        }

        .icon .count {
            position: absolute;
            top: -5px;
            right: -10px;
            background: #fff;
            color: #E7717D;
            font-size: 10px;
            font-weight: bold;
            padding: 2px 5px;
            border-radius: 50%;
        }
        .iconn{
            font-size: 20px;
        }
      
        header {
            background-color: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 100;
        }
        a#click {
            color: white;
            text-decoration: none;
        }

        a#click:focus {
            color: #C0C0C0; 
            outline: none;
            text-decoration: none; /
        }

        .main-menu {
            background-color: #1c1c1c; 
            padding: 0;
            margin: 0;
            width: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        }

        .main-menu ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            text-align: center;
        }

        .main-menu > ul > li {
            display: inline-block;
            position: relative;
        }

        .main-menu ul li a {
            display: block;
            color: white; 
            text-decoration: none;
            padding: 15px 20px;
            font-size: 16px;
        }

        .main-menu ul li a:hover {
            background-color: #555; 
        }

        .main-menu ul.dropdown {
            display: none; 
            position: absolute;
            top: 100%;
            left: 0;
            min-width: 180px; 
            background-color: #444; 
            list-style-type: none;
            padding: 0;
            margin: 0;
            opacity: 0; 
        }

        .main-menu ul.dropdown li a {
            padding: 10px 15px;
            color: #fff; 
            font-size: 14px;
        }

        .main-menu ul.dropdown li a:hover {
            background-color: #666; 
        }

        .main-menu > ul > li:hover > ul.dropdown {
            display: block;
            opacity: 1;
        }

        .menu-left {
            position: fixed;
            top: 0;
            left: -250px; 
            width: 250px;
            height: 100%;
            background-color: #333;
            color: white;
            transition: left 0.3s ease-in-out;
            padding-top: 20px;
            z-index: 10;
        }

        .menu-left ul {
            list-style-type: none;
            padding: 0;
        }

        .menu-left ul li a {
            color: white;
            padding: 15px;
            text-decoration: none;
            display: block;
        }

        .menu-left ul li a:hover {
            background-color: #575757;
        }

        .menu-left.active {
            left: 0;
        }

    </style>
</head>
<body>

    <div class="header-container">
        <div class="header-top">
            <div class="header-left">
                <a href="../php/gioithieu.php" id="click">Giới thiệu</a>
                <span>Follow chúng tôi</span>
                <a href="https://www.facebook.com/nguyen.uc.thanh.690273"><i class="iconn bi bi-facebook"></i>                </a>
                <a href="https://www.instagram.com/giai_minh/"><i class="iconn bi bi-instagram"></i></a>
            </div>

            <div class="header-right">
                <a href="../php/lienhe.php" id="click"><i class="iconn bi bi-question"></i>Liên hệ</a>
                <a href="dangnhap.php" id="click"><i class="iconn bi bi-person-circle" ></i>  Đăng nhập/Đăng ký</a>
            </div>
        </div>

        <div class="header-middle">
            <div class="logo">
                <a href="../php/trangchu.php"><img src="../image/logo.png" alt="Logo"></a>
                <h2><span><a href="../php/trangchu.php">NĐT</a></span></h2>
            </div>

        <div class="search-bar">
            <form action="search.php" method="GET" style="display: flex; width: 100%;">
                <input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm bạn muốn">
                <button type="submit"><i class="iconn bi bi-search"></i></button>
            </form>
        </div>
            <button id="cart" onclick="window.location.href='../php/giohang.php';"><i class="bi bi-cart3"></i></button>
        </div>
        
        
<nav class="main-menu">
    <div id="menu-left" class="menu-left">
        <ul>
            <?php include 'menu_left.php'; ?>
        </ul>
    </div>

    <ul>
      
        <li><a href="../php/trangchu.php">TRANG CHỦ</a></li>
        <li><a href="../php/sp1.php">TẤT CẢ SẢN PHẨM</a>
            <ul class="dropdown">
            <li><a href="../php/home.php?category=aothun"> ÁO THUN COTTON</a></li>
            <li><a href="../php/home.php?category=quanjeans"> QUẦN JEANS</a></li>
            <li><a href="../php/home.php?category=aosomi">ÁO SƠ MI</a></li>
            <li><a href="../php/home.php?category=vay">VÁY MAXI</a></li>
            <li><a href="../php/home.php?category=phukien">MŨ</a></li>
            </ul>
        </li>
        <li><a href="../php/home.php?category=aothun"> ÁO THUN COTTON</a></li>
            <li><a href="../php/home.php?category=quanjeans"> QUẦN JEANS</a></li>
            <li><a href="../php/home.php?category=aosomi">ÁO SƠ MI</a></li>
            <li><a href="../php/home.php?category=vay">VÁY MAXI</a></li>
            <li><a href="../php/home.php?category=phukien">MŨ</a></li>
    </ul>
</nav>

    </div>
    <script>
    document.getElementById("menu-toggle").addEventListener("click", function() {
        var menu = document.getElementById("menu-left");
        menu.classList.toggle("active");
    });

</script>
</body>
</html>
