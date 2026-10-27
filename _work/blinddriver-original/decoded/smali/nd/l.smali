.class public abstract Lnd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v0, Lnd/i0;

    sget-object v2, Lnd/m;->l:Lnd/m;

    new-instance v3, Lcd/c;

    const-string v1, "\u0412\u0456\u0442\u0430\u0454\u043c\u043e \u0432 BlindDriver"

    const-string v4, "Welcome to BlindDriver"

    invoke-direct {v3, v1, v4}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcd/c;

    const-string v1, "\u041a\u043e\u0440\u043e\u0442\u043a\u0430 \u0434\u0435\u043c\u043e\u043d\u0441\u0442\u0440\u0430\u0446\u0456\u044f: \u043f\u043e\u043a\u0430\u0436\u0435\u043c\u043e \u043a\u043d\u043e\u043f\u043a\u0438, \u0430 \u043f\u043e\u0442\u0456\u043c \u00ab\u043f\u043e\u0457\u0437\u0434\u043a\u0443\u00bb, \u0434\u0435 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0435\u0434\u0435, \u043d\u0430\u0432\u0456\u0442\u044c \u043a\u043e\u043b\u0438 GPS \u0433\u043b\u0443\u0448\u0430\u0442\u044c. \u041d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0439 \u043d\u0435 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f. \u0417\u0430\u043a\u0440\u0438\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438 \u043a\u043d\u043e\u043f\u043a\u043e\u044e \u00ab\u041f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u0438\u00bb."

    const-string v5, "A quick demo: we will show the buttons, then a simulated drive where the app keeps guiding even when GPS is jammed. Nothing is switched on or changed. You can close it at any time with \u201cSkip\u201d."

    invoke-direct {v4, v1, v5}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x3f0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v2, v1

    new-instance v1, Lnd/i0;

    const-string v3, "search"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u041a\u0443\u0434\u0438 \u0457\u0445\u0430\u0442\u0438"

    const-string v6, "Where to go"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0430\u0434\u0440\u0435\u0441\u0443 \u0439 \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0443, \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u043e\u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c. \u0423 \u043f\u043e\u0440\u043e\u0436\u043d\u044c\u043e\u043c\u0443 \u0440\u044f\u0434\u043a\u0443 \u0454 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u25be (\u043e\u0441\u0442\u0430\u043d\u043d\u0456 \u043c\u0456\u0441\u0446\u044f) \u0456 \u043a\u043d\u043e\u043f\u043a\u0430 \ud83d\udccb: \u0432\u043e\u043d\u0430 \u0431\u0435\u0440\u0435 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u0437 \u0431\u0443\u0444\u0435\u0440\u0430 \u043e\u0431\u043c\u0456\u043d\u0443."

    const-string v7, "Type an address and pick a suggestion, the route builds itself. In the empty field there is a \u25be arrow (recent places) and a \ud83d\udccb button that takes coordinates from the clipboard."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x3f0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v10, v1

    new-instance v1, Lnd/i0;

    const-string v3, "points"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0422\u043e\u0447\u043a\u0438 A, B \u0456 \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb"

    const-string v6, "Points A, B and \u201cvia\u201d"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "A \u2014 \u0437\u0432\u0456\u0434\u043a\u0438 (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u00ab\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435\u00bb), B \u2014 \u043a\u0443\u0434\u0438, \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb \u2014 \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0430 \u0442\u043e\u0447\u043a\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u0447\u0438\u043f, \u0449\u043e\u0431 \u043e\u0431\u0440\u0430\u0442\u0438, \u044f\u043a\u0443 \u0442\u043e\u0447\u043a\u0443 \u0437\u0430\u0434\u0430\u0454\u0442\u0435; \u0434\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0457\u0457."

    const-string v7, "A is the start (\u201cMy location\u201d by default), B is the destination, \u201cvia\u201d is a waypoint. Tap a chip to choose which point you are setting; a long press on the map places it."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v11, v1

    new-instance v1, Lnd/i0;

    const-string v3, "abrows"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u042f\u043a \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u0430\u0434\u0440\u0435\u0441\u0443"

    const-string v6, "How to save an address"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0417\u0430\u0434\u0430\u0439\u0442\u0435 \u0442\u043e\u0447\u043a\u0443 A \u0430\u0431\u043e B, \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043d\u0430 \u043d\u0435\u0457 \u0439 \u0443\u0442\u0440\u0438\u043c\u0443\u0439\u0442\u0435. \u0417\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f \u043c\u0435\u043d\u044e: \u00ab\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u044f\u043a \u0414\u0456\u043c\u00bb, \u00ab\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u044f\u043a \u0420\u043e\u0431\u043e\u0442\u0430\u00bb \u0430\u0431\u043e \u00ab\u0414\u043e\u0434\u0430\u0442\u0438 \u0432 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u0430\u0434\u0440\u0435\u0441\u0438\u00bb."

    const-string v7, "Set point A or B, then press and hold it. A menu appears: \u201cSave as Home\u201d, \u201cSave as Work\u201d or \u201cAdd to saved addresses\u201d."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x370

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v12, v1

    new-instance v1, Lnd/i0;

    const-string v3, "favs"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0414\u0456\u043c, \u0440\u043e\u0431\u043e\u0442\u0430, \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0435"

    const-string v6, "Home, work, saved"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u0430\u0434\u0440\u0435\u0441\u0438 \u043f\u043e\u0442\u0456\u043c \u0441\u0442\u0430\u0432\u043b\u044f\u0442\u044c\u0441\u044f \u043e\u0434\u043d\u0438\u043c \u0434\u043e\u0442\u0438\u043a\u043e\u043c: \ud83c\udfe0 \u2014 \u00ab\u0414\u0456\u043c\u00bb, \ud83d\udcbc \u2014 \u00ab\u0420\u043e\u0431\u043e\u0442\u0430\u00bb. \ud83d\uddfa \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \ud83d\udccd \u2014 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u0430\u0434\u0440\u0435\u0441\u0438."

    const-string v7, "Saved places are then set with one tap: \ud83c\udfe0 is Home, \ud83d\udcbc is Work. \ud83d\uddfa opens saved routes, \ud83d\udccd opens saved addresses."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3f0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v13, v1

    new-instance v1, Lnd/i0;

    const-string v3, "gps"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0421\u0442\u0430\u043d GPS"

    const-string v6, "GPS status"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u2713 \u2014 \u043f\u0440\u0438\u0439\u043c\u0430\u0454, \u26a0 \u2014 \u0441\u043b\u0430\u0431\u043a\u0438\u0439, \u2715 \u2014 \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u043e, \u26a1 \u2014 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0438 \u0434\u0456\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0443: \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438, \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438, \u0440\u0456\u0432\u0435\u043d\u044c \u0441\u0438\u0433\u043d\u0430\u043b\u0443."

    const-string v7, "\u2713 \u2014 receiving, \u26a0 \u2014 weak, \u2715 \u2014 lost, \u26a1 \u2014 jamming. Tap it to see diagnostics: coordinates, satellites, signal level."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v14, v1

    new-instance v1, Lnd/i0;

    const-string v3, "voice"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0413\u043e\u043b\u043e\u0441"

    const-string v6, "Voice"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u041f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0454 \u0440\u0435\u0436\u0438\u043c \u043f\u043e \u043a\u043e\u043b\u0443: \u0443\u0441\u0435, \u043b\u0438\u0448\u0435 \u0432\u0430\u0436\u043b\u0438\u0432\u0435, \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e. \u0413\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u0456 \u043f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u0433\u043e\u043b\u043e\u0441\u0443 \u2014 \u0443 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f\u0445."

    const-string v7, "Cycles through: everything, only important, off. Voice volume and boost are in Settings."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v15, v1

    new-instance v1, Lnd/i0;

    const-string v3, "orient"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u041e\u0440\u0456\u0454\u043d\u0442\u0430\u0446\u0456\u044f \u043a\u0430\u0440\u0442\u0438"

    const-string v6, "Map orientation"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\ud83e\udded \u2014 \u043a\u0430\u0440\u0442\u0430 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u043e\u043c \u0440\u0443\u0445\u0443, \u00abN \u2191\u00bb \u2014 \u043f\u0456\u0432\u043d\u0456\u0447 \u0443\u0433\u043e\u0440\u0456."

    const-string v7, "\ud83e\udded \u2014 the map turns with your heading, \u201cN \u2191\u201d keeps north up."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v16, v1

    new-instance v1, Lnd/i0;

    const-string v3, "theme"

    const-string v4, "d3"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0422\u0435\u043c\u0430 \u0439 3D"

    const-string v6, "Theme and 3D"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0422\u0435\u043c\u0430 \u043a\u0430\u0440\u0442\u0438: \u0430\u0432\u0442\u043e, \u0434\u0435\u043d\u044c \u0430\u0431\u043e \u043d\u0456\u0447. \u00ab3D\u00bb \u2014 \u043d\u0430\u0445\u0438\u043b \u043a\u0430\u0440\u0442\u0438 \u0439 \u043e\u0431\'\u0454\u043c\u043d\u0456 \u0431\u0443\u0434\u0456\u0432\u043b\u0456; \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u043d\u0430\u0445\u0438\u043b \u0454 \u0437\u0430\u0432\u0436\u0434\u0438, \u043a\u043d\u043e\u043f\u043a\u0430 \u0432\u043c\u0438\u043a\u0430\u0454 \u043b\u0438\u0448\u0435 \u0431\u0443\u0434\u0438\u043d\u043a\u0438."

    const-string v7, "Map theme: auto, day or night. \u201c3D\u201d tilts the map and shows buildings in 3D; during guidance the tilt is always on and the button only toggles buildings."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v17, v1

    new-instance v1, Lnd/i0;

    const-string v3, "fold"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0417\u0433\u043e\u0440\u043d\u0443\u0442\u0438 \u0432\u0435\u0440\u0445"

    const-string v6, "Collapse the top"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0422\u0440\u0438\u043a\u0443\u0442\u043d\u0438\u043a \u25b2 \u0437\u0433\u043e\u0440\u0442\u0430\u0454 \u043f\u043e\u0448\u0443\u043a, \u0442\u043e\u0447\u043a\u0438 \u0439 \u0440\u044f\u0434 \u0437\u043d\u0430\u0447\u043a\u0456\u0432, \u0449\u043e\u0431 \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u0431\u0456\u043b\u044c\u0448\u0435 \u043a\u0430\u0440\u0442\u0438. \u0423 \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u043e\u043c\u0443 \u0441\u0442\u0430\u043d\u0456 \u043f\u043e\u0440\u0443\u0447 \u0432\u0438\u0434\u043d\u043e \u043a\u0440\u0430\u043f\u043a\u0443 \u0441\u0442\u0430\u043d\u0443 GPS. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u0449\u0435 \u0440\u0430\u0437, \u0449\u043e\u0431 \u0440\u043e\u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438."

    const-string v7, "The \u25b2 triangle collapses the search, points and icon row to show more map. When collapsed, a GPS status dot is shown next to it. Tap again to expand."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v18, v10

    move-object v10, v1

    new-instance v1, Lnd/i0;

    const-string v3, "alert"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0422\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v6, "Air alerts"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0416\u043e\u0432\u0442\u0435 \u0430\u0431\u043e \u0447\u0435\u0440\u0432\u043e\u043d\u0435 \u043a\u043e\u043b\u043e \u00ab!\u00bb \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0454 \u043f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456 \u0430\u0431\u043e \u043f\u043e\u0440\u0443\u0447 (\u0434\u0430\u043d\u0456 ukrainealarm.com). \u041a\u043e\u043b\u0456\u0440 \u2014 \u0440\u0456\u0432\u0435\u043d\u044c. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0438 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0456 \u0440\u0430\u0439\u043e\u043d; \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e \u2014 \u0449\u043e\u0431 \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438. \u0411\u0435\u0437 \u0442\u0440\u0438\u0432\u043e\u0433\u0438 \u0437\u043d\u0430\u0447\u043a\u0430 \u043d\u0435\u043c\u0430\u0454."

    const-string v7, "A yellow or red \u201c!\u201d circle appears when there is an air-raid alert in your area or nearby (data from ukrainealarm.com). The color is the level. Tap to see the start time and district; tap again to collapse. Without an alert there is no icon."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v19, v11

    move-object v11, v1

    new-instance v1, Lnd/i0;

    const-string v3, "share"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u041f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0432 \u0456\u043d\u0448\u0456 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v6, "Sharing your position with other apps"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u041a\u043d\u043e\u043f\u043a\u0430 \u0437 \u0440\u0430\u0434\u0456\u043e\u0445\u0432\u0438\u043b\u044f\u043c\u0438 \u00ab((\u2022))\u00bb \u0432\u0456\u0434\u0434\u0430\u0454 \u0432\u0430\u0448\u0443 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u0456\u043d\u0448\u0438\u043c \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u0439\u043d\u0438\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u043c (Waze, \u043a\u0430\u0440\u0442\u0438), \u043a\u043e\u043b\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u044c\u043e\u0433\u043e GPS \u043d\u0435\u043c\u0430\u0454. \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u0442\u0438 \u0446\u0435 \u0442\u0440\u0435\u0431\u0430 \u0432 \u043a\u0456\u043b\u044c\u043a\u0430 \u043a\u0440\u043e\u043a\u0456\u0432, \u0442\u043e\u043c\u0443 \u043f\u043e\u0434\u0438\u0432\u0456\u0442\u044c\u0441\u044f \u043e\u043a\u0440\u0435\u043c\u0435 \u0432\u0456\u0434\u0435\u043e."

    const-string v7, "The radio-waves \u201c((\u2022))\u201d button gives your position to other navigation apps (Waze, maps) when there is no real GPS. Setting it up takes a few steps, so please watch the separate video."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x1f0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v20, v12

    move-object v12, v1

    new-instance v1, Lnd/i0;

    const-string v3, "rec"

    const-string v4, "log"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "REC \u0456 \u041b\u043e\u0433"

    const-string v6, "REC and Log"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "REC \u0437\u0430\u043f\u0438\u0441\u0443\u0454 \u043b\u043e\u0433 \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0447\u0435\u0440\u0432\u043e\u043d\u0438\u0439 \u2014 \u0437\u0430\u043f\u0438\u0441 \u0456\u0434\u0435). \u0412\u043c\u0438\u043a\u0430\u0439\u0442\u0435 \u0439\u043e\u0433\u043e \u0414\u041e \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u043f\u043e\u0457\u0437\u0434\u043a\u0438: \u0437\u0430\u0434\u043d\u0456\u043c \u0447\u0438\u0441\u043b\u043e\u043c \u043b\u043e\u0433 \u043d\u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u0442\u0438. \u00ab\u041b\u043e\u0433\u00bb \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454 \u0444\u0430\u0439\u043b \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443 (\u0443 Telegram \u0447\u0438 \u043d\u0430 \u043f\u043e\u0448\u0442\u0443), \u044f\u043a\u0449\u043e \u0449\u043e\u0441\u044c \u043f\u0456\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a."

    const-string v7, "REC records a trip log (red means recording). Turn it on BEFORE the trip starts: a log cannot be recorded afterwards. \u201cLog\u201d sends the file to the developer (Telegram or email) if something went wrong."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3f0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v21, v13

    move-object v13, v1

    new-instance v1, Lnd/i0;

    const-string v3, "zoom"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u041c\u0430\u0441\u0448\u0442\u0430\u0431"

    const-string v6, "Zoom"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u00ab+\u00bb \u0456 \u00ab\u2212\u00bb \u0437\u043c\u0456\u043d\u044e\u044e\u0442\u044c \u043c\u0430\u0441\u0448\u0442\u0430\u0431. \u00abAuto\u00bb \u0441\u0430\u043c \u0432\u0456\u0434\u0434\u0430\u043b\u044f\u0454 \u043a\u0430\u0440\u0442\u0443 \u043d\u0430 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0439 \u043d\u0430\u0431\u043b\u0438\u0436\u0430\u0454 \u0457\u0457 \u043f\u0435\u0440\u0435\u0434 \u043c\u0430\u043d\u0435\u0432\u0440\u043e\u043c."

    const-string v7, "\u201c+\u201d and \u201c\u2212\u201d change the zoom. \u201cAuto\u201d zooms out at speed and zooms in before a maneuver."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v22, v14

    move-object v14, v1

    new-instance v1, Lnd/i0;

    const-string v3, "center_main"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0426\u0435\u043d\u0442\u0440\u0443\u0432\u0430\u0442\u0438 \u043d\u0430 \u043c\u0435\u043d\u0456"

    const-string v6, "Center on me"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u041f\u0440\u0438\u0446\u0456\u043b \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u043a\u0430\u0440\u0442\u0443 \u0434\u043e \u0432\u0430\u0448\u043e\u0457 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u043f\u0456\u0441\u043b\u044f \u0442\u043e\u0433\u043e, \u044f\u043a \u0432\u0438 \u0457\u0457 \u043f\u0435\u0440\u0435\u0441\u0443\u043d\u0443\u043b\u0438 \u043f\u0430\u043b\u044c\u0446\u0435\u043c."

    const-string v7, "The crosshair brings the map back to your position after you have dragged it."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v23, v15

    move-object v15, v1

    new-instance v1, Lnd/i0;

    const-string v3, "settings"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f"

    const-string v6, "Settings"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u0413\u043e\u043b\u043e\u0441, \u043a\u0430\u043c\u0435\u0440\u0438, \u043e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0438 \u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u0442\u0438\u043f \u0430\u0432\u0442\u043e, \u0434\u043e\u0432\u0456\u0434\u043a\u0430, \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043b\u043e\u0433\u0443, \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430. \u0422\u0443\u0442 \u0436\u0435 \u0446\u0435\u0439 \u0442\u0443\u0440 \u043c\u043e\u0436\u043d\u0430 \u043f\u0440\u043e\u0439\u0442\u0438 \u0449\u0435 \u0440\u0430\u0437."

    const-string v7, "Voice, cameras, offline maps and routes, vehicle type, help, sending a log, subscription. You can replay this tour here too."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    new-instance v1, Lnd/i0;

    const-string v3, "go"

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcd/c;

    const-string v5, "\u0420\u0443\u0448\u0430\u0439"

    const-string v6, "Go"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u041a\u043e\u043b\u0438 \u0437\u0430\u0434\u0430\u043d\u043e A \u0456 B, \u043a\u043d\u043e\u043f\u043a\u0430 \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 (\u0434\u043e \u0442\u0440\u044c\u043e\u0445 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0456\u0432 \u0456\u0437 \u0447\u0430\u0441\u043e\u043c \u0456 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438). \u00ab\u0420\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0438\u00bb \u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u0414\u0430\u043b\u0456 \u2014 \u0442\u0435, \u0449\u043e \u0432\u0438 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0435 \u0432 \u0434\u043e\u0440\u043e\u0437\u0456."

    const-string v7, "When A and B are set, the button builds the route (up to three options with time and traffic). \u201cStart\u201d begins guidance. Next: what you will see on the road."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    new-instance v25, Lnd/i0;

    sget-object v27, Lnd/m;->m:Lnd/m;

    const-string v2, "maneuver"

    move-object/from16 v26, v27

    invoke-static {v2}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    new-instance v3, Lcd/c;

    const-string v4, "\u041f\u0430\u043d\u0435\u043b\u044c \u043c\u0430\u043d\u0435\u0432\u0440\u0443"

    const-string v5, "Maneuver panel"

    invoke-direct {v3, v4, v5}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcd/c;

    const-string v5, "\u0417\u0432\u0435\u0440\u0445\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0434\u043e \u043c\u0430\u043d\u0435\u0432\u0440\u0443, \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0439 \u0456\u043d\u0441\u0442\u0440\u0443\u043a\u0446\u0456\u044f; \u043d\u0438\u0436\u0447\u0435 \u00ab\u041f\u043e\u0442\u0456\u043c\u2026\u00bb \u2014 \u043d\u0430\u0441\u0442\u0443\u043f\u043d\u0438\u0439 \u043c\u0430\u043d\u0435\u0432\u0440. \u041f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u043e\u0437\u0432\u0443\u0447\u0443\u044e\u0442\u044c\u0441\u044f \u0433\u043e\u043b\u043e\u0441\u043e\u043c."

    const-string v6, "On top: distance to the maneuver, arrow and instruction; below, \u201cThen\u2026\u201d is the next maneuver. Prompts are also spoken."

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v32, 0x43e60000    # 460.0f

    const/16 v33, 0x380

    const/high16 v30, 0x43be0000    # 380.0f

    const/high16 v31, 0x44340000    # 720.0f

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-direct/range {v25 .. v33}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v27, v26

    new-instance v26, Lnd/i0;

    const-string v3, "speed"

    const-string v4, "limit"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v3, Lcd/c;

    const-string v4, "\u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0456 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f"

    const-string v5, "Speed and limit"

    invoke-direct {v3, v4, v5}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcd/c;

    const-string v5, "\u0417\u043b\u0456\u0432\u0430 \u0437\u043d\u0438\u0437\u0443 \u2014 \u0432\u0430\u0448\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c (\u0441\u0438\u043d\u044f \u043a\u0430\u0439\u043c\u0430), \u043d\u0430\u0434 \u043d\u0435\u044e \u2014 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043d\u0430 \u0446\u0456\u0439 \u0434\u043e\u0440\u043e\u0437\u0456. \u041f\u0435\u0440\u0435\u0432\u0438\u0449\u0438\u0442\u0435 \u2014 \u043a\u0430\u0439\u043c\u0430 \u0441\u0442\u0430\u043d\u0435 \u0447\u0435\u0440\u0432\u043e\u043d\u043e\u044e. \u041f\u0440\u043e\u0447\u0435\u0440\u043a \u043e\u0437\u043d\u0430\u0447\u0430\u0454, \u0449\u043e \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0447\u0438 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u043a\u0438 \u043d\u0435\u0432\u0456\u0434\u043e\u043c\u0456."

    const-string v6, "Bottom left is your speed (blue ring), above it the limit on this road. If you speed, the ring turns red. A dash means the speed or limit is not known yet."

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v33, 0x43960000    # 300.0f

    const/16 v34, 0x380

    const/high16 v31, 0x43160000    # 150.0f

    const/high16 v32, 0x43eb0000    # 470.0f

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v3, v19

    move-object/from16 v19, v26

    new-instance v26, Lnd/i0;

    const-string v4, "info"

    invoke-static {v4}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v4, Lcd/c;

    const-string v5, "\u0412\u0443\u043b\u0438\u0446\u044f \u0439 \u043f\u0440\u0438\u0431\u0443\u0442\u0442\u044f"

    const-string v6, "Street and arrival"

    invoke-direct {v4, v5, v6}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcd/c;

    const-string v6, "\u041d\u0430\u0437\u0432\u0430 \u0432\u0443\u043b\u0438\u0446\u0456, \u044f\u043a\u043e\u044e \u0457\u0434\u0435\u0442\u0435, \u0447\u0430\u0441 \u043f\u0440\u0438\u0431\u0443\u0442\u0442\u044f, \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0456 \u0447\u0430\u0441, \u0449\u043e \u043b\u0438\u0448\u0438\u043b\u0438\u0441\u044c. \u041d\u0438\u0436\u0447\u0435 \u2014 \u0437\u0432\u0456\u0434\u043a\u0438 \u0431\u0435\u0440\u0435\u0442\u044c\u0441\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0439 \u0432\u0430\u0448\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c. \u0414\u043e\u0432\u0433\u0430 \u043d\u0430\u0437\u0432\u0430 \u043f\u0440\u043e\u043a\u0440\u0443\u0447\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v7, "The street you are on, arrival time, remaining distance and time. Below: where the position comes from and your speed. A long name scrolls."

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v33, 0x440c0000    # 560.0f

    const/high16 v31, 0x42c80000    # 100.0f

    const/high16 v32, 0x440c0000    # 560.0f

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v4, v20

    move-object/from16 v20, v26

    new-instance v26, Lnd/i0;

    const-string v5, "nudge"

    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v5, Lcd/c;

    const-string v6, "\u2191100 \u0456 \u2193100"

    const-string v7, "\u2191100 and \u2193100"

    invoke-direct {v5, v6, v7}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcd/c;

    const-string v7, "\u041c\u0430\u0440\u043a\u0435\u0440 \u0432\u0456\u0434\u0441\u0442\u0430\u0454 \u0447\u0438 \u0432\u0438\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454? \u041f\u0456\u0434\u0448\u0442\u043e\u0432\u0445\u043d\u0456\u0442\u044c \u0439\u043e\u0433\u043e \u043d\u0430 100 \u043c \u0432\u043f\u0435\u0440\u0435\u0434 (\u2191) \u0430\u0431\u043e \u043d\u0430\u0437\u0430\u0434 (\u2193). \u042f\u043a\u0449\u043e \u0443\u0442\u0440\u0438\u043c\u0443\u0432\u0430\u0442\u0438 \u043a\u043d\u043e\u043f\u043a\u0443, \u043a\u0440\u043e\u043a \u0440\u043e\u0441\u0442\u0435."

    const-string v8, "Marker behind or ahead? Nudge it 100 m forward (\u2191) or back (\u2193). If you hold the button, the step grows."

    invoke-direct {v6, v7, v8}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v5, v21

    move-object/from16 v21, v26

    new-instance v26, Lnd/i0;

    const-string v6, "reroute"

    const-string v7, "center"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v6, Lcd/c;

    const-string v7, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0439 \u0446\u0435\u043d\u0442\u0440"

    const-string v8, "Reroute and center"

    invoke-direct {v6, v7, v8}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcd/c;

    const-string v8, "\u21bb \u0431\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437\u0430\u043d\u043e\u0432\u043e \u0432\u0456\u0434 \u0432\u0430\u0448\u043e\u0433\u043e \u043c\u0456\u0441\u0446\u044f (\u0441\u0442\u0430\u0454 \u0447\u0435\u0440\u0432\u043e\u043d\u043e\u044e, \u043a\u043e\u043b\u0438 \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443). \u041f\u0440\u0438\u0446\u0456\u043b \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u043a\u0430\u0440\u0442\u0443 \u0434\u043e \u0432\u0430\u0441."

    const-string v9, "\u21bb rebuilds the route from where you are (it turns red when you leave the route). The crosshair brings the map back to you."

    invoke-direct {v7, v8, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v6, v22

    move-object/from16 v22, v26

    new-instance v26, Lnd/i0;

    const-string v7, "motion"

    invoke-static {v7}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v7, Lcd/c;

    const-string v8, "\u0410\u0412\u0422\u041e / \u0407\u0414\u0423 / \u0421\u0422\u041e\u042e"

    const-string v9, "AUTO / MOVING / STOPPED"

    invoke-direct {v7, v8, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcd/c;

    const-string v9, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441\u0430\u043c\u0430 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0454 \u00ab\u0457\u0434\u0443\u00bb \u0432\u0456\u0434 \u00ab\u0441\u0442\u043e\u044e\u00bb. \u042f\u043a\u0449\u043e \u043f\u043e\u043c\u0438\u043b\u044f\u0454\u0442\u044c\u0441\u044f, \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c: \u0407\u0414\u0423 \u0430\u0431\u043e \u0421\u0422\u041e\u042e. \u0414\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0410\u0412\u0422\u041e."

    move-object/from16 v35, v0

    const-string v0, "The app tells \u201cmoving\u201d from \u201cstopped\u201d by itself. If it is wrong, tap to set MOVING or STOPPED. A long press returns to AUTO."

    invoke-direct {v8, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v7, v23

    move-object/from16 v23, v26

    new-instance v26, Lnd/i0;

    const-string v0, "stop"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v0, Lcd/c;

    const-string v8, "\u0421\u0442\u043e\u043f"

    const-string v9, "Stop"

    invoke-direct {v0, v8, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcd/c;

    const-string v9, "\u0417\u0430\u0432\u0435\u0440\u0448\u0443\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    move-object/from16 v29, v0

    const-string v0, "Ends guidance."

    invoke-direct {v8, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v8

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v8, v24

    move-object/from16 v24, v26

    new-instance v26, Lnd/i0;

    const-string v0, "gps_ride"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v0, Lcd/c;

    const-string v9, "\u041a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e"

    move-object/from16 v36, v1

    const-string v1, "When GPS is jammed"

    invoke-direct {v0, v9, v1}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v9, "\u0417\u043d\u0430\u0447\u043e\u043a \u0441\u0442\u0430\u0454 \u2715 \u0430\u0431\u043e \u26a1, \u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0441\u0456\u0440\u043e\u044e \u0437 \u043a\u043e\u043b\u043e\u043c \u043d\u0435\u0432\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043e\u0441\u0442\u0456. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0435\u0434\u0435 \u0434\u0430\u043b\u0456: \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438, \u043c\u0435\u0440\u0435\u0436\u0435\u044e \u0439 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433, \u0456 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454 \u0433\u043e\u043b\u043e\u0441\u043e\u043c. \u041e\u0440\u0456\u0454\u043d\u0442\u0443\u0439\u0442\u0435\u0441\u044f \u043d\u0430 \u0442\u0435, \u0449\u043e \u0431\u0430\u0447\u0438\u0442\u0435 \u043d\u0430 \u0434\u043e\u0440\u043e\u0437\u0456."

    move-object/from16 v29, v0

    const-string v0, "The badge turns \u2715 or \u26a1 and the arrow turns gray with an uncertainty circle. The app keeps guiding: from sensors, network and the road map, and warns you by voice. Trust what you see on the road."

    invoke-direct {v1, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v33, 0x44610000    # 900.0f

    const/high16 v31, 0x43c80000    # 400.0f

    const v32, 0x448fc000    # 1150.0f

    move-object/from16 v30, v1

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object/from16 v1, v18

    move-object/from16 v18, v25

    move-object/from16 v25, v26

    new-instance v26, Lnd/i0;

    invoke-static {v2}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    new-instance v0, Lcd/c;

    const-string v2, "\u0417\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v9, "Left the route"

    invoke-direct {v0, v2, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcd/c;

    const-string v9, "\u041d\u0430\u0432\u0456\u0442\u044c \u0431\u0435\u0437 GPS \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0446\u0435 \u043f\u043e\u043c\u0456\u0447\u0430\u0454: \u043f\u0430\u043d\u0435\u043b\u044c \u0441\u0442\u0430\u0454 \u0447\u0435\u0440\u0432\u043e\u043d\u043e\u044e, \u0456 \u0437\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c. \u042f\u043a\u0449\u043e \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0437\u0430\u0439\u0432\u0430, \u0454 \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u041f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456\u0439\u00bb."

    move-object/from16 v29, v0

    const-string v0, "Even without GPS the app notices: the panel turns red and within seconds the route is rebuilt by itself. If the reroute was unnecessary, there is a \u201cRestore previous\u201d button."

    invoke-direct {v2, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v33, 0x44a78000    # 1340.0f

    const v31, 0x44938000    # 1180.0f

    const/high16 v32, 0x44be0000    # 1520.0f

    move-object/from16 v30, v2

    invoke-direct/range {v26 .. v34}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    new-instance v37, Lnd/i0;

    sget-object v38, Lnd/m;->n:Lnd/m;

    const-string v0, "set_map_group"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v39

    new-instance v0, Lcd/c;

    const-string v2, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0434\u0430\u043d\u0456 \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c"

    const-string v9, "Download the data in advance"

    invoke-direct {v0, v2, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcd/c;

    const-string v9, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u0440\u0430\u0445\u0443\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433, \u0442\u043e\u0436 \u0439\u043e\u043c\u0443 \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u0456 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0456 \u0434\u0430\u043d\u0456. \u0417\u0440\u043e\u0431\u0456\u0442\u044c \u0446\u0435 \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c \u0456 \u043a\u0440\u0430\u0449\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f (\u2699) \u2192 \u00ab\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d\u00bb."

    move-object/from16 v40, v0

    const-string v0, "The new guidance without GPS works out your position from the road map, so it needs downloaded data. Do it in advance, preferably over Wi-Fi: Settings (\u2699) \u2192 \u201cMap & offline\u201d."

    invoke-direct {v2, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v44, 0x0

    const/16 v45, 0x3f0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v41, v2

    invoke-direct/range {v37 .. v45}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    new-instance v28, Lnd/i0;

    const-string v0, "set_graph"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    new-instance v0, Lcd/c;

    const-string v2, "\u0429\u043e \u0441\u0430\u043c\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438"

    const-string v9, "What to download"

    invoke-direct {v0, v2, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcd/c;

    const-string v9, "\u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438\u00bb \u2014 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 (\u0437\u0430 \u043d\u0438\u043c \u043f\u0440\u0430\u0446\u044e\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS). \u0422\u0430\u043a\u043e\u0436 \u043c\u043e\u0436\u043d\u0430 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441\u00bb \u0456 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0443\u00bb. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0439\u0434\u0435 \u0443 \u0444\u043e\u043d\u0456 \u0439 \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u044c\u0441\u044f, \u044f\u043a\u0449\u043e \u0432\u0438\u0439\u0442\u0438 \u0437 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u044c."

    move-object/from16 v41, v0

    const-string v0, "\u201cOffline routes\u201d is the road graph of Ukraine (guidance without GPS uses it). You can also download \u201cOffline address search\u201d and \u201cOffline map\u201d. Downloads run in the background and continue if you leave settings."

    invoke-direct {v2, v9, v0}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v45, 0x0

    const/16 v46, 0x2f0

    move-object/from16 v42, v2

    move-object/from16 v39, v38

    move-object/from16 v38, v28

    invoke-direct/range {v38 .. v46}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    new-instance v39, Lnd/i0;

    sget-object v40, Lnd/m;->o:Lnd/m;

    new-instance v0, Lcd/c;

    const-string v2, "\u041a\u0456\u043b\u044c\u043a\u0430 \u043f\u043e\u0440\u0430\u0434"

    const-string v9, "A few tips"

    invoke-direct {v0, v2, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcd/c;

    const-string v9, ""

    invoke-direct {v2, v9, v9}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v46, 0x0

    const/16 v47, 0x3f0

    const/16 v41, 0x0

    move-object/from16 v42, v0

    move-object/from16 v43, v2

    invoke-direct/range {v39 .. v47}, Lnd/i0;-><init>(Lnd/m;Ljava/util/List;Lcd/c;Lcd/c;FFFI)V

    move-object v2, v1

    move-object/from16 v9, v17

    move-object/from16 v1, v35

    move-object/from16 v17, v36

    move-object/from16 v27, v37

    move-object/from16 v29, v39

    filled-new-array/range {v1 .. v29}, [Lnd/i0;

    move-result-object v0

    invoke-static {v0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lnd/l;->a:Ljava/util/ArrayList;

    new-instance v0, Lcd/c;

    const-string v1, "\u041a\u0430\u0440\u0442\u0438 \u2014 \u0434\u043e \u043f\u043e\u0457\u0437\u0434\u043a\u0438"

    const-string v2, "Maps before the trip"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u043f\u043e\u0442\u0440\u0435\u0431\u0443\u0454 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e\u0433\u043e \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0439\u043e\u0433\u043e \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c \u0447\u0435\u0440\u0435\u0437 Wi-Fi: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d\u00bb \u2192 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438\u00bb (\u0442\u0430\u043a\u043e\u0436 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441\u00bb \u0456 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430\u00bb)."

    const-string v3, "Guidance without GPS needs the downloaded road graph. Download it in advance over Wi-Fi: Settings \u2192 \u201cMap & offline\u201d \u2192 \u201cOffline routes\u201d (also \u201cOffline address search\u201d and \u201cOffline map\u201d)."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u041b\u043e\u0433 \u2014 \u0434\u043e \u043f\u043e\u0457\u0437\u0434\u043a\u0438"

    const-string v2, "Log before the trip"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u0412\u043c\u0438\u043a\u0430\u0439\u0442\u0435 \u0437\u0430\u043f\u0438\u0441 (REC) \u0434\u043e \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u043f\u043e\u0457\u0437\u0434\u043a\u0438. \u0417\u0430\u0434\u043d\u0456\u043c \u0447\u0438\u0441\u043b\u043e\u043c \u043b\u043e\u0433 \u043d\u0435 \u0437\u0430\u043f\u0438\u0441\u0443\u0454\u0442\u044c\u0441\u044f, \u0456 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043f\u043e\u0442\u0456\u043c \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0432\u0438\u0439\u0434\u0435."

    const-string v3, "Turn recording (REC) on before the trip starts. A log cannot be recorded afterwards, so there will be nothing to send."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lt8/j;

    invoke-direct {v5, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u0416\u0438\u0432\u043b\u0435\u043d\u043d\u044f \u0439 \u0435\u043a\u0440\u0430\u043d"

    const-string v2, "Power and screen"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u0422\u0440\u0438\u043c\u0430\u0439\u0442\u0435 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0430 \u0437\u0430\u0440\u044f\u0434\u0446\u0456. \u042f\u043a\u0449\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u0430 \u00ab\u043f\u0440\u0438\u0441\u0438\u043f\u043b\u044f\u0454\u00bb \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a (Xiaomi, Samsung, Huawei \u0442\u0430 \u0456\u043d\u0448\u0456), \u0434\u043e\u0437\u0432\u043e\u043b\u044c\u0442\u0435 \u0439\u043e\u043c\u0443 \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438 \u0443 \u0444\u043e\u043d\u0456: \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u2192 \u0411\u0430\u0442\u0430\u0440\u0435\u044f \u2192 BlindDriver \u2192 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c."

    const-string v3, "Keep the phone charging. If the system puts the app to sleep (Xiaomi, Samsung, Huawei and others), allow it to run in the background: phone settings \u2192 Battery \u2192 BlindDriver \u2192 unrestricted."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lt8/j;

    invoke-direct {v6, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u0421\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f"

    const-string v2, "Notification"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u041f\u043e\u043a\u0438 \u0439\u0434\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f, \u0443 \u0448\u0442\u043e\u0440\u0446\u0456 \u0454 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f: \u0446\u0435 \u043d\u0435 \u0440\u0435\u043a\u043b\u0430\u043c\u0430, \u0430 \u043e\u0437\u043d\u0430\u043a\u0430, \u0449\u043e \u0441\u043b\u0443\u0436\u0431\u0430 \u043f\u0440\u0430\u0446\u044e\u0454. \u0411\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u0430 \u043c\u043e\u0436\u0435 \u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f, \u043a\u043e\u043b\u0438 \u0435\u043a\u0440\u0430\u043d \u0437\u0433\u0430\u0441\u043d\u0435."

    const-string v3, "While guidance runs there is a notification in the shade: it is not an ad, it shows the service is working. Without it the system may stop guidance when the screen turns off."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lt8/j;

    invoke-direct {v7, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u0417\u0432\u0443\u043a"

    const-string v2, "Sound"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u00ab\u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0438 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0434\u0437\u0432\u0456\u043d\u043a\u0430\u00bb \u0456 \u00ab\u041f\u0430\u0443\u0437\u0430 \u043c\u0443\u0437\u0438\u043a\u0438\u00bb \u2014 \u0443 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f\u0445 \u2192 \u0413\u043e\u043b\u043e\u0441. \u041f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u0433\u043e\u043b\u043e\u0441\u0443 \u043d\u0435 \u0437\u043c\u0456\u043d\u044e\u0454 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0443 \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430."

    const-string v3, "\u201cDon\u2019t speak during a call\u201d and \u201cPause music\u201d are in Settings \u2192 Voice. Voice boost does not change the phone\u2019s system volume."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lt8/j;

    invoke-direct {v8, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u041b\u043e\u0433"

    const-string v2, "Log"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u0429\u043e\u0441\u044c \u043f\u0456\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a? \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u041b\u043e\u0433\u00bb \u043e\u0434\u0440\u0430\u0437\u0443 \u043f\u0456\u0441\u043b\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0439 \u043d\u0430\u0434\u0456\u0448\u043b\u0456\u0442\u044c \u0444\u0430\u0439\u043b. \u0427\u0438\u043c \u0448\u0432\u0438\u0434\u0448\u0435, \u0442\u0438\u043c \u043b\u0435\u0433\u0448\u0435 \u0437\u043d\u0430\u0439\u0442\u0438 \u043f\u0440\u0438\u0447\u0438\u043d\u0443."

    const-string v3, "Something went wrong? Tap \u201cLog\u201d right after the trip and send the file. The sooner, the easier to find the cause."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lt8/j;

    invoke-direct {v9, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcd/c;

    const-string v1, "\u0414\u043e\u0432\u0456\u0434\u043a\u0430"

    const-string v2, "Help"

    invoke-direct {v0, v1, v2}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcd/c;

    const-string v2, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u0414\u043e\u0432\u0456\u0434\u043a\u0430: \u0437\u043d\u0430\u0447\u043a\u0438 \u0439 \u0444\u0443\u043d\u043a\u0446\u0456\u0457\u00bb \u043e\u043f\u0438\u0441\u0443\u0454 \u043a\u043e\u0436\u0435\u043d \u0437\u043d\u0430\u0447\u043e\u043a. \u0426\u0435\u0439 \u0442\u0443\u0440 \u043c\u043e\u0436\u043d\u0430 \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0438 \u0437\u0432\u0456\u0434\u0442\u0438 \u0436."

    const-string v3, "Settings \u2192 \u201cHelp: icons and features\u201d describes every icon. You can replay this tour from there too."

    invoke-direct {v1, v2, v3}, Lcd/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lt8/j;

    invoke-direct {v10, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v4 .. v10}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnd/l;->b:Ljava/util/List;

    return-void
.end method
