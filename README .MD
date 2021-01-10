## Teste Inmetrics - Descrever como executar o projeto

Teste API, rodar o comando "cucumber -t '@tag'", seguem as tags:
@api -- roda todos os testes de API
@put_employee -- altera um empregado qualquer existente no sistema
@post_employee -- cadastra novo empregado
@get_employees -- busca por todos os empregados
@get_employee_by_id -- busca empregado por id
@delete_employee_by_id -- deleta empregado por id

Teste Front-end, rodar o comando "cucumber -t '@tag'", seguem as tags:
@selenium -- roda todos os testes com selenium
@login -- realiza login no sistema
@register_user -- cadastra novo usuário do sistema
@register_employee -- cadastra novo empregado
@update_employee -- altera um empregado existente
@delete_employee -- deleta um empregadoo do sistema
