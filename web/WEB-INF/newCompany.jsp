<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet">
        <style>
        </style>
        <title>Новая компания</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-light fixed-top">
                <div class="container">
                    <a class="navbar-brand" href="#"><img class="logo" src="img/logo.png" alt=""/></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">

                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Главная</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="services.jsp">Услуги</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">Обо мне</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contacts.jsp">Контакты</a>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Выход</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <section class="page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>Новая компания</h1>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="row align-middle">
                <div class="col-12 col-md-3">
                    <div class="btn-group-vertical-auto">
                        <br>

                        <a href="newAccount" class="list-group-item list-group-item-action">Добавить счет</a>
                        <a href="listAccounts" class="list-group-item list-group-item-action">Список счетов</a>
                        <a href="listCompanies" class="list-group-item list-group-item-action ">Список компаний</a>
                        <a href="showTakeOnAccount" class="list-group-item list-group-item-action ">Оплатить счёт</a>
                        <a href="showPaymentAccount" class="list-group-item list-group-item-action ">Оплаченные счета</a>

                        <br>

                    </div>
                </div>

                <div class="col-12 col-md-9 ml-auto">
                    <h3>${info}</h3>
                    <form action="addCompany" method="POST">
                        Название компании : <input class="form-control col-md-9" type="text" name="name">
                        Форма управления : <input class="form-control col-md-9" type="text" name="form">
                        Адрес : <input class="form-control col-md-9" type="text" name="address">
                        email: <input class="form-control col-md-9" type="text" name="email"> 
                        Логин : <input class="form-control col-md-9" type="text" name="login">
                        Пароль : <input class="form-control col-md-9" type="password" name="password"><br>

                        <button type="submit" class="btn btn-primary">Создать компанию</button>
                    </form>

                </div>
            </div>
        </div>
                    <br>
                    

        <footer>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-md-4">
                        <a class="navbar-brand" href="#"><img class="logo" src="img/logo.png" alt=""/></a>
                    </div>
                    <div class="col-12 col-md-4 copy">
                        SKTVp18  &copy; 2020 <a href="mailto:support@ee.ee">perfectpluss@mail.ru</a>
                    </div>
                    <div class="col-12 col-md-4">
                        <ul class="nav justify-content-center social">
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/facebook.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/windows/48/000000/facebook.png"></a>-->
                                <a class="nav-link" href="https://www.facebook.com/"><img src="img/facebook.png" alt=""/></a>

                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="https://vk.com/"><img src="https://img.icons8.com/windows/48/000000/vk-com.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/vk-com.png"></a>-->
                                <a class="nav-link" href="https://vk.com/"><img src="img/vk-com.png" alt=""/></a>
                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/color/48/000000/odnoklassniki.png"></a>-->
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/ios/48/000000/odnoklassniki.png"></a>-->
                                <a class="nav-link" href="https://ok.ru/profile/129055386138"><img src="img/odnoklassniki.png" alt=""/></a>
                            </li>
                            <li class="nav-item">
                                <!--<a class="nav-link" href="#"><img src="https://img.icons8.com/windows/48/000000/instagram-new.png"></a>-->
                                <a class="nav-link" href="https://www.instagram.com/"><img src="img/instagram-new.png" alt=""/></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </footer>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
    </body>
</html>

