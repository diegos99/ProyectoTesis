// RESTAURANTES
const FOOD_DATA = [
  {
    "name":"Diego's Pizza",
    "description":"Lo mejor de la comida \nitaliana a la puerta \nde tu casa...",
    "tiempoEspera":"30 a 50 min",
    "image":"comidaItaliana.jpg"
  },{
    "name":"Colombia Soul",
    "description":"Colombia en Guatemala",
    "tiempoEspera":"45 min",
    "image":"comidaColombiana.jpg"
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
    "name":"Aldo's",
    "description":"Vinos, quesos y más",
    "tiempoEspera":"30 min",
    "image":"comidaVinos.jpg"
  },
];

// PRODUCTOS DE CADA RESTAURANTE
const ITALIA_DATA = [
  {
    "platillo":"Spaghetti",
    "description":"Delicioso spaghetti con meatballs.",
    "precio":"Q95.00",
    "image":"assets/images/products/pasta.jpg",
    "Model3dAsset":"Pasta.sfb"
  },{
    "platillo":"Pizza personal",
    "description":"Pizza personal, soda, vaso y plato coleccionable.",
    "precio":"Q85.00",
    "image":"assets/images/products/pizza.jpg",
    "Model3dAsset":"Pizza.sfb"
  }
];

const COLOMBIA_DATA = [
  {
    "platillo":"Bandeja Paisa",
    "description":"Bandeja paisa personal con el original\n toque colombiano.",
    "precio":"Q50.00",
    "image":"assets/images/products/paisa.jpg",
    "Model3dAsset":"BandejaPaisa.sfb"
  },{
    "platillo":"Próximamente nuevos \nprodutos",
    "description":"Lo mejor está por llegar",
    "precio":"Q00.00",
    "image":"assets/images/products/productoNuevo.jpg",
    "Model3dAsset":"producto.sfb"
  }
];

const BURGUER_DATA = [
  {
    "platillo":"Papas fritas",
    "description":"Papas fritas de la casa.",
    "precio":"Q10.00",
    "image":"assets/images/products/papas.jpg",
    "Model3dAsset":"Fries.sfb"
  },{
    "platillo":"Hamburguesa",
    "description":"Hamburguesa con carne cocinada al carbón",
    "precio":"Q40.00",
    "image":"assets/images/products/wopper.jpg",
    "Model3dAsset":"Hamburguer.sfb"
  }
];

const DULCE_DATA = [
  {
    "platillo":"cereza con crema",
    "description":"Pastel cereza con crema (entero)",
    "precio":"Q85.00",
    "image":"assets/images/products/frutas.jpg",
    "Model3dAsset":"Kake.sfb"
  },{
    "platillo":"Pastel de cereza",
    "description":"Pastel sabor cereza (porción)",
    "precio":"Q40.00",
    "image":"assets/images/products/cereza.jpg",
    "Model3dAsset":"CakeWithBerry.sfb"
  }
];

const SALUDABLE_DATA = [
  {
    "platillo":"Submarino",
    "description":"Pan con salami, jamón de pavo,\n especias y legumbres.",
    "precio":"Q60.00",
    "image":"assets/images/products/submarino.jpg",
    "Model3dAsset":"Submarino.sfb"
  },{
    "platillo":"Almuerzo del día",
    "description":"Carne asada acompañada de vegetales frescos\n y jugo de piña.",
    "precio":"Q60.00",
    "image":"assets/images/products/carne.jpg",
    "Model3dAsset":"SteakDinner.sfb"
  }
];

const VINO_DATA = [
  {
    "platillo":"Tabla de quesos",
    "description":"Queso Gouda, Provolone, PortSalut...",
    "precio":"Q250.00",
    "image":"assets/images/products/quesos.jpg",
    "Model3dAsset":"Fromages2.sfb"
  },{
    "platillo":"Set de vinos",
    "description":"Vinos variados para compartir + Copa",
    "precio":"Q500.00",
    "image":"assets/images/products/vinos.jpg",
    "Model3dAsset":"Vinos.sfb"
  }
];