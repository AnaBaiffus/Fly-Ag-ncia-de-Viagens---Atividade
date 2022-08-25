Algoritmo "Fly Agencia"

// Descrição Função  : Cadastro de destino

funcao cadastroCliente():caractere
var
   nomeCliente, email, cpf, ender: caractere   //ender é referente a endereço
inicio

   para i de 1 ate VALOR faca

      escreva("Digite o Nome Completo: ")
      leia(nome[i])
      escreva("Digite o e-mail: ")
      leia(email[i])
      escreva("Digite o CPF: ")
      leia(cpf[i])



      nomeCliente <- nome[i]
      email <- email[i]
      cpf <- cpf[i]



      escreva("Informe o telefone: ")
      escreval("")
      
      
      para j de 1 ate 4 faca

         escreva("ddd: ")
         leia(telefone[1,1])
         escreva("Número: ")
         leia(telefone[1,2])
         escreva("Cidade: ")
         leia(telefone[1,3])
         escreva("Estado: ")
         leia(telefone[1,4])

         tel <- telefone[i,j]
             interrompa
      fimpara

      escreval("==================================================================")
         
      escreva("Deseja cadastrar outro cliente? S/N: ")
      leia(resposta)

      limpatela

      se (resposta <> "s") e (resposta <> "S") entao
            interrompa
      fimse

   fimpara
   retorne nomeCliente
fimfuncao


// Descrição Função  : Cadastro de destino


funcao cadastroDestino():Caractere
var
   cidade,estado,pais: caractere
inicio
   para i de 1 ate VALOR faca
      escreva("Digite a origem: ")
      leia(origem[i])
      escreva("Digite o destino: ")
      leia(destino[i])
      escreva("Digite a data ida: ")
      leia(data ida[i])
       escreva("Digite a data volta: ")
      leia(data volta[i])

      origem <- origem[i]
      destino <- destino[i]
      data ida <- data ida[i]
      data volta <- data volta[i]

      escreval("==================================================================")
      
      escreva("Deseja cadastrar outro Destino? S/N ")
      leia(resposta)

      limpatela

      se (resposta <> "s") e (resposta <> "S") entao
         interrompa
      fimse
   fimpara
   retorne cidade
fimfuncao

// Descrição Função  : Consultar o Cliente

procedimento consultarCliente()
var
   cliente: caractere
inicio

   limpatela
   escreva("Informe o Cliente que deseja consultar: ")
   leia(cliente)
   escreval("")

   para i de 1 ate VALOR faca
      se (nome[i]) = (cliente)entao
         escreval("---------------------------------------------------")
         escreval("Nome: ", nome[i])
         escreval("Email: ", email[i])
         escreval("CPF: ", cpf[i])

         para j de 1 ate 5 faca

            se(endereco[j] = "")entao
               interrompa
            fimse

            escreva("Endereço: ")
            escreva((endereco[1,1])," ")
            escreva((endereco[1,2])," ")
            escreva((endereco[1,3])," ")
            escreva((endereco[1,4])," ")
            escreval((endereco[1,5])," ")

         fimpara

         escreval("---------------------------------------------------")
      fimse
   fimpara
   escreval("")
fimprocedimento

// Descrição Função  : Consultar o Seu Destino

procedimento consultarDestino()
var
   nomeCidade: caractere
   //verificar: logico
inicio

   limpatela
   escreva("Informe o Destino que deseja consultar: ")
   leia(nomeCidade)
   escreval("")

   para i de 1 ate VALOR faca


      se (nomeCidade = cidade[i]) entao
         escreval("---------------------------------------------------")
         escreval("Cidade origem: ", cidade orgem[i])
         escreval("Cidade Destino: ", cidade destino [i])
         escreval("Data ida: ", Data Ida[i])
         escreval("Data volta: ", Data volta[i])
         escreval("---------------------------------------------------")
         escreval("")
         interrompa
      senao
         escreva("Cliente não cadastrado!")
         interrompa
      fimse

   fimpara
   escreval("")
fimprocedimento

// Descrição Função  : Consultar o Seu Destino Completo

procedimento consultaCompletaDestino()
inicio

   para i de 1 ate VALOR faca

      se cidade[i] = "" entao
         interrompa
      fimse

       escreval("Cidade origem: ", cidade orgem[i])
       escreval("Cidade Destino: ", cidade destino [i])
       escreval("Data ida: ", Data Ida[i])
       escreval("Data volta: ", Data volta[i])
       escreval("================================================================")
   fimpara
fimprocedimento

const
   VALOR = 100
var
   i,j:inteiro
   codigo:caractere
   resposta: caractere
   nome, email, cpf: vetor[1..VALOR] de caractere
   telefone: vetor[1..VALOR, 1..4] de caractere    //Vetor de duas dimensões
   cidade, estado, pais: vetor[1..5] de caractere
   cadastroCliente,cadastroDestino:caractere   // Variavel que recebe o valor do procedimento
inicio

    resposta <- "s"

   enquanto (resposta = "s") ou (resposta = "S") faca
      escreval("==================================================================")
      escreval("                     Fly Agência de Viagens                         ")
      escreval("==================================================================")

      escreval("")

      escreval("                     0 - Sair                                     ")
      escreval("                     1 - Cadastrar novo cliente                   ")
      escreval("                     2 - Cadastrar novo destino                   ")
      escreval("                     3 - Consultar cliente                        ")
      escreval("                     4 - Consultar destino                        ")
      escreval("                     5 - Consulta completa destino                ")

      escreval("")
      escreva("Informe a opção desejada: ")
      leia(codigo)
      limpatela

      escolha (codigo)

      caso "0"
         interrompa
      caso "1"
         escreval("------CADASTRO DE CLIENTE------")
         escreval("")
         cadastroCliente <- cadastroCliente()
      caso "2"
         escreval("------CADASTRO DE DESTINO------")
         escreval("")
         cadastroDestino <- cadastroDestino()
      caso "3"
         escreval("------CONSULTA DE CLIENTE------")
         escreval("")
         consultarCliente()
      caso "4"
         escreval("------CONSULTA DE DESTINO------")
         escreval("")
         consultarDestino()
      caso "5"
         escreval("------CONSULTA COMPLETA DE DESTINO------")
         escreval("")
         consultaCompletaDestino()
      outrocaso
         escreval("Código inexistente!")
      fimescolha

      escreva("Deseja continuar no sistema? S/N ")
      leia(resposta)

      limpatela
   fimenquanto
Fimalgoritmo