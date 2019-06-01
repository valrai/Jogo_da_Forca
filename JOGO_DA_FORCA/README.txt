======================================================================================
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                  000000 88888  999999  88888     DDDDD    BBBBB                   
                    00   8   8  99      8   8     D    D  BB   BB                  
                 00 00   8   8  99  99  8   8     D    D  BBBBBBB                  
                 00000   88888  999999  88888     DDDDD   BB   BB                  
                                                                                   
                                                                                   
                     $$$$$  88888  999999   ######   BBBBB                         
                     $$     8   8  99   99  ##      BB   BB                        
                     $$$$$  8   8  999999   ##      BBBBBBB                        
                     $$     8   8  99  99   ##      BB   BB                        
                     $$     88888  99   99  ######  BB   BB                        
                                                                                   
                                                                                   
                                                                                   
======================================================================================

Author:Valdecir Raimundo
Date:25/05/2019
Jogo desenvolvido durante as aulas de algoritmo do 1 semestre 
do curso de Engenharia de Software - Unicesumar
contato: rm.valdecir@gmail.com

======================================================================================

                                 INSTRUÇÕES

O jogo da forca é um jogo em que o jogador tem que acertar qual é a palavra proposta, 
tendo como dica o número de letras e o tema ligado à palavra. A cada letra errada, 
é desenhada uma parte do corpo do enforcado. O jogo termina com o acerto da palavra 
ou com o término do preenchimento das partes do corpo do enforcado.

Para começar o jogo é desenha uma base e um risco correspondente ao lugar de cada 
letra.Por exemplo, para a palavra "MERCADO" fica da forma:

M E R C A D O ------> _ _ _ _ _ _ _

Deste modo o jogador deve ir dizendo as letras que podem existir na palavra, sendo 
que cada letra que ele acerta é escrita no espaço correspondente.

M E R C A D O → M _ _ C A _ _

Caso a letra não exista nessa palavra, é desenhada uma parte do corpo (iniciando 
pela cabeça, tronco, pernas e braços).
O jogador (que está tentando adivinhar a palavra) pode escolher entre falar uma 
letra ou fazer uma tentativa perigosa de tentar adivinhar a palavra falando a palavra 
que pensa que é.

O jogo é ganho se a palavra é adivinhada,seja digitando todas as letras ou 
acertando a tentativa perigosa. Caso o jogador erre uma letra mais do que 7 vezes 
ou erre a tentativa perigosa ele perde na hora. 

======================================================================================

                               OPÇÕES DE JOGO             
                                                                               
1 - Jogando com um amigo  

    Quando solicitado o primeiro jogador deve  definir a palavra a ser adivinhada 
   e uma dica correspondente. Ao final da partida o jogador que tentava adivinhar a 
   palavra antes então escolhe uma nova palavra e invertem-se. 
   A palavra e dica escolhida deve ser informada sem acentos ou carcteres especiais 
   (exceto hífens e espaços em branco).                                                                   
                                                                               
2 - Jogando contra a máquina  

    Ao selecionar a opção de jogar contra a máquina as palavras serão sorteadas   
   entre as palavras pré-definidas incluídas no arquivo lista_palavras.txt     
   este arquivo pode ser alterado mudando as palavras e dicas desde que sigas     
   as regras definidas a seguir.

======================================================================================

                             LISTA DE PALAVRAS

  1. Só é possível adicionar 26 palavras (13 dicas e 13 palaras a serem adivinhadas) 
     por lista, caso deseje incluir dicas mais elaboradas ou palavras maiores este 
     número pode ser reduzido.

  2. As palavras e dicas devem ser colocadas sem acentos ou caracteres especiais 
     (exceto hífens e espaços em branco).

  3. As palavras e dicas relacionadas entre si devem estar na mesma linha e devem ser 
     separadas por ";".

  4. Conjuntos de "palavra;dica" devem ser colocados em linhas separadas.

  5. O jogo por padrão irá ler somente o arquivo "lista_palavras.txt", caso deseje
     trocas as palavras as mesmas devem ser salvas dentro deste arquivo seguindo as
     regras citadas acima.

======================================================================================                                                                                                         