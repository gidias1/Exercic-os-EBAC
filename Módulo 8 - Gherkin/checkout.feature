            #language:pt

            Funcionalidade: Tela de login
            Como cliente da EBAC Shop
            quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na aba de cadastro

            Cenário: Campos com * são de preenchimento obrigatório
            Quando eu inserir todas as informaçoes do formulário que estão em asterico
            Então deve permitir seguir para aba de "finalizar compra"

            Cenário: Campos com * são de preenchimento obrigatório
            Quando eu deixar de inserir alguma informação do formulário que estão em asterico
            Então deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Não deve permitir cadastro com e-mail inválido
            Quando eu digitar o <e-mail>
            Então o sisitema deve retornar o <resultado>

            Exemplos:
            | e-mail                   | resultado   | 
            | "joão.ebac@gmail.com.br" | "válido"    | 
            | "joão@ebac.com.br"       | "válido"    | 
            | "josé.ebac.com.br"       | "inválido"  | 
            | "joão@ebac.dias"         | "inválido"  | 
                       
            Cenário: Usuário com e-mail inválido
            Quando eu digitar o <e-mail>
            E o <resultado> for inválido
            Então deve exibir uma mensagem de erro "Formato de e-mail inválido"