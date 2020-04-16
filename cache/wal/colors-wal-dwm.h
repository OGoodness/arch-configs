static const char norm_fg[] = "#fdf6e3";
static const char norm_bg[] = "#073642";
static const char norm_border[] = "#002b36";

static const char sel_fg[] = "#fdf6e3";
static const char sel_bg[] = "#859900";
static const char sel_border[] = "#fdf6e3";

static const char urg_fg[] = "#fdf6e3";
static const char urg_bg[] = "#dc322f";
static const char urg_border[] = "#dc322f";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
