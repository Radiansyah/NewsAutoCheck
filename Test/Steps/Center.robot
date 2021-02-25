*** Settings ***
Documentation     Keyword untuk posisi tengah

*** Keywords ***
Cek Posisi Di Tengah
  ${window_width}	 ${window_height}=	      Get Window Size
  ${pic_width}	 ${pic_height}=        Get Element Size           xpath=//div[@class="content"]
  ${first_x_position}=                 Get Horizontal Position    xpath=//div[@class="content"]
  ${half_pic_width}=                   Evaluate       ${pic_width}/2
  ${half_pic_pos}=                     Evaluate       ${first_x_position}+${half_pic_width}
  ${half_window_width}=                Evaluate           ${window_width}/2
  Should Be Equal                      ${half_window_width}      ${half_pic_pos}       Posisi Tidak Di Tengah Karena posisi tengah screen ${half_window_width} dan posisi tengah object ${half_pic_pos}




