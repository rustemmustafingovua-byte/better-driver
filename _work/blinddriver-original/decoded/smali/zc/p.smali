.class public abstract Lzc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lr9/i;

.field public static final c:Lr9/i;

.field public static final d:Lr9/i;

.field public static final e:Lr9/i;

.field public static final f:Lr9/i;

.field public static final g:Lr9/i;

.field public static final h:Lr9/i;

.field public static final i:Lr9/i;

.field public static final j:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr9/i;

    sget-object v1, Lr9/j;->l:[Lr9/j;

    const-string v1, "https?://[^\\s<>\"\']+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr9/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzc/p;->a:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "^\\s*(?:loc:)?([+-]?\\d{1,3}(?:\\.\\d+)?)\\s*[,;\\s]\\s*([+-]?\\d{1,3}(?:\\.\\d+)?)\\s*(?:\\(.*\\))?\\s*$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->b:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "!3d(-?\\d{1,3}\\.\\d+)!4d(-?\\d{1,3}\\.\\d+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->c:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "@(-?\\d{1,3}\\.\\d+),(-?\\d{1,3}\\.\\d+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->d:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "[?&;]center=(-?\\d{1,3}\\.\\d+)(?:,|%2C)(-?\\d{1,3}\\.\\d+)"

    invoke-direct {v0, v1, v2}, Lr9/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzc/p;->e:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "/(-?\\d{1,3}\\.\\d+),[+\\s]?(-?\\d{1,3}\\.\\d+)(?:[/?#]|$)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->f:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "[#&]map=\\d+/(-?\\d{1,3}\\.\\d+)/(-?\\d{1,3}\\.\\d+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->g:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "(\\d{1,3})\\s*\u00b0\\s*(\\d{1,2})\\s*[\'\u2032\u2019]\\s*(\\d{1,2}(?:\\.\\d+)?)\\s*(?:[\"\u2033\u201d]|\'\')?\\s*([NSns])[\\s,;]*(\\d{1,3})\\s*\u00b0\\s*(\\d{1,2})\\s*[\'\u2032\u2019]\\s*(\\d{1,2}(?:\\.\\d+)?)\\s*(?:[\"\u2033\u201d]|\'\')?\\s*([EWew])"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->h:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "(\\d{1,2}\\.\\d+)\\s*\u00b0?\\s*([NSns])[\\s,;]*(\\d{1,3}\\.\\d+)\\s*\u00b0?\\s*([EWew])"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->i:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "(?<![\\d.])([+-]?\\d{1,2}\\.\\d{3,})\\s*[,;\\s]\\s*([+-]?\\d{1,3}\\.\\d{3,})(?![\\d.])"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/p;->j:Lr9/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 4

    sget-object v0, Lzc/p;->c:Lr9/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lzc/p;->d:Lr9/i;

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lzc/p;->e:Lr9/i;

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 14

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lzc/p;->h:Lr9/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    const-string v2, "W"

    const-string v3, "S"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "toUpperCase(...)"

    const/4 v8, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/16 v6, 0x3c

    int-to-double v10, v6

    div-double/2addr v8, v10

    add-double/2addr v8, v0

    invoke-virtual {p0, v5}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/16 v5, 0xe10

    int-to-double v5, v5

    div-double/2addr v0, v5

    add-double/2addr v0, v8

    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v12, 0x6

    invoke-virtual {p0, v12}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    div-double/2addr v12, v10

    add-double/2addr v12, v8

    const/4 v8, 0x7

    invoke-virtual {p0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    div-double/2addr v8, v5

    add-double/2addr v8, v12

    invoke-virtual {p0, v4}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    neg-double v0, v0

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-double v8, v8

    :cond_1
    new-instance p0, Lua/nav/routing/GeoPoint;

    invoke-direct {p0, v0, v1, v8, v9}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {p0}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lzc/p;->i:Lr9/i;

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v5}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    neg-double v0, v0

    :cond_3
    invoke-virtual {p0, v4}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    neg-double v5, v5

    :cond_4
    new-instance p0, Lua/nav/routing/GeoPoint;

    invoke-direct {p0, v0, v1, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {p0}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lzc/p;->j:Lr9/i;

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "url"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lzc/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_1
    invoke-static {v0}, Lzc/p;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lzc/p;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "waze.com"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ll"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v5, :cond_12

    const-string v5, ".waze.com"

    invoke-static {v1, v5}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v5, "google."

    invoke-static {v1, v5, v9}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "goo.gl"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".goo.gl"

    invoke-static {v1, v5}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "g.co"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const-string v1, "mlat"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v4, "mlon"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-static {v4}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v0}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v1, "lat"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    const-string v4, "lon"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v4, "lng"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v4}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v0}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v1, Lzc/p;->g:Lr9/i;

    invoke-virtual {v1, v0, v9}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    invoke-virtual {v1, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_4
    const-string v1, "continue"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v5, "http"

    invoke-static {v1, v5, v9}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_e

    invoke-static {v1}, Lzc/p;->c(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-static {v0}, Lzc/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzc/p;->a(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const-string v15, "center"

    const-string v16, "viewpoint"

    const-string v10, "destination"

    const-string v11, "daddr"

    const-string v12, "q"

    const-string v13, "query"

    const-string v14, "ll"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_10

    return-object v1

    :cond_11
    sget-object v0, Lzc/p;->f:Lr9/i;

    invoke-static {v4}, Lzc/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    invoke-virtual {v1, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_6
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    const-string v0, "to"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v1, "ll."

    invoke-static {v0, v1, v9}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_15

    invoke-static {v0, v1}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    const-string v0, "q"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-static {v0}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    const-string v0, "/ul/([0-9a-zA-Z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {v4, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9, v4}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x68

    if-eq v1, v4, :cond_17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x48

    if-ne v1, v4, :cond_18

    :cond_17
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x0

    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_19
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v10, 0x4056800000000000L    # 90.0

    const-wide v12, -0x3f99800000000000L    # -180.0

    const-wide v14, 0x4066800000000000L    # 180.0

    move/from16 v16, v7

    move v6, v9

    :goto_8
    if-ge v6, v1, :cond_20

    const/16 v17, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "0123456789bcdefghjkmnpqrstuvwxyz"

    const/4 v8, 0x6

    invoke-static {v3, v2, v9, v8}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_1a

    move-object/from16 v0, v17

    goto/16 :goto_d

    :cond_1a
    const/4 v3, 0x4

    :goto_9
    const/4 v8, -0x1

    if-ge v8, v3, :cond_1f

    shr-int v8, v2, v3

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_1b

    move v8, v7

    goto :goto_a

    :cond_1b
    move v8, v9

    :goto_a
    if-eqz v16, :cond_1d

    add-double v18, v12, v14

    move-wide/from16 v20, v10

    const/4 v7, 0x2

    int-to-double v9, v7

    div-double v18, v18, v9

    move-object v9, v0

    if-eqz v8, :cond_1c

    move-wide/from16 v12, v18

    :goto_b
    move-wide/from16 v10, v20

    move/from16 v18, v1

    goto :goto_c

    :cond_1c
    move-wide/from16 v14, v18

    goto :goto_b

    :cond_1d
    move-wide/from16 v20, v10

    const/4 v7, 0x2

    add-double v10, v4, v20

    move-object v9, v0

    move/from16 v18, v1

    int-to-double v0, v7

    div-double/2addr v10, v0

    if-eqz v8, :cond_1e

    move-wide v4, v10

    move-wide/from16 v10, v20

    :cond_1e
    :goto_c
    xor-int/lit8 v16, v16, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v0, v9

    move/from16 v1, v18

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_9

    :cond_1f
    move-object v9, v0

    move/from16 v18, v1

    move-wide/from16 v20, v10

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto :goto_8

    :cond_20
    const/16 v17, 0x0

    new-instance v0, Lua/nav/routing/GeoPoint;

    add-double/2addr v4, v10

    const/4 v7, 0x2

    int-to-double v1, v7

    div-double/2addr v4, v1

    add-double/2addr v12, v14

    div-double/2addr v12, v1

    invoke-direct {v0, v4, v5, v12, v13}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :goto_d
    if-eqz v0, :cond_21

    invoke-static {v0}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0

    :cond_21
    :goto_e
    return-object v17
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lr9/j;->l:[Lr9/j;

    const/16 v0, 0x42

    const-string v1, "^[a-z][a-z0-9+.-]*://([^/?#:]+)"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v0}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "www."

    invoke-static {p0, v0}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 3

    invoke-static {p0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-instance v2, Lua/nav/routing/GeoPoint;

    invoke-direct {v2, v0, v1, p0, p1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v2}, Lzc/p;->n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "name"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static h(Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 3

    const-string v0, "text"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "[A-Za-z\u0410-\u042f\u0430-\u044f\u0406\u0456\u0407\u0457\u0404\u0454\u0490\u0491]{2,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NSEW"

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v2, v1}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lzc/p;->b(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;
    .locals 2

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v1, Lzc/p;->b:Lr9/i;

    invoke-virtual {v1, p0, v0}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "://"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lr9/k;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-static {v0, p0, v1}, Lr9/k;->s0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x23

    invoke-static {p0, v0}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/maps/place/([^/@?#]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, "matcher(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v0}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v0, 0x2b

    const/16 v2, 0x20

    invoke-static {p0, v0, v2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzc/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "^[\\d\\s.,+\\-\u00b0NSEWnsew\'\"\u2032\u2033]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    const/16 v0, 0x3f

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lr9/k;->s0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x23

    invoke-static {p0, v0}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lu8/s;->l:Lu8/s;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0x26

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-static {p0, v2}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v2, v1}, Lr9/k;->s0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzc/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lzc/m;
    .locals 12

    const-string v0, "url"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lzc/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v2, "google."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lzc/p;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/maps/dir/"

    invoke-static {v0, v2, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static {p0, v2, p0}, Lr9/k;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x23

    invoke-static {p0, v0}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    invoke-static {p0, v2}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "data="

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "@"

    invoke-static {v5, v7, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    :cond_4
    :goto_1
    if-ltz v4, :cond_5

    invoke-interface {p0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, p0

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-ltz v4, :cond_8

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v6, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v7, "/"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p0, ""

    :goto_4
    sget-object v2, Lzc/p;->c:Lr9/i;

    invoke-static {v2, p0}, Lr9/i;->c(Lr9/i;Ljava/lang/String;)Lf9/h;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr9/g;

    const-string v7, "it"

    invoke-static {v4, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lr9/g;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lr9/e;

    invoke-virtual {v7, v0}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lr9/g;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lr9/e;

    invoke-virtual {v4, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v7, v4}, Lzc/p;->f(Ljava/lang/String;Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v5, v0}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :goto_6
    if-ge v4, v0, :cond_d

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Ljava/lang/String;

    const-string v8, "+"

    const-string v9, " "

    invoke-static {v7, v8, v9}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzc/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v7, Lzc/n;

    invoke-direct {v7, v8, v1}, Lzc/n;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/GeoPoint;

    goto :goto_7

    :cond_b
    move-object v8, v1

    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    goto :goto_8

    :cond_c
    move-object v7, v1

    :goto_8
    new-instance v9, Lzc/n;

    invoke-direct {v9, v8, v7}, Lzc/n;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    move-object v7, v9

    :goto_9
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_e

    new-instance v0, Lzc/m;

    invoke-direct {v0, p0}, Lzc/m;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :cond_e
    :goto_a
    return-object v1
.end method

.method public static n(Lua/nav/routing/GeoPoint;)Lua/nav/routing/GeoPoint;
    .locals 10

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v4, v4, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    if-gtz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lua/nav/routing/GeoPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v0, v1, v2, v3}, Ldd/w0;->a(DD)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v5, v8, v6

    if-gtz v5, :cond_1

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lua/nav/routing/GeoPoint;

    invoke-direct {p0, v2, v3, v0, v1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
