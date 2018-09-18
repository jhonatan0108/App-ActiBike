class BiciUsuariosController < ApplicationController

def index
	@usu = BiciUsuario.all
end
    def new
        @usu = BiciUsuario.new()
    end
    def create
        @usu = BiciUsuario.new (bici_usuario_params)
        if @usu.save
            redirect_to bici_usuarios_path
        else
            render :new
        end
    end

    def edit
        @usu = BiciUsuario.find(params[:id])
    end
    def show
        @usu = BiciUsuario.find(params[:id])
    end
    def update 
        @usu = BiciUsuario.find(params[:id])
        if @usu.update(product_params)
            redirect_to bici_usuarios_path 
        else    
             render :edit
        end
    end

    def destroy
        @usu = BiciUsuario.find(params[:id])
        @usu.destroy
        redirect_to bici_usuarios_path
    end

    private 
    def bici_usuario_params
    params.require(:bici_usuario).permit(:username,
															:name,
															:document,
															:email,
															:telephone,
															:password,
															:age
															)
end		
   end	