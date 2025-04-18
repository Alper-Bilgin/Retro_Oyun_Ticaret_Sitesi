-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Nis 2025, 22:54:57
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizdat`
--

CREATE TABLE `hakkimizdat` (
  `HakkimizdaID` int(11) NOT NULL,
  `Baslik` varchar(250) NOT NULL,
  `Icerik` varchar(1000) NOT NULL,
  `GorselURL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizdat`
--

INSERT INTO `hakkimizdat` (`HakkimizdaID`, `Baslik`, `Icerik`, `GorselURL`) VALUES
(1, 'RETROO OYUN', 'Oyunların altın çağına duyduğumuz özlemle yola çıktık.\r\n\r\nBiz, 8-bit’lik müziklerin ruhuna, piksel piksel kahramanlara ve tüplü televizyon karşısında geçirilen o unutulmaz saatlere aşık bir ekibiz. Retro oyunlar sadece eğlence değil, bir dönemin ruhunu yansıtan, hatıralarla dolu dijital hazineler. İşte bu yüzden markamızı kurduk: Geçmişin en güzel anılarını bugüne taşımak için.\r\n\r\nKoleksiyon değeri taşıyan klasik konsollar, kartuşlar, nostaljik aksesuarlar ve yeniden üretilmiş retro oyunlar... Hepsi özenle seçildi, test edildi ve sizinle buluşmak için hazırlandı.\r\n\r\nAmacımız, eski oyunculara çocukluk anılarını geri vermek, yeni nesillere de oyun tarihinin ne kadar büyüleyici olduğunu göstermek. Bizim için her oyun, piksel piksel bir zaman yolculuğu.\r\n\r\nAramıza hoş geldin!', '/Gorsel/65f98fe58c3ea_1710854117.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisimt`
--

CREATE TABLE `iletisimt` (
  `MesajID` int(11) NOT NULL,
  `Isim` varchar(100) NOT NULL,
  `Eposta` varchar(100) NOT NULL,
  `MesajIcerik` varchar(1000) NOT NULL,
  `OlusturmaTarihi` date NOT NULL,
  `IpAdresi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `iletisimt`
--

INSERT INTO `iletisimt` (`MesajID`, `Isim`, `Eposta`, `MesajIcerik`, `OlusturmaTarihi`, `IpAdresi`) VALUES
(7, 'Alper', 'alper@mail.com', 'Merhaba ürününüzü beğendim ama kargo çok geç geldi.', '2024-11-22', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategorilert`
--

CREATE TABLE `kategorilert` (
  `KategoriID` int(11) NOT NULL,
  `KategoriAdi` varchar(500) NOT NULL,
  `KategoriAciklamasi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategorilert`
--

INSERT INTO `kategorilert` (`KategoriID`, `KategoriAdi`, `KategoriAciklamasi`) VALUES
(11, '3DS', '3DS Oyunlar'),
(12, 'DS', 'DS Oyunlar'),
(14, 'Wii', 'Wii Oyunlar'),
(33, 'GBA', 'GBA Oyunlar'),
(34, 'GB', 'Gameboy');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilart`
--

CREATE TABLE `kullanicilart` (
  `KullaniciID` int(11) NOT NULL,
  `Isim` varchar(100) NOT NULL,
  `Eposta` varchar(100) NOT NULL,
  `Parola` varchar(65) NOT NULL,
  `Aktiflik` tinyint(1) NOT NULL,
  `KayitTarihi` date NOT NULL,
  `RolID` tinyint(4) NOT NULL,
  `TeslimatAdresi` varchar(500) DEFAULT NULL,
  `FaturaAdresi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilart`
--

INSERT INTO `kullanicilart` (`KullaniciID`, `Isim`, `Eposta`, `Parola`, `Aktiflik`, `KayitTarihi`, `RolID`, `TeslimatAdresi`, `FaturaAdresi`) VALUES
(1, 'Alper Bilgin', 'info@alperbilgin.com', 'apo', 1, '2024-11-01', 1, 'TÜRKİYE', 'TÜRKİYE'),
(26, 'admin', 'admin', '1234', 1, '2024-11-04', 3, '', ''),
(128, 'Alper', 'alper@mail.com', 'alper', 1, '2024-11-18', 2, 'TÜRKİYE', 'TÜRKİYE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisdetayt`
--

CREATE TABLE `siparisdetayt` (
  `DetayID` int(11) NOT NULL,
  `SiparisID` int(11) NOT NULL,
  `SatisFiyati` decimal(6,2) NOT NULL,
  `FaturaAdresi` varchar(500) NOT NULL,
  `TeslimatAdresi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparislert`
--

CREATE TABLE `siparislert` (
  `SiparisID` int(11) NOT NULL,
  `UrunID` int(11) NOT NULL,
  `KullaniciID` int(11) NOT NULL,
  `OlusturmaTarihi` date NOT NULL,
  `Durum` smallint(6) NOT NULL,
  `FaturaURL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparislert`
--

INSERT INTO `siparislert` (`SiparisID`, `UrunID`, `KullaniciID`, `OlusturmaTarihi`, `Durum`, `FaturaURL`) VALUES
(15, 39, 128, '2024-11-28', 5, NULL),
(16, 21, 128, '2024-11-28', 2, NULL),
(17, 25, 128, '2025-04-16', 4, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunlert`
--

CREATE TABLE `urunlert` (
  `UrunID` int(11) NOT NULL,
  `UrunAdi` varchar(500) NOT NULL,
  `UrunAciklamasi` text NOT NULL,
  `Fiyat` decimal(6,2) NOT NULL,
  `StokAdet` smallint(6) NOT NULL,
  `KategoriID` smallint(6) NOT NULL,
  `UrunGorselURL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunlert`
--

INSERT INTO `urunlert` (`UrunID`, `UrunAdi`, `UrunAciklamasi`, `Fiyat`, `StokAdet`, `KategoriID`, `UrunGorselURL`) VALUES
(17, 'Shinobi', '1987\'de Sega tarafından geliştirilen klasik bir aksiyon-platform oyunudur. Oyuncular, ustalaşmış bir ninja olan Joe Musashi\'yi kontrol ederek düşmanları alt eder, rehineleri kurtarır ve kötülüğe karşı savaşır. Hızlı refleksler, keskin kılıçlar ve unutulmaz bir retro atmosfer!', 1399.00, 52, 11, '/Gorsel/65f9845e62ea4_1710851166.jpg'),
(18, 'Fire Emblem', '1989\'da Nintendo tarafından piyasaya sürülen, stratejik rol yapma (SRPG) türünün en önemli oyun serilerinden biridir. Oyuncular, kahramanlarını ve birliklerini yöneterek, taktiksel savaşlar ve derin hikayelerle dolu bir dünyada düşmanları yenmeye çalışırlar. Kişisel ilişkiler, zorlu seçimler ve ölümün kalıcı olduğu savaşlar, Fire Emblem’i unutulmaz kılar.', 1340.00, 59, 11, '/Gorsel/be21257e-ca52-4519-88c3-bad6241d933a.jpg'),
(19, 'The Legend of Zelda: Phantom Hourglass', '2007\'de Nintendo tarafından DS için çıkarılan bu oyun, The Legend of Zelda serisinin sevilen parçalarından biridir. Link, Tetra ve ekibiyle birlikte, denizlerde gizemli bir maceraya atılır. Yolda, Phantom Hourglass adlı sihirli saati kullanarak, çeşitli bulmacaları çözmek ve düşmanları alt etmek gerekir. Dokunmatik ekranın kullanıldığı ilk Zelda oyunu olan Phantom Hourglass, yenilikçi savaş mekanikleri ve büyüleyici hikayesiyle dikkat çeker.', 1590.00, 25, 11, '/Gorsel/6d6faaf2-44ae-47f4-b26e-48f8fcec0b70.jpg'),
(20, 'Pokémon Moon', '2016\'da Nintendo 3DS için çıkan Pokémon Moon, Pokémon Sun ile birlikte yedinci neslin bir parçasıdır. Alola bölgesinde geçen bu oyun, serinin klasik formülünü yenilikçi bir şekilde sunar. Zorlu yeni Pokémon\'lar, Alola\'ya özgü hareketler ve yerel kahramanlarla yapılan mücadeleler oyuncuları bekliyor. Ay ve güneşin döngüsüne dayalı dinamikler, Pokémon dünyasına farklı bir soluk getirirken, yeni \"Z-Move\" mekanikleri de savaşları daha heyecanlı hale getiriyor.', 1390.00, 65, 12, '/Gorsel/bc29552a-ca52-4519-88c3-bad6241d933a.jpg'),
(21, 'Castlevania', '1986\'da Konami tarafından geliştirilen Castlevania, aksiyon-platform türünde bir klasik olup, vampir avcısı Simon Belmont\'un Drakula\'ya karşı verdiği mücadeleyi anlatır. Gotik bir atmosferde geçen oyun, zorlu düşmanlar, bulmacalar ve epik bir yolculuk sunar. Hızlı aksiyon, zengin silah çeşitliliği ve unutulmaz müzikleriyle Castlevania, video oyun tarihinin en saygın serilerinden biri haline gelmiştir.', 2340.00, 97, 12, '/Gorsel/cb01ae8b-b0e1-493f-bf7a-36bf75b959a8.jpg'),
(22, 'Pokémon Dash', '2004\'te Nintendo DS için çıkan Pokémon Dash, seriye farklı bir bakış açısı getiren bir yarış oyunudur. Oyuncular, Pokémon karakterlerini kontrol ederek engellerle dolu pistlerde hızla yarışırlar. Tıpkı bir \"yarış\" oyununda olduğu gibi, kontrol edilen Pokémon hızla koşarken, oyuncuların ekranı dokunarak yönlendirmeleri gerekir. Pokémon Dash, basit ama eğlenceli mekanikleriyle, Pokémon dünyasına farklı bir deneyim sunar.', 1599.00, 85, 12, '/Gorsel/da00c653-3a8b-45f5-882a-e9fbcbbd930e.jpg'),
(23, 'Animal Crossing: Wild World', '2005\'te Nintendo DS için çıkan Animal Crossing: Wild World, serinin ikinci oyunudur ve oyunculara sakin bir kasabada, zamanla değişen mevsimler ve günlük aktivitelerle hayat kurma fırsatı sunar. Kendi köyünüze yeni sakinler ekleyebilir, evinizi dekore edebilir, balık tutabilir ve tarım yapabilirsiniz. Ayrıca, Wi-Fi bağlantısı ile diğer oyuncularla etkileşimde bulunabilir, arkadaşlarınızın köylerini ziyaret edebilirsiniz. Wild World, açık uçlu oynanışı ve huzurlu atmosferiyle oyunculara benzersiz bir deneyim sunar.', 1460.00, 200, 14, '/Gorsel/cc0931f3-a9ff-400f-9166-46aa17801e11.jpg'),
(25, 'The Legend of Zelda: Spirit Tracks', '2009\'da Nintendo DS için çıkan The Legend of Zelda: Spirit Tracks, The Phantom Hourglass\'ın devamı niteliğinde bir macera oyunudur. Link, bu kez yeni bir maceraya atılırken, Princess Zelda ile birlikte Trenle seyahat eder ve Spirit Tracks adı verilen gizemli demir yolunu keşfeder. Oyuncular, trenin kontrolünü sağlarken, zorlu bulmacaları çözmek ve düşmanları alt etmek için çeşitli yetenekler kullanır. Spirit Tracks, yenilikçi dokunmatik kontrolleri, sürükleyici hikayesi ve özgün tren mekanikleriyle dikkat çeker.', 1749.00, 249, 14, '/Gorsel/e1fae3cf-6824-44c5-a0c8-025edc9161c1.jpg'),
(39, 'Resident Evil: The Mercenaries', '2011\'de Nintendo 3DS için çıkan Resident Evil: The Mercenaries, serinin aksiyon odaklı bir yan oyunudur. Oyuncular, zombi ve diğer mutasyona uğramış yaratıklara karşı hayatta kalmak için hızla görevleri tamamlamaya çalışır. Serinin sevilen karakterlerinden biriyle oynanabilen bu oyun, zamanla yarışarak mümkün olan en yüksek skoru elde etmeye dayanır. Hızlı tempolu oynanışı, çeşitli silahlar ve farklı karakter yetenekleriyle Mercenaries, aksiyon ve gerilim dolu bir deneyim sunar.', 390.00, 119, 14, '/Gorsel/resident-evil-the-mercenaries-3d-nintendo-3ds-resim-7807.jpg-200x200.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hakkimizdat`
--
ALTER TABLE `hakkimizdat`
  ADD PRIMARY KEY (`HakkimizdaID`);

--
-- Tablo için indeksler `iletisimt`
--
ALTER TABLE `iletisimt`
  ADD PRIMARY KEY (`MesajID`);

--
-- Tablo için indeksler `kategorilert`
--
ALTER TABLE `kategorilert`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Tablo için indeksler `kullanicilart`
--
ALTER TABLE `kullanicilart`
  ADD PRIMARY KEY (`KullaniciID`);

--
-- Tablo için indeksler `siparisdetayt`
--
ALTER TABLE `siparisdetayt`
  ADD PRIMARY KEY (`DetayID`);

--
-- Tablo için indeksler `siparislert`
--
ALTER TABLE `siparislert`
  ADD PRIMARY KEY (`SiparisID`);

--
-- Tablo için indeksler `urunlert`
--
ALTER TABLE `urunlert`
  ADD PRIMARY KEY (`UrunID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizdat`
--
ALTER TABLE `hakkimizdat`
  MODIFY `HakkimizdaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisimt`
--
ALTER TABLE `iletisimt`
  MODIFY `MesajID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `kategorilert`
--
ALTER TABLE `kategorilert`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilart`
--
ALTER TABLE `kullanicilart`
  MODIFY `KullaniciID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Tablo için AUTO_INCREMENT değeri `siparisdetayt`
--
ALTER TABLE `siparisdetayt`
  MODIFY `DetayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `siparislert`
--
ALTER TABLE `siparislert`
  MODIFY `SiparisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `urunlert`
--
ALTER TABLE `urunlert`
  MODIFY `UrunID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
