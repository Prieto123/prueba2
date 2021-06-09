/*const libro = [{
    id: 1,
    nombre: "Misery",
    autor: "Stephen King",
    pags: 320,
    destacado: true,
    portada: "https://books.google.com/books/content?id=1yJhPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    stars: 5
}, {
    id: 2,
    nombre: "Harry Potter y la Orden del Fenix",
    autor: "J.K. Rawlings",
    pags: 901,
    destacado: true,
    portada: "http://books.google.com/books/content?id=tIZAvgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    stars: 5
}, {
    id: 3,
    nombre: "It",
    autor: "Stephen King",
    pags: 1503,
    destacado: true,
    portada: "http://books.google.com/books/content?id=HK-gnkponNIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    stars: 5
}, {
    id: 4,
    nombre: "Cronica del Parajo que da cuerda al Mundo",
    autor: "Haruki Murakami",
    pags: 492,
    destacado: true,
    portada: "https://books.google.com/books/content?id=aLDTPAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    stars: 5
}, {
    id: 5,
    nombre: "La Polilla del Baul",
    autor: ["Mario Carvajal", "Carlos Saraniti"],
    pags: 32,
    destacado: true,
    portada: "http://books.google.com/books/content?id=mvZ6PQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
    stars: 3
}, {
    id: 6,
    nombre: "El Psicoanalista",
    autor: "John Katzenbach",
    pags: 528,
    destacado: true,
    portada: "http://books.google.com/books/content?id=iqI4AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    stars: 3
}, {
    id: 7,
    nombre: "Las ventajas de ser invisible",
    autor: "Stephen Chbosky",
    pags: 264,
    destacado: true,
    portada: "http://books.google.com/books/content?id=DiI8AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    stars: 5
}, {
    id: 8,
    nombre: "Padre Rico, Padre Pobre",
    autor: "Robert T. Kiyosaki",
    pags: 264,
    destacado: true,
    portada: "http://books.google.com/books/content?id=NEz44me8a5MC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    stars: 4
}, {
    id: 9,
    nombre: "El libro troll",
    autor: "elrubius",
    pags: 192,
    destacado: true,
    portada: "http://books.google.com/books/content?id=I7SDAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    stars: 5
}]

get_slides1 = document.querySelector(".glide__slides")
var texto = get_slides1.innerHTML = ""

stars = '<i class="fas fa-star"></i>'
for(const {portada: por, pags: pag, stars: s} of libro) {
    var texto = get_slides1.innerHTML += '<li class="glide__slide"><div class="card"><img class="card-img-top" src="'+ por +'" alt="Card image cap"><div class="card-body"><div class="row"><div class="col-6"><h5 class="card-title text-left">'+ pag +'</h5></div><div class="col-6"><h6 class="stars">5 '+ stars +'</h6></div></div></div></div></li>'
}*/

new Glide('.glide1', {
    type: "carousel",
    autoplay: 5000,
    hoverpause: true,
    startAt: 0,
    perView: 5,
    breakpoints: {
        1450:   { perView: 4 },
        1155:   { perView: 3 },
        864:    { perView: 2 },
        578:    { perView: 1 }
    }
}).mount()