Dado('que acesso o site da loja Americanas') do
    @pesquisarProdutoPage.go
  end
  
  Quando('eu realizo a busca do {string}') do |smartphone|
    @pesquisarProdutoPage.pesquisarPoduto(smartphone)
  end
  
  Então('o site deverá exibir o produto pesquisado {string}') do |smartphone|
    expect(@pesquisarProdutoPage.produtoPesquisado).to eql smartphone
    @pesquisarProdutoPage.clicarProduto    
  end

  Então('exibir o valor à vista do produto') do
    expect(@pesquisarProdutoPage.valorTotalProduto).not_to be_empty
  end
  
  Então('exibir o valor do cashback do produto') do
    expect(@pesquisarProdutoPage.valorCashBack).not_to be_empty
  end