Funcionalidade: EBAC Shop compras
Como eu desejo fazer compras na EBAC Shop
Quero configurar os produtos para colocar no carrinho
Para finalizar a compra

Cenário: Configurar produto
Dado que acesse a pagina de configuração de item
Quando eu confirmar o tamanho do item
E escolher a cor
E escolher a quantidade
Então deve ser adicionado ao carinho sendo permitido 10 itens no maximo

Cenário: Limpar as informações do produto
Dado que acesse a pagina de configuração de item
Quando eu clicar no botão limpar
Então deve resetar as configurações colocadas
