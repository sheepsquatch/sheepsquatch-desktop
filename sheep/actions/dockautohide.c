#include "sheep/actions.h"
#include "sheep/dock.h"
#include "sheep/config.h"

static gboolean run_func(ObActionsData *data, gpointer options);

void action_dockautohide_startup(void)
{
    actions_register("ToggleDockAutoHide",
                     NULL, NULL,
                     run_func);
}

/* Always return FALSE because its not interactive */
static gboolean run_func(ObActionsData *data, gpointer options)
{
    config_dock_hide = !config_dock_hide;
    dock_configure();

    return FALSE;
}
