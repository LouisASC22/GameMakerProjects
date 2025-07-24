// if (instance = button_act)

if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, obj_buttons)) { // Check if the mouse is over the button
        switch (button_id) {
            case 0:
                function_0();  // function for button 0
                break;
            case 1:
                function_1();  // function for button 1
                break;
            case 2:
                function_2();  // function for button 2
                break;
            case 3:
                function_3();  // function for button 3
                break;
        }
    }
}

// https://forum.gamemaker.io/index.php?threads/see-instances-in-the-debugger.84770/