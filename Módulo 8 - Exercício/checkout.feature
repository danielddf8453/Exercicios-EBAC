            Funcionalidade: Tela de Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu deseje finalizar minha compra

            Cenário: Campos Obrigatórios preenchidos válidos
            Quando eu preencher os campos Obrigatórios com dados válidos
            E o email com formato válido
            Então deve permitir que a compra seja finalizada

            Cenário: Campos Obrigatórios preenchidos inválidos
            Quando eu preencher os campos Obrigatórios com dados inválidos
            E o email com formato válido
            Então o aparecerá a mensagem "ERRO! Corrigir campos Obrigatórios"

            Cenário: Campos Obrigatórios em branco
            Quando eu não preencher algum campo Obrigatórios
            Então deve aparecer a mensagem "Favor, preencher TODOS os campos Obrigatórios"

            Esquema do Cenário: Email com formato inválido
            Quando eu preencher o <email>
            Então deve realizar a <ação>

            Exemplos:
            | email              | ação                                                 |
            | daniel@ebac.com.br | permitir que finalize a compra                       |
            | DANIEL@ebac.com.br | exibir a mensagem "Formato de email invalido"        |
            |                    | exibir a mensagem "Favor, preencha seu email válido" |
