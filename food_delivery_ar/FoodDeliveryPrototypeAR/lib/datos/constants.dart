// RESTAURANTES
const FOOD_DATA = [
  {
    "name":"Diego's Pizza",
    "description":"Lo mejor de la comida \nitaliana a la puerta \nde tu casa...",
    "tiempoEspera":"30 a 50 min",
    "image":"comidaItaliana.webp"
  },{
    "name":"Colombia Soul",
    "description":"Colombia en Guatemala",
    "tiempoEspera":"45 min",
    "image":"comidaColombiana.webp"
  },
  {
    "name":"Burguer Queen",
    "description":"La mejor hamburguesa \nsolo en Burguer Queen...",
    "tiempoEspera":"30 min",
    "image":"comidaRapida.webp"
  },
  {
    "name":"Antojitos dulces",
    "description":"Pasteles, porciones, \nmanjares y demás...",
    "tiempoEspera":"20 a 30 min",
    "image":"comidaPostre.webp"
  },
  {
    "name":"Healthy Fresh",
    "description":"Comida saludable \npara tu bienestar...",
    "tiempoEspera":"1 hora",
    "image":"comidaSaludable.webp"
  },
  {
    "name":"Aldo's",
    "description":"Vinos, quesos y más",
    "tiempoEspera":"30 min",
    "image":"comidaVinos.webp"
  },
];

// PRODUCTOS DE CADA RESTAURANTE
const ITALIA_DATA = [
  {
    "platillo":"Spaghetti",
    "description":"Delicioso spaghetti con meatballs.",
    "precio":"Q95.00",
    "image":"assets/images/products/pasta.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Pasta.sfb?alt=media&token=465ea598-eeb1-4bfc-9267-959a696be6de"//"Pasta.sfb"
  },{
    "platillo":"Pizza personal",
    "description":"Pizza personal, soda, vaso y plato coleccionable.",
    "precio":"Q85.00",
    "image":"assets/images/products/pizza.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Pizza.sfb?alt=media&token=4e1deedf-d3d8-46d5-aecf-26e5866d4a92"//"Pizza.sfb"
  }
];

const COLOMBIA_DATA = [
  {
    "platillo":"Bandeja Paisa",
    "description":"Bandeja paisa personal con el original\n toque colombiano.",
    "precio":"Q50.00",
    "image":"assets/images/products/paisa.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/BandejaPaisa.sfb?alt=media&token=948ed556-df9f-4387-83ec-77cd594d6c90"//"BandejaPaisa.sfb"
  },{
    "platillo":"Próximamente nuevos \nprodutos",
    "description":"Lo mejor está por llegar",
    "precio":"Q00.00",
    "image":"assets/images/products/productoNuevo.webp",
    "Model3dAsset":"producto.sfb"
  }
];

const BURGUER_DATA = [
  {
    "platillo":"Papas fritas",
    "description":"Papas fritas de la casa.",
    "precio":"Q10.00",
    "image":"assets/images/products/papas.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Fries.sfb?alt=media&token=27cc4a3f-8f00-4c67-97e8-ae91d227c994"//"Fries.sfb"
  },{
    "platillo":"Hamburguesa",
    "description":"Hamburguesa con carne cocinada al carbón",
    "precio":"Q40.00",
    "image":"assets/images/products/wopper.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Hamburguer.sfb?alt=media&token=123e0514-42a4-4b25-af1a-91d0d5357e5f"//"Hamburguer.sfb"
  }
];

const DULCE_DATA = [
  {
    "platillo":"Frutas con crema",
    "description":"Pastel frutas con crema (entero)",
    "precio":"Q85.00",
    "image":"assets/images/products/frutas.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Kake.sfb?alt=media&token=34c57067-7d25-41a1-855b-be1b683c07f1"//"Kake.sfb"
  },{
    "platillo":"Pastel de cereza",
    "description":"Pastel sabor cereza (porción)",
    "precio":"Q40.00",
    "image":"assets/images/products/cereza.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/CakeWithBerry.sfb?alt=media&token=86639762-6221-4745-8afa-b898886a3338"//"CakeWithBerry.sfb"
  }
];

const SALUDABLE_DATA = [
  {
    "platillo":"Submarino",
    "description":"Pan con salami, jamón de pavo,\n especias y legumbres.",
    "precio":"Q60.00",
    "image":"assets/images/products/submarino.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Submarino.sfb?alt=media&token=6779beef-fb2b-4dca-ace2-6c5dcf02c3e7"//"Submarino.sfb"
  },{
    "platillo":"Almuerzo del día",
    "description":"Carne asada acompañada de vegetales frescos\n y jugo de piña.",
    "precio":"Q60.00",
    "image":"assets/images/products/carne.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/SteakDinner.sfb?alt=media&token=11b7a0d6-5eae-417f-8892-d932bf415e18"//"SteakDinner.sfb"
  }
];

const VINO_DATA = [
  {
    "platillo":"Tabla de quesos",
    "description":"Queso Gouda, Provolone, PortSalut...",
    "precio":"Q250.00",
    "image":"assets/images/products/quesos.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Fromages2.sfb?alt=media&token=0ba07ead-3632-48b8-85a2-f246a402a208"//"Fromages2.sfb"
  },{
    "platillo":"Set de vinos",
    "description":"Vinos variados para compartir + Copa",
    "precio":"Q500.00",
    "image":"assets/images/products/vinos.webp",
    "Model3dAsset":"https://firebasestorage.googleapis.com/v0/b/tesistest-f0571.appspot.com/o/Vinos.sfb?alt=media&token=a1132496-499c-4324-bd38-0cfb67b695e5"//"Vinos.sfb"
  }
];