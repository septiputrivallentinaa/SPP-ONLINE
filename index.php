<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>SPP ONLINE</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:linear-gradient(135deg,#ffd6e7,#ffc2d1,#ffb6c1);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:100%;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    width:400px;
    background:#fff;
    padding:35px;
    border-radius:20px;
    box-shadow:0 15px 35px rgba(0,0,0,.2);
    text-align:center;
}

.card h1{
    color:#673de6;
    margin-bottom:10px;
    font-size:32px;
}

.card h2{
    color:#444;
    margin-bottom:20px;
    font-size:22px;
}

.profile{
    width:150px;
    height:150px;
    border-radius:50%;
    object-fit:cover;
    margin:20px auto;
    display:block;
    border:5px solid #f3f3f3;
}

form{
    display:flex;
    flex-direction:column;
    gap:15px;
}

input{
    width:100%;
    padding:14px;
    border:1px solid #ddd;
    border-radius:10px;
    font-size:16px;
    outline:none;
    transition:.3s;
}

input:focus{
    border-color:#673de6;
    box-shadow:0 0 8px rgba(103,61,230,.3);
}

button{
    width:100%;
    padding:14px;
    background:#673de6;
    color:#fff;
    border:none;
    border-radius:10px;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

button:hover{
    background:#4e2cb8;
}

.alert{
    background:#ffe0e0;
    color:#c62828;
    padding:12px;
    border-radius:10px;
    margin-bottom:15px;
}

</style>

</head>

<body>

<div class="container">

    <div class="card">

        <h1>SPP ONLINE</h1>

        <img src="src/wanita.jpg" class="profile">

        <h2>LOGIN</h2>

        <?php
        if(isset($_GET['pesan'])){
            if($_GET['pesan']=="gagal"){
                echo "<div class='alert'>Username atau Password salah!</div>";
            }
        }
        ?>

        <form action="login_validasi.php" method="post">

            <input type="text" name="username" placeholder="👤 Username" required>

            <input type="password" name="password" placeholder="🔒 Password" required>

            <button type="submit" name="login">LOGIN</button>

            <tr><td> </td></tr>
            <tr><td> </td></tr>
            <tr> <td align="center"> <a href = "bayar.php"> CEK PEMBAYARAN </a></td></tr>

        </form>

    </div>

</div>

</body>
</html>