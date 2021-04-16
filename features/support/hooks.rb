require 'report_builder'
require 'date'

Before do
    @pesquisarProdutoPage = PesquisarProdutoPage.new
end

@data_atual = DateTime.now

at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'results/report.json'
        config.report_path = 'results/report'
        config.report_types = [:html]
        config.report_title = 'Resultado - Desafio'
        config.compress_image = true
        config.additional_info = {'App' => 'Web', 'Data execução' => @data_atual }
    end
    ReportBuilder.build_report
end


