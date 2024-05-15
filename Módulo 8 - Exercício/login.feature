            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o portal (pagina de autenticação) da EBAC-SHOP

            Esquema do Cenário: Autenticação de usuário
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve realizar a <ação>

            Exemplos:
            | usuário            | senha     | ação                                         |
            | daniel@ebac.com.br | daniel123 | redirecionar para tela de checkout           |
            | daniel@ebac.com.br | daniel999 | aparecer mensagem "Login ou senha invalidos" |
            | DANIEL@ebac.com.br | daniel123 | aparecer mensagem "Login ou senha invalidos" |


