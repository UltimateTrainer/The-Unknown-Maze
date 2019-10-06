///scr_state
/// Move the player in the step event
if(keyboard_check_pressed(ord('A')))
{
    target_dir += 90;
    rev_dir += 90;
}
if(keyboard_check_pressed(ord('D')))
{
    target_dir += -90;
    rev_dir += -90;
}
if(keyboard_check_pressed(ord('W')))
{
    // Get the movement vector
    var vect_x = lengthdir_x(32, target_dir);
    var vect_y = lengthdir_y(32, target_dir);
    
    // Move forward if there isn't a wall in the way
    if (!place_meeting(target_x+vect_x, target_y+vect_y, o_wall)) {
        target_x += vect_x;
        target_y += vect_y;
}
}

if(!keyboard_check(vk_shift))
{
if(keyboard_check_pressed(ord('S')))
{
    /// Move back
// Get the movement vector
var vect_x = lengthdir_x(32, target_dir);
var vect_y = lengthdir_y(32, target_dir);

// Move back if there isn't a wall in the way
if (!place_meeting(target_x-vect_x, target_y-vect_y, o_wall)) {
    target_x -= vect_x;
    target_y -= vect_y;
}
}
}

if(keyboard_check_pressed(ord('Q')))
{
    temp_dir=target_dir+90;
    var vect_x = lengthdir_x(32, temp_dir);
    var vect_y = lengthdir_y(32, temp_dir);
    // Move left if there isn't a wall in the way
    if (!place_meeting(target_x+vect_x, target_y+vect_y, o_wall))&& (!place_meeting(target_x+vect_x, target_y+vect_y, o_enemy)) {
        target_x += vect_x;
        target_y += vect_y;
}

}

if(keyboard_check_pressed(ord('E')))
{
    temp_dir=target_dir-90;
    var vect_x = lengthdir_x(32, temp_dir);
    var vect_y = lengthdir_y(32, temp_dir);
    // Move left if there isn't a wall in the way
    if (!place_meeting(target_x+vect_x, target_y+vect_y, o_wall)) {
        target_x += vect_x;
        target_y += vect_y;
}

}

if(keyboard_check(vk_shift))
{
    if(keyboard_check_pressed(ord('S')))
    {
        target_dir+=180;
        rev_dir+=180;
    }
}

if(rev_dir < 0)
{
    rev_dir +=360;
}

if(rev_dir ==360)
{
    rev_dir = 0;
}

if(rev_dir==450)
{
    rev_dir = 90;
}

if(rev_dir==540)
{
    rev_dir = 180;
}
if(rev_dir==630)
{
    rev_dir = 270;
}
