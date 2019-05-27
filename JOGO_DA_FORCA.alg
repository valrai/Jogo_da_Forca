algoritmo "Jogo_da_Forca"
// Função : entreterimento
// Autor : Valdecir Raimundo
// Data : 25/05/2019
// Seção de Declarações

var

  word,tip,ocult_word,attempt,cmtr,underline  :caracter
  verif                                       :logico
  cont,user_verif,error                       :inteiro


   funcao read_attempt :caracter

   var

     att :caracter

   inicio

     escreval("")
     escreval("Informe uma letra ou tente adivinhar a palavra")
     leia(att)

     att:=maiusc(att)

     retorne att

   fimfuncao

   procedimento zero_defects

   inicio

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
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
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento one_error

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (º_º )          ")
         escreval("||                 --            ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento two_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (º_º')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento three_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (º_º')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /             ")
         escreval("||              __/              ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento four_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (o_o')          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento five_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (0_o')          ")
         escreval("||                 --   /        ")
         escreval("||                 ||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento six_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (0_0')          ")
         escreval("||             \   --   /        ")
         escreval("||              \__||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento seven_errors

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||         ((    (0_0')    ))    ")
         escreval("||             \   --   /        ")
         escreval("||              \__||__/         ")
         escreval("||                 ||            ")
         escreval("||                 ||            ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||     #Dica: ",tip               )
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("Cemitério: ",cmtr)
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(ocult_word) faca
           escreva(" ")
           escreva(copia(ocult_word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento dead

   inicio

      cmtr:=cmtr+underline+attempt

      limpatela
         escreval("===================================================================")
         escreval("                                 ")
         escreval("___________________              ")
         escreval("||                 |             ")
         escreval("||                 |             ")
         escreval("||                 ^             ")
         escreval("||               (+ + )          ")
         escreval("||                 --            ")
         escreval("||                 ||            ")
         escreval("||                /||\           ")
         escreval("||               / || \          ")
         escreval("||                 /\            ")
         escreval("||              __/  \__         ")
         escreval("||                               ")
         escreval("||                               ")
         escreval("---------------------------------")
         escreval("||        VOCE PERDEU!!!         ")
         escreval("---------------------------------")
         escreval("                                 ")
         escreval("")
         escreva("Palavra: ")

         para cont de 1 ate compr(word) faca
           escreva(" ")
           escreva(copia(word,cont,1))
         fimpara

         escreval("")
         escreval("")
         escreval("=================================================================")


   fimprocedimento

   procedimento win

   inicio

      timer 35

      limpatela
      escreval("===================================================================")
      escreval("                                 ")
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
      escreval("---------------------------------")
      escreval("||      VOCÊ GANHOU !!!          ")
      escreval("---------------------------------")
      escreval("                                 ")
      escreval("")

      limpatela
      escreval("===================================================================")
      escreval("                                 ")
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
      escreval("---------------------------------")
      escreval("||              VOCÊ GANHOU !!!  ")
      escreval("---------------------------------")
      escreval("                                 ")
      escreval("")

      limpatela
      escreval("===================================================================")
      escreval("                                 ")
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
      escreval("---------------------------------")
      escreval("||                      VOCÊ GANH")
      escreval("---------------------------------")
      escreval("                                 ")
      escreval("")

      limpatela
      escreval("===================================================================")
      escreval("                                 ")
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
      escreval("---------------------------------")
      escreval("||CÊ GANHOU !!!                  ")
      escreval("---------------------------------")
      escreval("                                 ")
      escreval("")

      limpatela
      escreval("===================================================================")
      escreval("                                 ")
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
      escreval("---------------------------------")
      escreval("||      VOCÊ GANHOU !!!          ")
      escreval("---------------------------------")
      escreval("                                 ")
      escreval("")
      escreval("Palavra: ")

      para cont de 1 ate compr(word) faca
        escreva(" ")
        escreva(copia(word,cont,1))
      fimpara

      escreval("")
      escreval("")
      escreval("=================================================================")

      timer 0

   fimprocedimento

inicio

 escreval("===============================================================================")
 escreval("                            INSTRUÇÕES                                         ")
 escreval("                                                                               ")
 escreval("o Jogador 1 deve primeiramente definir a palavra a ser adivinhada e a dica     ")
 escreval("o jogador 2 deve sugerir uma letra por vez que possa estar na palavra ou       ")
 escreval("pode tentar adivinhar de uma vez qual a palavra.                               ")
 escreval("O jogador 2 ganha caso  informe a palavra correta e perde                      ")
 escreval("caso erre uma letra mais do que 7 vezes ou informe a palavra errada.           ")
 escreval("                                                                               ")
 escreval("                  APERTE ENTER PARA CONTINUAR                                  ")
 escreval("===============================================================================")
 leia(cmtr)


 repita

   verif:=falso
   cmtr:=""
   ocult_word:=""
   error:=0
   underline:="_"

   limpatela
   escreval("Informe a palavra")
   leia(word)

   limpatela
   escreval("Agora informe a #dica")
   leia(tip)

   word:=maiusc(word)
   tip:=maiusc(tip)

   para cont de 1 ate compr(word) faca
     ocult_word:=(ocult_word+"_")
   fimpara

   enquanto ((compr(word)<>compr(attempt)) e (ocult_word<>word) e (error<8)) faca

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

     attempt:=read_attempt

     se (compr(attempt)<>compr(word)) entao

       para cont de 1 ate compr(word) faca

         se (attempt=copia(word,cont,1)) entao

           ocult_word:=(copia(ocult_word,1,(cont-1))+(attempt)+(copia(ocult_word,(cont+1),(compr(ocult_word)-cont))))
           verif:=verdadeiro

         fimse

       fimpara

     senao

      se (attempt=word) entao
       win
      senao
       dead
      fimse

     fimse

     se (verif=falso) entao
       error:=error+1

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

fimalgoritmo

