<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Drawer.aspx.vb" Inherits="TestPages_Drawer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div>
        <!-- HTML 部分 -->
        <div class="open-drawer-btn">Open Drawer</div>
        <div class="drawer drawer-right">
            <div class="drawer-header">
                <span class="drawer-title">Drawer Title</span>
                <button class="drawer-close-btn">X</button>
            </div>
            <div class="drawer-content">
                Drawer Content
            </div>
        </div>
        <div class="overlay"></div>
        <!-- CSS 部分 -->
        <style>
            .drawer {
                position: fixed;
                top: 0;
                right: 0;
                width: 500px;
                height: 100%;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                transform: translateX(-100%);
                transition: transform 0.2s ease-out;
                z-index: 1000;
            }

                .drawer.drawer-right {
                    transform: translateX(100%);
                }

                .drawer.open {
                    transform: translateX(0);
                }

            .drawer-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px;
                background-color: #eee;
            }

            .drawer-title {
                font-size: 16px;
                font-weight: bold;
            }

            .drawer-close-btn {
                border: none;
                background-color: transparent;
                cursor: pointer;
                font-size: 16px;
            }

            .drawer-content {
                padding: 10px;
            }

            .overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 999;
                display: none;
            }

                .overlay.active {
                    display: block;
                }
        </style>

    </div>
    <!-- JavaScript 部分 -->
    <script>
        const drawerEl = document.querySelector('.drawer');
        const openBtnEl = document.querySelector('.open-drawer-btn');
        const closeBtnEl = document.querySelector('.drawer-close-btn');
        const overlayEl = document.querySelector('.overlay');
        function openDrawer() {
            drawerEl.classList.add('open');
            overlayEl.classList.add('active');
        }
        function closeDrawer() {
            drawerEl.classList.remove('open');
            overlayEl.classList.remove('active');
        }
        function toggleDrawer() {
            drawerEl.classList.toggle('open');
            overlayEl.classList.toggle('active');
        }
        openBtnEl.addEventListener('click', openDrawer);
        closeBtnEl.addEventListener('click', closeDrawer);
        overlayEl.addEventListener('click', closeDrawer);
    </script>
</body>
</html>
