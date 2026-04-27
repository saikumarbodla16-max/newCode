<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Premium Store</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --bg:#f4f7fb;
    --primary:#0f172a;
    --accent:#2563eb;
    --muted:#64748b;
    --card:rgba(255,255,255,0.7);
    --border:rgba(0,0,0,0.05);
    --shadow:0 10px 30px rgba(0,0,0,0.08);
    --radius:14px;
}

*{box-sizing:border-box;margin:0;padding:0}
body{
    font-family:Inter,sans-serif;
    background:linear-gradient(180deg,#eef2ff,#f8fafc);
    color:var(--primary);
}

/* HEADER */
header{
    position:sticky;top:0;
    background:rgba(255,255,255,0.7);
    backdrop-filter:blur(12px);
    border-bottom:1px solid var(--border);
    z-index:100;
}

.container{max-width:1200px;margin:auto;padding:0 20px}

.header-inner{
    display:flex;justify-content:space-between;
    align-items:center;padding:15px 0;
}

.brand{font-weight:700;font-size:22px}
.brand span{color:var(--accent)}

.search{
    background:white;
    border:1px solid var(--border);
    border-radius:999px;
    padding:8px 14px;
    display:flex;
    width:260px;
}
.search input{border:none;outline:none;width:100%}

/* HERO */
.hero{
    height:420px;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    color:white;
    background:
    linear-gradient(120deg,rgba(15,23,42,0.8),rgba(37,99,235,0.7)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80');
    background-size:cover;
}
.hero h1{font-size:48px;margin-bottom:10px}
.hero p{max-width:600px;margin:auto;margin-bottom:20px}

/* BUTTON */
.btn{
    padding:10px 18px;
    border:none;
    border-radius:999px;
    cursor:pointer;
    font-weight:600;
}
.btn-primary{
    background:linear-gradient(135deg,#2563eb,#3b82f6);
    color:white;
    box-shadow:0 6px 20px rgba(37,99,235,0.4);
}
.btn-primary:hover{
    transform:translateY(-2px);
}

/* GRID */
.grid{display:grid;gap:20px}
.products{grid-template-columns:repeat(4,1fr);margin-top:40px}

/* PRODUCT */
.product{
    background:var(--card);
    backdrop-filter:blur(10px);
    border:1px solid var(--border);
    border-radius:var(--radius);
    box-shadow:var(--shadow);
    overflow:hidden;
    transition:0.3s;
}
.product:hover{
    transform:translateY(-8px);
}
.product img{
    width:100%;height:200px;
    object-fit:cover;
    transition:0.4s;
}
.product:hover img{transform:scale(1.08)}

.product-body{padding:15px}
.product h5{margin-bottom:8px}

.price{font-weight:700}

.product-footer{
    display:flex;gap:10px;padding:12px;
}

.add-btn{
    flex:1;
    background:linear-gradient(135deg,#0f172a,#1e293b);
    color:white;
    border:none;
    padding:10px;
    border-radius:8px;
}

/* RESPONSIVE */
@media(max-width:900px){
    .products{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:600px){
    .products{grid-template-columns:1fr}
    .hero h1{font-size:30px}
}
</style>
</head>

<body>

<header>
<div class="container header-inner">
    <div class="brand">Nexus<span>Shop</span></div>
    <div class="search">
        <input type="text" placeholder="Search...">
    </div>
</div>
</header>

<section class="hero">
<div>
    <h1>Premium Collection</h1>
    <p>Discover modern products with stunning design and best quality.</p>
    <button class="btn btn-primary">Shop Now</button>
</div>
</section>

<div class="container">
<div class="grid products" id="products"></div>
</div>

<script>
const PRODUCTS=[
{title:"iPhone 14 Pro",price:1099,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:299,img:"https://images.unsplash.com/photo-1600185365483"},
{title:"Nike Shoes",price:150,img:"https://images.unsplash.com/photo-1542272604"},
];

const grid=document.getElementById("products");

PRODUCTS.forEach(p=>{
    const el=document.createElement("div");
    el.className="product";
    el.innerHTML=`
        <img src="${p.img}">
        <div class="product-body">
            <h5>${p.title}</h5>
            <div class="price">$${p.price}</div>
        </div>
        <div class="product-footer">
            <button class="add-btn">Add to Cart</button>
        </div>
    `;
    grid.appendChild(el);
});
</script>

</body>
</html>
