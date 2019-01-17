require 'calabash-android'
require 'calabash-android/abase'

class Auto < Calabash::ABase

  def setNUmber
    wait_for_element_exists("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_phone_number'",timeout:60)
    tap_when_element_exists("com.claroconnect.androidlibraries.customwidgets.CustomEditText id:'et_phone_number'")
    enter_text("com.claroconnect.androidlibraries.customwidgets.CustomEditText", "5549593877")
    press_back_button
    wait_for_element_exists("android.widget.Button id:'btn_activate_next'",timeout:60)
    tap_when_element_exists("android.widget.Button id:'btn_activate_next'")
  end



end