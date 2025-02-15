            #language:pt
            
            Funcionalidade: Configurar produtos

            Como cliente da EBAC Shop
            Quero configurar meu produto de acordo com tamanho e escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Selecionar cor, tamanho e quantidade do produto deve ser obrigatório
            Dado que eu acesse a página da EBAC Shop
            Quando eu selecionar cor, tamanho e quantidade do produto
            E clicar em “adicionar ao carrinho”
            Então deve adicionar o item escolhido ao carrinho

            Cenário: Selecionar cor e tamanho apenas
            Dado que eu acesse a página da EBAC Shop
            Quando eu selecionar cor e tamanho
            E clicar em “adicionar ao carrinho”
            Então deve exibir uma mensagem de alerta "Selecione todos os itens"

            Cenário: Ao limpar as seleções deve voltar ao estado original
            Dado que tenha selecionado um item e as especificidades
            Quando eu selecionar “limpar”
            Então deve limpar todas as seleções realizadas

            Cenário: Selecionar cor, tamanho e quantidade do produto deve ser obrigatório
            Dado que selecione a quantidade de itens no carrinho
            Quando clicar em “comprar”
            Então devo ser redirecionado para a página de pagamento
            E se a quantidade for >10 deve apresentar a mensagem de erro "Selecione no máximo 10 itens"



