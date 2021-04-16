class PesquisarProdutoPage
    include Capybara::DSL

    def go 
        visit "/"
    end


    def pesquisarPoduto(smartphone)
        find('#h_search-input').set smartphone
        find('#h_search-btn').click
       
    end

    def produtoPesquisado
        find('.bOsqBF').text
    end

    def clicarProduto
        find(:css, 'div.src__Wrapper-sc-1uorjk3-0.fEPVJM div.grid__StyledGrid-sc-1man2hx-0.imOqUG.search-template__GridUI-sc-18g7n5c-0.gqTKog:nth-child(2) div.col__StyledCol-sc-1snw5v3-0.bIoTYC:nth-child(3) div.grid__StyledGrid-sc-1man2hx-0.iFeuoP div.col__StyledCol-sc-1snw5v3-0.epVkvq.src__ColGridItem-sc-122lblh-0.bvfSKS:nth-child(1) div.src__Wrapper-sc-1k0ejj6-2.dGIFSc a:nth-child(1) > span.src__Text-sc-154pg0p-0.src__Name-sc-1k0ejj6-3.dSRUrl:nth-child(4)').click
    end
    
    def valorTotalProduto
        find(:css, 'div.src__Container-m79eh9-0.dLtWUe div.src__Container-dda50e-0.ihwNf:nth-child(4) div.product-offer__ProductOfferContainer-sc-1xm718r-1.kUzvQh div.src__Wrapper-sc-1urqdh5-0.krjUEV div.src__PriceWrapper-sc-1jvw02c-4.gxILPN > div.src__BestPrice-sc-1jvw02c-5.cBWOIB.priceSales').text

    end

    def valorCashBack        
        find(:css, 'div.src__Container-m79eh9-0.dLtWUe div.src__Container-dda50e-0.ihwNf:nth-child(4) div.product-offer__ProductOfferContainer-sc-1xm718r-1.kUzvQh div.src__Wrapper-sc-1urqdh5-0.krjUEV div.brand-card__Text-sc-15ndq93-1.jjuNHF span.brand-card__Inline-sc-15ndq93-2.feYJae p.src__Text-sc-14f1tve-0.PBHmc > span.cashback__Green-sc-137d7c0-0.yPnbW:nth-child(3)').text
    end
    
end