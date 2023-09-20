//importação da biblioteca para utilização no projeto
import rl from "readline-sync";

const listaPropriedades = [];

function inserirPropriedades() {
  while (true) {
    const entrada = rl.question(
      'Por favor, digite uma propriedade CSS ou "SAIR" para encerrar: '
    ).toLowerCase();

    if (entrada === "sair") {
      break;
    } else if (entrada.trim() === "") {
      console.log('Ops, parece que essa entrada é inválida.');
    } else if (!isNaN(entrada)) {
      console.log('Ops, a entrada não pode conter números.');
    } else {
      listaPropriedades.push(entrada);
    }
  }

  exibirListaPropriedades();
}

function exibirListaPropriedades() {
  const propriedadesOrdenadas = listaPropriedades.sort();

  if (listaPropriedades.length === 0) {
    console.log(
      "Ops, parece que você não inseriu nada por aqui. Agradecemos por utilizar nosso sistema!"
    );
  } else {
    console.log("\nAqui estão suas propriedades ordenadas:");
    for (const propriedade of propriedadesOrdenadas) {
      console.log("- " + propriedade);
    }
    console.log("\nAgradecemos por utilizar nosso sistema!");
  }
}

inserirPropriedades();
