require 'calabash-android'
require 'calabash-android/abase'

class Login < Calabash::ABase
  #metódo para ingresar botón y presionar el botón siguiente
  def loginpage
    wait_for_element_exists("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_phone_number'",timeout:60)
    tap_when_element_exists("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_phone_number'")
    enter_text("com.claroconnect.androidlibraries.customwidgets.CustomEditText", "5554154507")
    press_back_button
    wait_for_element_exists("android.widget.Button id:'btn_activate_next'",timeout:60)
    tap_when_element_exists("android.widget.Button id:'btn_activate_next'")
  end
  #metódo para dar tap en el botón verificación manual
  def manualvalidate
    sleep(5)
    wait_for_element_exists("android.widget.Button id:'btn_dialog_verification_code'")
    tap_when_element_exists("android.widget.Button id:'btn_dialog_verification_code'")
  end
  #metódo para ingresar contraseña para login manual
  def ingresarContrasena
    wait_for_element_exists("android.widget.EditText id:'edt_verification_code'")
    tap_when_element_exists("android.widget.EditText id:'edt_verification_code'")
    enter_text("android.widget.EditText id:'edt_verification_code'", "11111111")
    press_back_button
    wait_for_element_exists("android.widget.Button id:'btn_resend_verification_code'")
    tap_when_element_exists("android.widget.Button id:'btn_resend_verification_code'")
  end
  #metódo para
  def ingresarPerfil
    wait_for_element_exists("android.widget.Button id:'btn_welcome_profile_next'")
    tap_when_element_exists("android.widget.Button id:'btn_welcome_profile_next'")
  end
  def selectContacts
    wait_for_element_exists("android.widget.TextView id:'tv_id_indicator_contacts'")
    tap_when_element_exists("android.widget.TextView id:'tv_id_indicator_contacts'")
    sleep(5)
  end
  def selectChat
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_send_message_contact'")
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_send_message_contact'")
    wait_for_element_exists("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_message'")
    enter_text("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_message'","Hola esta es una prueba")
  end
  def enviar
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_send'")
    sleep(3)
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_send'")
  end
  def envAudio
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_voice'")
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_voice'")
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_send'")
    sleep(10)
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_send'")
    sleep(3)
  end
  def sendImage
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_images_and_video'")
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'btn_images_and_video'")
    wait_for_element_exists("android.widget.ImageView id:'iv_image_select'")
    tap_when_element_exists("android.widget.ImageView id:'iv_image_select'")
    wait_for_element_exists("android.widget.Button id:'btn_message_choose_images_send'")
    tap_when_element_exists("android.widget.Button id:'btn_message_choose_images_send'")
    sleep(10)
  end
  def makeCall
    sleep(5)
    press_back_button
    sleep(4)
    wait_for_element_exists("android.widget.TextView text:'Llamadas'")
    tap_when_element_exists("android.widget.TextView text:'Llamadas'")
    sleep(3)
    wait_for_element_exists("android.widget.Button id:'startToConnectBtn'")
    tap_when_element_exists("android.widget.Button id:'startToConnectBtn'")
    sleep(5)
    wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_call_contact'")
    tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_call_contact'")
    screenshot
  end
 def videoCall
   sleep(7)
   wait_for_element_exists("android.widget.ImageView id:'image_callout_hangup'")
   tap_when_element_exists("android.widget.ImageView id:'image_callout_hangup'")
   sleep(4)
   wait_for_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_video_call_contact'")
   tap_when_element_exists("android.support.v7.widget.AppCompatImageView id:'iv_video_call_contact'")
   sleep(7)
   wait_for_element_exists("android.widget.ImageView id:'image_callout_hangup'")
   tap_when_element_exists("android.widget.ImageView id:'image_callout_hangup'")
 end
  def toProfile
    sleep(4)
    wait_for_element_exists("android.widget.TextView id:'tv_id_indicator_me'")
    tap_when_element_exists("android.widget.TextView id:'tv_id_indicator_me'")
  end
  def logout
    sleep(3)
    wait_for_element_exists("android.widget.TextView text:'Ajustes'")
    tap_when_element_exists("android.widget.TextView text:'Ajustes'")
    scroll_to("android.widget.TextView text:'Cerrar sesión'")
    tap_when_element_exists("android.widget.TextView text:'Cerrar sesión'")
    wait_for_element_exists("android.widget.Button id:'button1'")
    tap_when_element_exists("android.widget.Button id:'button1'")
  end
end