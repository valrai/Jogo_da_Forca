algoritmo  "Jogo_da_Forca"

// Função : entertainment
// Autor :  Valdecir Raimundo
// Data :   25/05/2019
// Seção de Declarações

  arquivo "lista_palavras.txt"

var

  word,tip,ocult_word,attempt,cmtr,underline,words_list :caracter
  words_tips                                            :vetor [1..13,1..2] de caracter
  verif                                                 :logico
  cont,user_verif,error                                 :inteiro


  procedimento man_vs_machine  // procedimento para leitura,separação e armazenamento das palavras e dicas da lista

   var

     cont_one,cont_two,end_word,midlle_word     :inteiro
     semicolon                                  :caracter

   inicio

     semicolon:=";"
     cont_one:=1

     words_list:=maiusc(words_list)+carac(10)    // transforma a lista de palavras em maiuscula e adiciona uma quebra de linha no final
                                                 // para que seja possível ler corretamente a última palavra da lista.
     repita

         midlle_word:=(pos(semicolon,words_list)-1)  // indica a posição anterior ao primeiro ponto e virgula na lista
         end_word:=(pos((carac(10)),words_list)-1)   // indica a posição anterior a primeira quebra de linha na lista

         cont_two:=1
         words_tips[cont_one,cont_two]:=copia(words_list,1,midlle_word)  //lê a palavra até o primeiro ponto e virgula e armazena na primeira posição do vetor
         cont_two:=2
         words_tips[cont_one,cont_two]:=copia(words_list,(midlle_word+2),(end_word - (midlle_word+1))) //lê a dica de midlle_word até end_word e armazena na segunda posição do vetor
         words_list:=copia(words_list,(end_word+2),(compr(words_list) - (end_word+1))) //retira da word_list a palavra e dica já separadas e armazenadas

         cont_one:=cont_one+1

     ate ((cont_one>13) ou (midlle_word<0) ou (end_word<0) )  //caso haja menos palavras do que 13 midlle_word ou end_word serão < 0 e nesse caso o laço é interrompido

   fimprocedimento

   procedimento choice_screen

   inicio

     timer 50
     escreval("===================================================================================")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                  000000 88888  999999  88888     DDDDD    BBBBB                   ")
     escreval("                    00   8   8  99      8   8     D    D  BB   BB                  ")
     escreval("                 00 00   8   8  99  99  8   8     D    D  BBBBBBB                  ")
     escreval("                 00000   88888  999999  88888     DDDDD   BB   BB                  ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                     $$$$$  88888  999999   ######   BBBBB                         ")
     escreval("                     $$     8   8  99   99  ##      BB   BB                        ")
     escreval("                     $$$$$  8   8  999999   ##      BBBBBBB                        ")
     escreval("                     $$     8   8  99  99   ##      BB   BB                        ")
     escreval("                     $$     88888  99   99  ######  BB   BB                        ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                 Digite uma Opção:                                 ")
     escreval("                                                                                   ")
     escreval("                              1 - Jogar com um amigo                               ")
     escreval("                            2 - Jogar contra a Máquina                             ")
     escreval("                                                                                   ")
     escreval("===================================================================================")
     timer 0

   fimprocedimento

   procedimento game_screen

   inicio

     timer 150

     limpatela
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                   999999999   oooooooo    G8888888    oooooooo                    ")
     escreval("                       99      oo    oo    88          oo    oo                    ")
     escreval("                       99      oo    oo    88          oo    oo                    ")
     escreval("                       99      oo    oo    88          oo    oo                    ")
     escreval("                   99  99      oo    oo    88   888    oo    oo                    ")
     escreval("                   99  99      oo    oo    88    88    oo    oo                    ")
     escreval("                   99  99      oo    oo    88    88    oo    oo                    ")
     escreval("                   999998      oooooooo    t8888888    oooooooo                    ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     limpatela

     limpatela
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                             @@@@@@L        00000                                  ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@     @     000000000                                ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@     @     00     00                                ")
     escreval("                             @@@@@@Y      00     00                                ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     limpatela

     limpatela
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("         8888888888   9999999999    66666666       ##########     RRRRRRRR         ")
     escreval("         888          99      99    66     66     ##             RR      RR        ")
     escreval("         888          99      99    66     66     ##             RR      RR        ")
     escreval("         888          99      99    66     66     ##             RR      RR        ")
     escreval("         888888888    99      99    66666666      ##             RRRRRRRRRR        ")
     escreval("         888          99      99    66   66       ##             RR      RR        ")
     escreval("         888          99      99    66    66      ##             RR      RR        ")
     escreval("         888          99      99    66     66     ##             RR      RR        ")
     escreval("         888          99      99    66      66    ##             RR      RR        ")
     escreval("         888          9999999999    66       66    #########     RR      RR        ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("                                                                                   ")
     escreval("===================================================================================")
     escreval("===================================================================================")
     limpatela

     timer 0

   fimprocedimento

   procedimento zero_defects

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 _             ")
         escreval("||                (_)            ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")


   fimprocedimento

   procedimento one_error

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (º_º )          ")
         escreval("||                 --            ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")

   fimprocedimento

   procedimento two_errors

      inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (º_º')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")

   fimprocedimento

   procedimento three_errors

      inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (º_º')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /             ")
         escreval("||              __/              ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")

   fimprocedimento

   procedimento four_errors

      inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (o_o')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")

   fimprocedimento

   procedimento five_errors

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (0_o')          ")
         escreval("||                 --   /        ")
         escreval("||                 ||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")
   fimprocedimento

   procedimento six_errors

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||               (0_0')          ")
         escreval("||             \   --   /        ")
         escreval("||              \__||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")

   fimprocedimento

   procedimento seven_errors

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("              Informe uma letra ou tente adivinhar a palavra: ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",cmtr)
         escreval("||         ((    (0_0')    ))    ")
         escreval("||             \   --   /        ")
         escreval("||              \__||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("  #Dica: ",tip)
         escreval("")
         escreval("==================================================================================")


   fimprocedimento

   procedimento dead

   inicio

         limpatela
         escreval("===================================================================================")
         escreval("                              VOCÊ PERDEU !!!                                      ")
         escreval("===================================================================================")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             Cemitério: ",copia(cmtr,1,(compr(cmtr)-1)))
         escreval("||               (+ + )          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                /||\           ")
         escreval("||               / || \          ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("-------------------------------------------------------------------")
         escreval("||")
         escreva("|| Palavra: "                      )

         para cont de 1 ate compr(word) faca
           escreva(" ")
           escreva(copia(word,cont,1))
         fimpara

         escreval("")
         escreval("||")
         escreval("-------------------------------------------------------------------")
         escreval("")
         escreval("==================================================================================")


   fimprocedimento

   procedimento win

   inicio

      timer 35

      limpatela
      escreval("===================================================================================")
      escreval("                               VOCÊ GANHOU !!!                                     ")
      escreval("===================================================================================")
      escreval("___________________              ")
      escreval("||                 |             ")
      escreval("||                 |             ")
      escreval("||                 _             ")
      escreval("||                (_)            ")
      escreval("||                               ")
      escreval("||     \ (ºuº)/                  ")
      escreval("||      \ -- /                   ")
      escreval("||       \||/                    ")
      escreval("||        ||                     ")
      escreval("||        ||                     ")
      escreval("||        /\                     ")
      escreval("||       /  \                    ")
      escreval("-------------------------------------------------------------------")
      escreval("||")
      escreval("||")
      escreval("||")
      escreval("-------------------------------------------------------------------")

      limpatela
      escreval("===================================================================================")
      escreval("                                                VOCÊ GANHOU !!!                    ")
      escreval("===================================================================================")
      escreval("___________________              ")
      escreval("||                 |             ")
      escreval("||                 |             ")
      escreval("||                 _             ")
      escreval("||                (_)            ")
      escreval("||                               ")
      escreval("||       (ºuº)                   ")
      escreval("||        __                     ")
      escreval("||        ||                     ")
      escreval("||       /||\                    ")
      escreval("||      / || \                   ")
      escreval("||        /\                     ")
      escreval("||       /  \                    ")
      escreval("-------------------------------------------------------------------")
      escreval("||")
      escreval("||")
      escreval("||")
      escreval("-------------------------------------------------------------------")

      limpatela
      escreval("===================================================================================")
      escreval("                                                                      VOCÊ GANH    ")
      escreval("===================================================================================")
      escreval("___________________              ")
      escreval("||                 |             ")
      escreval("||                 |             ")
      escreval("||                 _             ")
      escreval("||                (_)            ")
      escreval("||                               ")
      escreval("||     \ (ºuº)/                  ")
      escreval("||      \ __ /                   ")
      escreval("||       \||/                    ")
      escreval("||        ||                     ")
      escreval("||        ||                     ")
      escreval("||        /\                     ")
      escreval("||       /  \                    ")
      escreval("-------------------------------------------------------------------")
      escreval("||")
      escreval("||")
      escreval("||")
      escreval("-------------------------------------------------------------------")

      limpatela
      escreval("===================================================================================")
      escreval("  VOCÊ GANHOU !!!                                                                  ")
      escreval("===================================================================================")
      escreval("___________________              ")
      escreval("||                 |             ")
      escreval("||                 |             ")
      escreval("||                 _             ")
      escreval("||                (_)            ")
      escreval("||                               ")
      escreval("||       (ºuº)                   ")
      escreval("||        __                     ")
      escreval("||        ||                     ")
      escreval("||       /||\                    ")
      escreval("||      / || \                   ")
      escreval("||        /\                     ")
      escreval("||       /  \                    ")
      escreval("-------------------------------------------------------------------")
      escreval("||")
      escreval("||")
      escreval("||")
      escreval("-------------------------------------------------------------------")

      limpatela
      escreval("===================================================================================")
      escreval("                               VOCÊ GANHOU !!!                                     ")
      escreval("===================================================================================")
      escreval("___________________              ")
      escreval("||                 |             ")
      escreval("||                 |             ")
      escreval("||                 _             ")
      escreval("||                (_)            ")
      escreval("||                               ")
      escreval("||     \ (ºuº)/                  ")
      escreval("||      \ __ /                   ")
      escreval("||       \||/                    ")
      escreval("||        ||                     ")
      escreval("||        ||                     ")
      escreval("||        /\                     ")
      escreval("||       /  \                    ")
      escreval("-------------------------------------------------------------------")
      escreval("||")
      escreva("|| Palavra: "                      )

      para cont de 1 ate compr(word) faca
         escreva(" ")
         escreva(copia(word,cont,1))
      fimpara

      escreval("")
      escreval("||")
      escreval("-------------------------------------------------------------------")
      escreval("")
      escreval("==================================================================================")

      timer 0

   fimprocedimento

inicio

 leia(words_list) //lê o arquivo com as palavras e armazena na variavel words_list
 man_vs_machine
 game_screen

 limpatela
 escreval("===================================================================================")
 escreval("                                INSTRUÇÕES                                         ")
 escreval("                                                                                   ")
 escreval("   O jogador deve sugerir uma letra por vez que possa estar presente na palavra    ")
 escreval("  ou pode tentar adivinha-la de uma só vez. O jogador ganha caso  informe a        ")
 escreval("  palavra correta e perde caso erre uma letra mais do que 7 vezes ou informe a     ")
 escreval("  palavra errada, sendo possível escolher entre duas opções de jogo:               ")
 escreval("                                                                                   ")
 escreval("                             Jogando com um amigo                                  ")
 escreval("   Quando solicitado o primeiro jogador deve  definir a palavra a ser adivinhada   ")
 escreval("  e uma dica.                                                                      ")
 escreval("                                                                                   ")
 escreval("                           Jogando contra a máquina                                ")
 escreval("   Ao selecionar a opção de jogar contra a máquina as palavras serão sorteadas     ")
 escreval("  entre as palavras pré-definidas incluídas no arquivo lista_de_palavras.txt       ")
 escreval("  este arquivo pode ser alterado mudando as palavras e dicas desde que sigas       ")
 escreval("  a regras indicadas no arquivo README.txt.                                        ")
 escreval("                                                                                   ")
 escreval("                         APERTE ENTER PARA CONTINUAR                               ")
 escreval("===================================================================================")
 leia(cmtr)

 repita

   cmtr:=""
   ocult_word:=""   // reinicializando as variáveis
   error:=0
   underline:="_"

   limpatela
   choice_screen

   repita

      leia(user_verif)

      se (user_verif=2) entao

        repita

          cont:=randi(12)+1
          word:= words_tips[cont,1]  //sorteia um indice de 1 até 13 para idicar a palavra e dica que serão utilizadas
          tip:=words_tips[cont,2]

        ate ((word<>"") e (tip<>""))  //caso a palavra ou dica seja nula é sorteada novamente

      senao

        se (user_verif=1) entao

          escreva("Informe a palavra: ")
          leia(word)                       //recebe e a dica palavra do usuário
          escreval("")

          escreva("Agora informe a dica: ")
          leia(tip)

          word:=maiusc(word)
          tip:=maiusc(tip)

        senao

          limpatela
          escreval("===================================================================================")
          escreval("                             Opção Incorreta !!!                                   ")
          escreval("                         Favor digitar novamente                                   ")

          chose_screen

        fimse

      fimse

   ate ((user_verif=1) ou (user_verif=2))  //verifica se o usuário digitou a opção correta

   para cont de 1 ate compr(word) faca

     se (copia(word,cont,1)=" ") entao   // preserva os espaços em branco da palavra caso os possua
       ocult_word:=(ocult_word+" ")
     senao
       se (copia(word,cont,1)="-") entao
         ocult_word:=(ocult_word+"-")    // preserva os hífens da palavra caso os possua
       senao
         ocult_word:=(ocult_word+"_")    //cria um underline para cada letra da palavra
       fimse
     fimse

   fimpara

   enquanto ((compr(attempt)<3) e (ocult_word<>word) e (error<8)) faca  // jogo termina caso o jogador tente adivinhar a plavra ou erre mais do que 7 vezes

     escolha error

       caso 0
        zero_defects
       caso 1
        one_error
       caso 2
        two_errors
       caso 3
        three_errors
       caso 4
        four_errors
       caso 5
        five_errors
       caso 6
        six_errors
       caso 7
        seven_errors

     fimescolha

     leia(attempt)
     attempt:=maiusc(attempt)

     se (compr(attempt)<3) entao  //caso o jogador digite mais do que 2 caracteres será considerado que ele tentou adivinhar a palavra

       para cont de 1 ate compr(word) faca

         se (attempt=copia(word,cont,1)) entao //verifica se a letra que o jogador digitou está presente na palavra (letra a letra)

           ocult_word:=(copia(ocult_word,1,(cont-1))+(attempt)+(copia(ocult_word,(cont+1),(compr(ocult_word)-cont))))
           verif:=verdadeiro  //caso possua correspondencia o underline é substituido pela letra e é indicado que houve o acerto da tentativa através da variavel verif

         fimse

       fimpara

     senao

      se (attempt=word) entao  //caso o jogador tenha tentado adivinha a palavra, amesma é verificada diretamente
       win
      senao
       dead
      fimse

     fimse

     se (verif=falso) entao  //caso a pessoa tenha errado a letra e computado mais um erro e a tentativa é adicionada ao cemitério
       error:=error+1
       cmtr:=cmtr+attempt+underline

       se (error=8) entao
         dead
       fimse

     senao
       se (ocult_word=word) entao
        win
       fimse
     fimse

     verif:=falso


   fimenquanto

   escreval("Digite 1 para jogar novamente ou 0 para sair")
   leia(user_verif)

 ate (user_verif=0)

 limpatela
 escreval("=================================================================")
 escreval("                  Obrigado por jogar!!!                          ")
 escreval("=================================================================")

fimalgoritmo





