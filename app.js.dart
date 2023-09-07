//importação da biblioteca para utilização no projeto
import rl from "readline-sync";

//array vazia para a lista de propriedades a serem inseridas pelo usuário
const listaPropriedades = [];

//função para inserir as propriedades no terminal
function inserirPropriedades() {
  let entrada = rl
    .question('Por favor, digite uma propriedade CSS ou "SAIR" para encerrar: ')
    .toLowerCase();

  //se o usuário digitar 'sair', exibe a lista ordenada
  if (entrada === "sair") {
    exibirListaPropriedades();

  //se o usuário não inserir nada, será exibida a mensagem e a pergunta será refeita
  } else if (entrada.trim() === "" ) {
    console.log(
      'Ops, parece que essa entrada é inválida.'
    );
    inserirPropriedades();

    //se o usuário inserir números, será exibida a mensagem e a pergunta será refeita
    } else if (!isNaN(entrada)) {
      console.log('Ops, a entrada não pode conter números.');
      inserirPropriedades();

  //se o usuário inserir dados válidos, serão inseridos na lista de propriedades
  } else {
    listaPropriedades.push(entrada);
    inserirPropriedades();
  }
}

//função para ordenar a lista por ordem alfabética para o terminal
function exibirListaPropriedades() {

  //ordena a lista orginal em ordem alfabética
  const propriedadesOrdenadas = listaPropriedades.sort();

  //mede o tamanho da lista, para utilizarmos na função seguinte
  const listaPropriedadesVazia = listaPropriedades.length;

  //se o usuário não inserir nenhum dado o programa, exibe a mensagem no terminal
  if (listaPropriedadesVazia === 0) {
    console.log(
      "Ops, parece que você não inseriu nada por aqui. Agradeçemos por utilizar nosso sistema!"
    );
  
  //se tudo estiver certo, os dados serão ordenados e impressos no terminal com a mensagem 
  } else {
    propriedadesOrdenadas;
    console.log("\nAqui estão suas propriedades ordenadas:");
    listaPropriedades.forEach((propriedade) => {
      console.log("- " + propriedade);
    });
    console.log("\nAgradeçemos por utilizar nosso sistema!");
  }
}

//chamada de função para rodar o programa 
inserirPropriedades();
