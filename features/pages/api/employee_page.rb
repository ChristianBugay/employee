class Employee
    include HTTParty
    #debug_output $stdout
    base_uri URL_BASE
    
    def initialize()
        $employee_model = EmployeeModel.new()
        @headers = {"Content-Type"=>"application/json", "Authorization"=>"Basic aW5tZXRyaWNzOmF1dG9tYWNhbw=="}
    end

    def post_employee()
        body = self.payload()
        @options = {
            body: body.to_json,
            headers: @headers
        }
        self.class.post("/empregado/cadastrar", @options)
    end

    def put_employee_by_id(id)
        body = self.payload
        @options = {
            body: body.to_json,
            headers: @headers
        }
        self.class.put("/empregado/alterar/"+"#{id}", @options)
    end

    def delete_employee_by_id(id)
        @options = {
            headers: @headers
        }
        self.class.delete("/empregado/deletar/"+"#{id}", @options)
    end

    def get_employees()
        @options = {
            headers: @headers
        }
        self.class.get("/empregado/list_all", @options)
    end

    def get_employee_by_id(id)
        @options = {
            headers: @headers
        }
        self.class.get("/empregado/list/"+"#{id}", @options)
    end

    def payload()
        return {
            admissao:           $employee_model.admissao,
            cargo:              $employee_model.cargo,
            comissao:           $employee_model.comissao,
            cpf:                $employee_model.cpf,
            departamentoId:     $employee_model.departamentoId,
            nome:               $employee_model.nome,
            salario:            $employee_model.salario,
            sexo:               $employee_model.sexo,
            tipoContratacao:    $employee_model.tipoContratacao
        }
    end

end