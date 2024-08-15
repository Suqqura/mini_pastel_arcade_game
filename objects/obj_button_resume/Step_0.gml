// Tarkista hiiren napsautukset

if (mouse_check_button_pressed(mb_left)) {
    // Tarkista, onko hiiriobjekti päällä
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        // Jatka peliä
        paused = false;
        instance_deactivate_all(true); // Aktivoi kaikki objektit
    }
}