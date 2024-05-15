            #language: pt

            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu escolha um produto no portal da EBAC

            Cenário: Seleção da cor do produto em estoque
            Quando eu escolher a cor do produto em estoque
            Então deve passar para a escolha do tamanho

            Cenário: Seleção da cor do produto sem estoque
            Quando eu escolher a cor do produto sem estoque
            Então deve aparecer uma mensagem "Cor fora do estoque"

            Cenário: Escolha do tamanho do produto em estoque
            Quando eu escolher o tamanho do produto em estoque
            Então deve passar para a escolha da quantidade do produto

            Cenário: Escolha do tamanho do produto sem estoque
            Quando eu escolher o tamnaho do produto sem estoque
            Então deve aparecer uma mensagem "Tamanho sem estoque"

            Esquema do Cenário: Escolher quantidades variadas
            Quando eu escolher <qtd>
            E apertar em comprar
            Então deve realizar a <ação>

            Exemplos:
            | qtd | ação                                             |
            | 9   | redirecionar para tela de checkout               |
            | 10  | redirecionar para a tela de checkout             |
            | 11  | exibir a mensagem "Quantidade acima de 10 peças" |

Esquema do Cenário: Botão Limpar
Quando eu apertar o botão Limpar
Então a página deve limpar os campos cor, tamanho e quantidade
