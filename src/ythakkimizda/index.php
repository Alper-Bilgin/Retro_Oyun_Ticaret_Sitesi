<?php 
@session_start();

if (@$_SESSION["rolid"] == 2 || @$_SESSION["rolid"] == null) {
    header("location: ../index.php");
}
?> 

<div class="container-fluid">
    <div class="py-5"></div>

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card shadow-lg border-0">
                <div class="card-body p-5">
                    <h4 class="text-center mb-4" style="font-weight: 600;">Hakkımızda</h4>
                    <hr class="mb-4"/>

                    <?php 
                    include "../db_config/database.php";
                    $hakkimizda = mysqli_query($bag, "SELECT * FROM hakkimizdat");
                    while($list = mysqli_fetch_assoc($hakkimizda)) {
                        echo "
                        <div class='text-center'>
                            <img src='../$list[GorselURL]' alt='Hakkımızda Görseli' class='img-fluid rounded mb-4 shadow' style='max-width: 400px;' />
                            
                            <h4 class='fw-bold' style='text-shadow: 0 1px 3px rgba(0,0,0,0.2);'>$list[Baslik]</h4>
                            <p class='mt-3 mb-4' style='color: #555; font-size: 1.1rem;'>$list[Icerik]</p>

                            <a href='../ythakkimizda/duzenle.php?id=$list[HakkimizdaID]' class='btn btn-primary px-4'>
                                Düzenle
                            </a>
                        </div>
                        ";
                    }
                    ?> 
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include '../resoruces/_PanelLayout.php';
?>
