Funcionalidade: EBAC Shop compras
Como eu desejo fazer compras na EBAC Shop
Quero configurar os produtos para colocar no carrinho
Para finalizar a compra

Cenário: Configurar produto
Dado que o usuário está na tela de configuração dos produtos
Quando eu confirmar o tamanho do item, cor e quantidade
E clicar em comprar
Então deve ser adicionado ao carinho sendo permitido 10 itens no maximo

Cenário: Limpar as informações do produto
Dado que o usuário queira limpar as configurações dos produtos
Quando eu clicar no botão limpar
Então deve resetar as configurações colocadas
