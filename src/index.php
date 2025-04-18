<header class="bg-dark py-1 shadow-sm">
    <div class="container px-2 px-lg-5">
        <div class="text-center text-white">
            <h6 class="mb-0" style="letter-spacing: 1px;">Alışverişin Tadını Çıkarın</h6>
        </div>
    </div>
</header>

<section class="py-5 bg-light">
    <h3 class="text-center text-danger mb-5">
        <strong class="text-dark">Vitrindeki Tüm Ürünler</strong>
    </h3>
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

<?php
@session_start();
include 'db_config/database.php';
$urunList = mysqli_query($bag, "SELECT * FROM urunlert");

while ($list = mysqli_fetch_array($urunList)) {
    $aciklama = strlen($list['UrunAciklamasi']) > 50 ? substr($list['UrunAciklamasi'], 0, 50) . "..." : $list['UrunAciklamasi'];

    echo "
    <div class='col mb-5'>
        <div class='card border-0 shadow-sm h-100 rounded-4'>
            <a href='urundetay.php?id={$list['UrunID']}' class='text-decoration-none'>
                <img class='card-img-top rounded-top' src='./{$list['UrunGorselURL']}' alt='Ürün görseli' height='250' style='object-fit: cover;'>
            </a>
            <div class='card-body text-center'>
                <h5 class='card-title fw-bold mb-2'>{$list['UrunAdi']}</h5>
                <p class='card-text text-muted small'>{$aciklama}</p>
                <h5 class='text-success fw-semibold'>{$list['Fiyat']}₺</h5>
            </div>
            <div class='card-footer bg-white border-0 text-center'>
                <a href='urundetay.php?id={$list['UrunID']}' class='btn btn-outline-primary rounded-pill px-4'>
                    Ürüne Git
                </a>
            </div>
        </div>
    </div>";
}
?>
        </div>
    </div>
</section>

<?php include 'resoruces/_SiteLayout.php'; ?>
