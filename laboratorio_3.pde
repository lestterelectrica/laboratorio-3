String clima;

void setup() {
  size(400, 200);
  generarClimaAleatorio();
  sugerirRopa();
}

void draw() {
  background(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  text("Hoy está " + clima, width/2, height/2 - 20);
  text("Deberías usar:", width/2, height/2 + 20);
}

void generarClimaAleatorio() {
  String[] climas = {"soleado", "frio", "nublado", "lluvia",};
  clima = climas[int(random(climas.length))];
}

void sugerirRopa() {
  if (clima.equals("soleado")) {
    println("Ninguna.");
  } else if (clima.equals("lluvia")) {
    println("impremiable.");
  } else if (clima.equals("nublado")) {
    println("sudadero con capucha.");
  } else if (clima.equals("frio")) {
    println("pesada chaqueta.");
  }
}
