require "spec_helper"
require 'Dieta'
#RSpec.describe Dieta do
#  it "has a version number" do
#    expect(Dieta::VERSION).not_to be nil
#  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end
#end
describe "-------------------x/////////////////PRUEBAS TDD MENU CLASE DIETA//////////////////" do
  	before :all do

    		@menu_uno = Dieta::Dieta.new("ALMUERZO", "30 - 35%", ["Macarrones con salsa de tomate y queso parmesano.", "Escalope de ternera"],
                          "1 1/2 cucharón", 200, 785.9, 19, 34, 47)
    		# @menu_uno = Dieta.new("MERIENDA", "15%", ["Macarrones con salsa de tomate y queso parmesano.", "Escalope de ternera"],
    #                       "1 1/2 cucharón", "200 g", 313.6)
  	end

	describe "Pruebas TDD atributos" do
  		context "Prueba de atributos clase Dieta \n" do

			it "Titulo menu" do
			expect(@menu_uno).to have_attributes(:title => "ALMUERZO")
			end

			it "Porcentaje de ingesta diaria" do
			expect(@menu_uno).to have_attributes(:porcentaje => "30 - 35%")
			end

    			it "Descripción de un plato" do
     			 expect(@menu_uno.get_plato(0)).to eq ("- Macarrones con salsa de tomate y queso parmesano.")
    			end



   			 it "Porción recomendada de un plato" do
      			expect(@menu_uno).to have_attributes(:porcion => "1 1/2 cucharón")
    			end


    			it "Gramos del plato" do
    			expect(@menu_uno).to have_attributes(:gramos => 200)
    			end


          it "Porción recomendada de un plato" do
            expect(@menu_uno).to have_attributes(:platos => ["Macarrones con salsa de tomate y queso parmesano.",
              "Escalope de ternera"])
            end
    			it "Debe existir un valor calórico V.C.T" do
    			expect(@menu_uno).to have_attributes(:vct => 785.9)
    			end

          it "Porcentaje de proteinas" do
          expect(@menu_uno).to have_attributes(:p_proteinas => 19)
          end

          it "Porcentaje de proteinas" do
          expect(@menu_uno).to have_attributes(:p_grasas => 34)
          end

          it "Porcentaje de proteinas" do
          expect(@menu_uno).to have_attributes(:p_hidratos => 47)
          end

		end

   end

   describe "Pruebas TDD métodos" do
     context "Prueba de métodos de la clase Dieta" do

       it ".get_platos" do
         expect(@menu_uno).to respond_to(:get_platos)
         expect(@menu_uno.get_platos).to eq("- Macarrones con salsa de tomate y queso parmesano.\n- Escalope de ternera\n")
       end

       it ".get_nombre_menu" do
         expect(@menu_uno).to respond_to(:get_nombre_menu)
         expect(@menu_uno.get_nombre_menu).to eq("ALMUERZO")
       end

       it ".get_porcentaje" do
         expect(@menu_uno).to respond_to(:get_porcentaje)
         expect(@menu_uno.get_porcentaje).to eq("30 - 35%")
       end

       # Método para obtener un plato: parametros: número/posición del plato
       it ".get_plato(posición del plato)" do
         expect(@menu_uno).to respond_to(:get_plato).with(1).argument
         expect(@menu_uno.get_plato(0)).to eq("- Macarrones con salsa de tomate "+
                                              "y queso parmesano.")
       end

       it ".get_vct" do
         expect(@menu_uno).to respond_to(:get_vct)
         expect(@menu_uno.get_vct).to eq(785.9)
       end

       it ".get_p_proteinas" do
         expect(@menu_uno).to respond_to(:get_p_proteinas)
         expect(@menu_uno.get_p_proteinas).to eq(19)
       end

       it ".get_p_grasas" do
         expect(@menu_uno).to respond_to(:get_p_grasas)
         expect(@menu_uno.get_p_grasas).to eq(34)
       end

       it ".get_p_hidratos" do
         expect(@menu_uno).to respond_to(:get_p_hidratos)
         expect(@menu_uno.get_p_hidratos).to eq(47)
       end

       it ".to_s" do
         expect(@menu_uno).to respond_to(:to_s)
         expect(@menu_uno.to_s).to eq("ALMUERZO (30 - 35%)\n"+
          "- Macarrones con salsa de tomate y queso parmesano., 1 1/2 cucharón, 200 g\n"+
#          "- Escalope de ternera, 1 bistec mediano, 100 g\n"+
#          "- Ensalada básica con zanahoria rallada, guarnición de 120 g\n"+
#          "- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\n"+
          "V.C.T. | %\t785.9 kcal | 19% - 34% - 47%")
       end
     end
   end
end
