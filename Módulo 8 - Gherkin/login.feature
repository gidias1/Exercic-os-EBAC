            #language:pt

            Funcionalidade: Tela de login
             Como cliente da EBAC-SHOP
             Quero fazer a autenticação na plataforma  
             Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "giovanna.dias@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "giovanna12345@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Autenticação inválida
            Quando eu digitar o usuário "giovanna.dias@ebac.com.br"
            E a senha "senha#1234"
            Então deve exibir uma mensagem de alerta "Usuário ou Senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mesagem> de sucesso e ser direcionado para a tela de checkout

            Exemplos:
            | usuario                       | senha        | mensagem        |
            | "giovanna.dias@ebac.com.br"   | "Gio234%%"   | "Olá Giovanna!" |
            | "julia.dias@ebac.com.br"      | "senha#1234" | "Olá Julia!"    |
            | "beatriz.dias@gmail.com.br"   | "bea123@"    | "Olá Beatriz!"  |
            | "mariana.dias@hotmail.com.br" | "M1234#"     | "Olá Mariana!"  |
            
