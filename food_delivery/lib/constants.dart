// RESTAURANTES
const FOOD_DATA = [
  {
    "name":"China woook",
    "description":"Lo mejor de la comida \nchina en China Woook...",
    "tiempoEspera":"30 a 50 min",
    "image":"comidaChina.jpg"
  },{
    "name":"Delicias mexicanas",
    "description":"Cocina mexicana \nauténtica...",
    "tiempoEspera":"45 min",
    "image":"comidaMexicana.jpg"
  },
  {
    "name":"Burguer Queen",
    "description":"La mejor hamburguesa \nsolo en Burguer Queen...",
    "tiempoEspera":"30 min",
    "image":"comidaRapida.jpg"
  },
  {
    "name":"Antojitos dulces",
    "description":"Pasteles, porciones, \nmanjares y demás...",
    "tiempoEspera":"20 a 30 min",
    "image":"comidaPostre.jpg"
  },
  {
    "name":"Healthy Fresh",
    "description":"Comida saludable \npara tu bienestar...",
    "tiempoEspera":"1 hora",
    "image":"comidaSaludable.jpg"
  },
  {
    "name":"Arepa Cool",
    "description":"Venezuela en Guatemala",
    "tiempoEspera":"CERRADO",
    "image":"comidaVenezolana.jpg"
  },
];

// PRODUCTOS DE CADA RESTAURANTE
const CHINA_DATA = [
  {
    "platillo":"Arroz chino",
    "description":"Delicioso arroz chino con camaron acompañado de nuestra salsa soya.",
    "precio":"Q100.00",
    "image":"assets/images/products/arroz.jpg"
  },{
    "platillo":"Chow Mein",
    "description":"Plato personal de chow mein de carne de rez",
    "precio":"Q100.00",
    "image":"assets/images/products/chowMein.jpg"
  }
];

const MEXICO_DATA = [
  {
    "platillo":"Nachos simples",
    "description":"Nachos de la casa para acompañar con tu comida diaria.",
    "precio":"Q50.00",
    "image":"assets/images/products/nachos.jpg"
  },{
    "platillo":"Tacos al pastor",
    "description":"Los mejores tacos al pastor de la casa acompañados con nuestra salsa verde.",
    "precio":"Q60.00",
    "image":"assets/images/products/tacos.jpg"
  }
];

const BURGUER_DATA = [
  {
    "platillo":"Papas fritas",
    "description":"Papas fritas de la casa.",
    "precio":"Q10.00",
    "image":"assets/images/products/papas.jpg"
  },{
    "platillo":"Hamburguesa",
    "description":"Hamburguesa con carne cocinada al carbón",
    "precio":"Q40.00",
    "image":"assets/images/products/wopper.jpg"
  }
];

const DULCE_DATA = [
  {
    "platillo":"Flan",
    "description":"Flan de la abuelita a la puerta de tu casa. (Porción)",
    "precio":"Q20.00",
    "image":"assets/images/products/flan.jpg"
  },{
    "platillo":"Fresas con crema",
    "description":"El pastel más vendido de la casa (porción)",
    "precio":"Q40.00",
    "image":"assets/images/products/fresas.jpg"
  }
];

const SALUDABLE_DATA = [
  {
    "platillo":"Burrito verde",
    "description":"Burrito con ensalada adentro, pollo a la plancha acompañado de tu salsa favorita.",
    "precio":"Q50.00",
    "image":"assets/images/products/burrito.jpg"
  },{
    "platillo":"Ensalada a la jardinera",
    "description":"Ensalada acompañada de tu aderezo favorito",
    "precio":"Q60.00",
    "image":"assets/images/products/ensalada.jpg"
  }
];

const AREPA_DATA = [
  {
    "platillo":"Arepa",
    "description":"Lo mejor de la comida \nchina en China Woook...",
    "precio":"30 a 50 min",
    "image":"comidaChina.jpg"
  },{
    "platillo":"China woook",
    "description":"Lo mejor de la comida \nchina en China Woook...",
    "precio":"30 a 50 min",
    "image":"comidaChina.jpg"
  }
];