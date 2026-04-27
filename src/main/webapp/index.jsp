<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Premium UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">

<style>
:root{
    --bg:#f8fafc;
    --primary:#0f172a;
    --accent:#6366f1;
    --accent2:#8b5cf6;
    --muted:#64748b;
    --card:rgba(255,255,255,0.6);
    --border:rgba(255,255,255,0.3);
    --shadow:0 20px 60px rgba(0,0,0,0.08);
}

*{box-sizing:border-box;margin:0;padding:0}

body{
    font-family:Inter,sans-serif;
    background:linear-gradient(120deg,#eef2ff,#f8fafc);
    color:var(--primary);
}

/* NAVBAR */
header{
    position:fixed;
    top:20px;
    left:50%;
    transform:translateX(-50%);
    width:90%;
    max-width:1100px;
    background:rgba(255,255,255,0.6);
    backdrop-filter:blur(20px);
    border-radius:20px;
    box-shadow:var(--shadow);
    padding:14px 25px;
    z-index:100;
}

.nav{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    font-weight:700;
    font-size:20px;
}
.brand span{
    background:linear-gradient(45deg,var(--accent),var(--accent2));
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* HERO */
.hero{
    height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    flex-direction:column;
    padding:20px;
}

.hero h1{
    font-size:56px;
    font-family:Poppins;
    background:linear-gradient(90deg,#0f172a,#6366f1);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
    margin-bottom:20px;
}

.hero p{
    max-width:600px;
    color:var(--muted);
    margin-bottom:30px;
    font-size:18px;
}

/* BUTTON */
.btn{
    padding:14px 26px;
    border-radius:999px;
    border:none;
    font-weight:600;
    cursor:pointer;
    font-size:15px;
}

.btn-primary{
    background:linear-gradient(135deg,var(--accent),var(--accent2));
    color:white;
    box-shadow:0 10px 30px rgba(99,102,241,0.4);
}

.btn-primary:hover{
    transform:translateY(-3px) scale(1.03);
}

/* PRODUCTS */
.container{
    max-width:1100px;
    margin:auto;
    padding:40px 20px;
}

.grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
    gap:30px;
}

/* CARD */
.card{
    background:var(--card);
    backdrop-filter:blur(20px);
    border-radius:20px;
    overflow:hidden;
    box-shadow:var(--shadow);
    transition:0.4s;
    position:relative;
}

.card:hover{
    transform:translateY(-12px) scale(1.02);
}

/* glow effect */
.card::before{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(120deg,transparent,rgba(99,102,241,0.2),transparent);
    opacity:0;
    transition:0.4s;
}

.card:hover::before{
    opacity:1;
}

/* IMAGE */
.card img{
    width:100%;
    height:200px;
    object-fit:cover;
    transition:0.4s;
}
.card:hover img{
    transform:scale(1.1);
}

/* CONTENT */
.card-body{
    padding:18px;
}

.card h4{
    margin-bottom:8px;
}

.price{
    font-weight:700;
    font-size:18px;
}

/* BUTTON INSIDE */
.card button{
    width:100%;
    margin-top:12px;
    padding:10px;
    border:none;
    border-radius:10px;
    background:linear-gradient(135deg,#0f172a,#1e293b);
    color:white;
    cursor:pointer;
}

/* FOOTER */
footer{
    text-align:center;
    padding:40px;
    color:var(--muted);
}

/* MOBILE */
@media(max-width:600px){
    .hero h1{font-size:34px}
}
</style>
</head>

<body>

<header>
<div class="nav">
    <div class="brand">Nexus<span>Shop</span></div>
    <button class="btn btn-primary">Cart</button>
</div>
</header>

<section class="hero">
    <h1>Experience Shopping</h1>
    <p>Beautiful, modern and premium products crafted for the next generation.</p>
    <button class="btn btn-primary">Explore Now</button>
</section>

<div class="container">
    <div class="grid" id="products"></div>
</div>

<footer>
    © 2026 NexusShop — Premium Experience
</footer>

<script>
const products=[
{title:"iPhone 14 Pro",price:1099,img:"https://images.unsplash.com/photo-1601784551446"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:299,img:"https://images.unsplash.com/photo-1600185365483"},
{title:"Sneakers",price:150,img:"https://images.unsplash.com/photo-1542291026"}
];

const grid=document.getElementById("products");

products.forEach(p=>{
    const el=document.createElement("div");
    el.className="card";
    el.innerHTML=`
        <img src="${p.img}">
        <div class="card-body">
            <h4>${p.title}</h4>
            <div class="price">$${p.price}</div>
            <button>Add to Cart</button>
        </div>
    `;
    grid.appendChild(el);
});
</script>

</body>
</html>
