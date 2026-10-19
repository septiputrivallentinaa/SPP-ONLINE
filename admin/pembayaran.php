<h3>Transaksi Pembayaran SPP</h3>
<form method="get" action="">
    nisn: <input type="text" name="nisn" />
    <input type="hidden" id="open" name="open" value="data_pembayaran"/>
    <input type="submit" name="cari" value="Cari Siswa" />
</form>

<?php
include_once "../src/koneksi.php";

if(isset($_GET['nisn']) && $_GET['nisn']!=''){
    $nisn = mysqli_real_escape_string($koneksi, $_GET['nisn']);
    
    $sqlSiswa = mysqli_query($koneksi, "SELECT * FROM kelas JOIN siswa ON kelas.id_kelas = siswa.id_kelas JOIN spp ON siswa.id_spp = spp.id_spp WHERE siswa.nisn='$nisn'");
    
    if($sqlSiswa && mysqli_num_rows($sqlSiswa) > 0){
        $data = mysqli_fetch_array($sqlSiswa);
        $nisn_siswa = $data['nisn'];
?>

<h3>Biodata Siswa</h3>
<table>
    <tr>
        <td>nisn</td>
        <td>:</td>
        <td><?php echo $data['nisn']; ?></td>
    </tr>
    <tr>
        <td>Nama Siswa</td>
        <td>:</td>
        <td><?php echo $data['nama']; ?></td>
    </tr>
    <tr>
        <td>Kelas</td>
        <td>:</td>
        <td><?php echo $data['nama_kelas']; ?></td>
    </tr>
</table>

<h3>Tagihan SPP Siswa</h3>
<table border="1">
    <tr>
        <th>No</th>
        <th>Bulan</th>
        <th>Tahun</th>
        <th>No. Bayar</th>
        <th>Tgl. Bayar</th>
        <th>Jumlah</th>
        <th>Keterangan</th>
    </tr>
<?php
    $sql = mysqli_query($koneksi, "SELECT * FROM pembayaran JOIN spp ON pembayaran.id_spp = spp.id_spp WHERE pembayaran.nisn='$nisn_siswa'");
    
    if($sql && mysqli_num_rows($sql) > 0){
        $no = 1;
        while($row = mysqli_fetch_array($sql)){
            echo "<tr>
                <td>".$no."</td>
                <td>".$row['bulan_tagihan']."</td>
                <td>".$row['tahun_tagihan']."</td>
                <td>".$row['no_bayar']."</td>
                <td>".$row['tgl_pembayaran']."</td>
                <td>".$row['nominal']."</td>
                <td>".$row['keterangan']."</td>
            </tr>";
            $no++;
        }
    } else {
        echo "<tr><td colspan='7'>Tidak ada tagihan</td></tr>";
    }
?>
</table>
<?php
    } else {
        echo "<p style='color:red;'><b>Data siswa dengan NISN '$nisn' tidak ditemukan!</b></p>";
    }
}
?>