require 'calabash-android'
require 'calabash-android/abase'

class Homepage < Calabash::ABase
  def initialize(world)

  end

  #Validación de pantalla de inicio
  def validateElements
    wait_for_element_exists("android.widget.TextView id:'tv_start_sesion' text:'Conéctate con tu número celular'", timeout: 60)
    flash("android.widget.TextView id:'tv_start_sesion' text:'Conéctate con tu número celular'")
    puts 'Apareció pantalla de inicio'
  end
end
