<?php 

// echo "
// <ul class='navbar-nav justify-content-end flex-grow-1 pe-3'>
// <li class='nav-item'>
// <a class='nav-link active' aria-current='page' href='../ytpanel'>Panel</a>
//                        </li>
//                         <li class='nav-item dropdown'>
//                             <a class='nav-link dropdown-toggle' href='#' role='button' data-bs-toggle='dropdown' aria-expanded='true'>
//                                 Ürünler
//                             </a>
//                             <ul class='dropdown-menu dropdown-menu-dark'>
//                                 <li><a class='dropdown-item' href='../yturunler'>Tüm Ürünler</a></li>
//                                 <li><a class='dropdown-item' href='../ytkategori'>Kategoriler</a></li>
//                             </ul>
//                         </li>
//                         <li class='nav-item'>
//                             <a class='nav-link active' aria-current='page' href='../ytsiparisler'>Siparişler</a>
//                         </li>
//                         <li class='nav-item'>
//                             <a class='nav-link active' aria-current='page' href='../ytkullanicilar'>Kullanıcılar</a>
//                         </li>
//                         <li class='nav-item'>
//                             <a class='nav-link active' aria-current='page' href='../ytiletisim'>Gelen Kutusu</a>
//                         </li>
//                         <li class='nav-item'>
//                             <a class='nav-link active' aria-current='page' href='../ythakkimizda'>Hakkımızda</a>
//                         </li>
//                          </ul>";


echo '
<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="../ytpanel">Panel</a>
    </li>

    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="urunlerDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Ürünler
        </a>
        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="urunlerDropdown">
            <li><a class="dropdown-item" href="../yturunler">Tüm Ürünler</a></li>
            <li><a class="dropdown-item" href="../ytkategori">Kategoriler</a></li>
        </ul>
    </li>

    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="../ytsiparisler">Siparişler</a>
    </li>

    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="../ytkullanicilar">Kullanıcılar</a>
    </li>

    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="../ytiletisim">Gelen Kutusu</a>
    </li>

    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="../ythakkimizda">Hakkımızda</a>
    </li>
</ul>
';
?>
