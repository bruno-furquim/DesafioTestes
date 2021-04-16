#language:pt
#encondig:utf-8

@sprint-01
Funcionalidade: Buscar produtos
     Como cliente do site Americanas
     Quero buscar por smartphones
     Para verificar qual seu preço e valor do cashback
     
Contexto: Acessar o site
     Dado que acesso o site da loja Americanas

@realizar_busca
Cenário: Buscar smartphones e verificar valores
     Quando eu realizo a busca do <smartphones>
     Então o site deverá exibir o produto pesquisado <smartphones>
     E exibir o valor à vista do produto
     E exibir o valor do cashback do produto

     Exemplos:
         | smartphones                       | 
         | "smartphone samsung galaxy a20s"  |
         | "smartphone motorola one vision"  |
         | "smartphone xiaomi redmi note 7"  |