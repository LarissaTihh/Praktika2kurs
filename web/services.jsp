<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Бухгалтерия</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">       
        <link href="css/ekko-lightbox.css" rel="stylesheet" type="text/css"/>
        <link href="css/aos.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet">
        <style>
        </style>
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
                                <a class="nav-link" href="index1.jsp">Вход</a>
                            </li>
                         
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section class="page-banner" id="kt">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>Услуги</h1>
                    </div>
                </div>
            </div>
        </section>

       <section class="page">
    <div class="container">
        <h2>Квартирные товарищества</h2>
        <div class="row">
            <div class="col-md-4">
                <img class="rounded" src="img/services-ku.jpg" alt="Квартирные товарищества"/>
            </div>
            <div class="col-md-8">
                <ul class="nav nav-tabs" id="Tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="ku-tab" data-toggle="tab" href="#ku" role="tab" aria-controls="ku" aria-selected="false">Квартирные товарищества</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="uslugi-tab" data-toggle="tab" href="#uslugi" role="tab" aria-controls="uslugi" aria-selected="false">Мои услуги</a>
                    </li>
                </ul>
                <div class="tab-content" id="TabContent">
                    <div class="tab-pane fade active show" id="ku" role="tabpanel" aria-labelledby="ku-tab">
                        <h3></h3>

                        <p>1 января 2018 года вступил в силу принятый в 2014 году «Закон о квартирной собственности и квартирных товариществах». Он заменил два действующих закона: «Закон о квартирной собственности» и «Закон o квартирных товариществах». Таким образом, в одном законе  урегулированы все правовые вопросы, связанные с квартирной собственностью.
                            Согласно новому закону, управление всеми жилыми домами производится в форме отдельного юридического лица – квартирного товарищества. В тех многоквартирных домах, где по состоянию на начало 2018 года собственники квартир не создали квартирного товарищества, оно  создано государством.
                        </p>
                    </div>
                    <div class="tab-pane fade" id="uslugi" role="tabpanel" aria-labelledby="uslugi-tab">

                        <h3></h3>

                        <ul>
                            <li>Ведение документов и формирование баз данных с использованием прораммы Инфотек.  </li>
                            <li>
                                Составление  плана хозяйственной деятельности.
                            </li>
                            <li> 
                              Учёт доходов и расходов.
                            </li>
                            <li>
                                Учёт кассовых и банковских операций.
                            </li>
                            <li>
                                Учёт подотчётных сумм.  </li>
                            <li>
                                Начисления и расчёты по зарплате труда.
                            </li>
                            <li>
                                Отчёты по налогам.
                            </li>
                            <li>
                               Расчёты с поставщиками услуг.
                            </li>
                            <li>
                               Расчёты с квартирособственниками ,прочими покупателями и арендаторами.
                            </li>
                            <li>
                                Распечатка извещений и счетов,бухгалтерских регистров.
                            </li>
                            <li>
                               Подача годовых отчётов финансовой деятельности в регистр.
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <div class="row" id="nko">
            <div class="col-12">
                <h2>Некоммерческие организации</h2>
                <div class="row">
                    <div class="col-md-4">
                        <img class="rounded" src="img/nko.jpg" alt=""/>
                    </div>
                    <div class="col-md-8">
                        <ul class="nav nav-tabs" id="Tab2" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="nko1-tab" data-toggle="tab" href="#nko1" role="tab" aria-controls="nko1" aria-selected="true">Некомерческие организации</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="nalogi-tab" data-toggle="tab" href="#nalogi" role="tab" aria-controls="nalogi" aria-selected="false">Налогообложение</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="blago-tab" data-toggle="tab" href="#blago" role="tab" aria-controls="blago" aria-selected="false">Благотворительность</a>
  </li>
</ul>
<div class="tab-content" id="Tab2Content">
  <div class="tab-pane fade show active" id="nko1" role="tabpanel" aria-labelledby="nko-tab">
      <h3></h3>
      В Эстонии существует форма некоммерческого предприятия - Mittetulundusühing или MTÜ (далее по тексту «недоходное предприятие»). Это весьма распространённая форма корпоративного устройства, которая отличается простотой учреждения. Основной задачей подобного предприятия является не получение дохода, а работа и достижение целей в области культуры, здравоохранения, образования, защиты прав граждан или иная деятельность в социально-значимых областях, не сопряженная с получением прибыли, но направленная на достижение общественных благ. Деятельность недоходных предприятий нередко носит благотворительный характер, однако стоит отметить, что не любое недоходное предприятие является благотворительной организацией (90% всех недоходных предприятий в Эстонии — квартирные товарищества), подобный статус присваивается только определённым компаниям.</div>
  <div class="tab-pane fade" id="nalogi" role="tabpanel" aria-labelledby="nalogi-tab">
      <h3></h3>
В отношении недоходного предприятия в Эстонии действуют особые правовые нормы в области налогообложения. В отличие от коммерческих предприятий вроде акционерного общества или паевого товарищества, недоходное предприятие обязано платить подоходный налог со своей деятельности, за исключением случаев, когда компания внесена в список благотворительных организаций (с полным списком можно ознакомиться перейдя по ссылке: <a href="https://www.riigiteataja.ee/akt/323122014022">https://www.riigiteataja.ee/akt/323122014022</a>. Внесение недоходного предприятия в список происходит на основании заявления. Комиссия Налогового и Таможенного департамента создаёт комиссию, которая оценивает деятельность компании и её соответствие понятию благотворительной, после чего даёт рекомендацию правительству о внесении в список или отказе.</div>
  <div class="tab-pane fade" id="blago" role="tabpanel" aria-labelledby="blago-tab">
      <h3>Для соответствия статусу благотворительной компании необходимо выполнить следующие условия:</h3>
                        <ul>
                            <li>
                                вести деятельность в интересах общественности;
                            </li>
                            <li>
                                деятельность компании состоит в предоставлении товара или услуг на бесплатной основе или иной основе позволяющей приобретение этих товаров и услуг широкими слоями населения;
                            </li>
                            <li>
                                компания не распределяет свои доходы между своими членами правления или учредителями;          
                            </li>
                            <li>
                                при ликвидации компании имущество компании передаётся общественным организациям или государству;
                            </li>
                            <li>
                                оплата труда в компании соответствует средней оплате труда в данной сфере и находится в разумном соответствии с финансовым состоянием компании.
                            </li>
                            <li>
                                После внесения в список недоходное предприятие освобождается от подоходного налога. Это особо важно для таких организаций, которые большую часть средств получают от пожертвований.      
                            </li>
                            <li>
                                В отношении налога с оборота, могут быть применены льготы или освобождения от налога, если товары приобретаются исключительно в благотворительных целях.
                            </li>
                        </ul>
                </div>
            </div>
        </div>
        </div>
</section>

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
         <script src="js/aos.js" type="text/javascript"></script>
        <script src="js/ekko-lightbox.min.js" type="text/javascript"></script>
        <script src="js/scripts.js" type="text/javascript"></script>
        <script src="js/ajax.form.js" type="text/javascript"></script>
    </body>
</html>