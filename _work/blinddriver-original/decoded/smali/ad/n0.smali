.class public final Lad/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lad/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/n0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/n0;->a:Lad/n0;

    return-void
.end method

.method public static b(Lua/nav/routing/GeoPoint;DD)Lua/nav/routing/GeoPoint;
    .locals 6

    const-string v0, "p"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lsc/c;->c(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p3

    const-wide v2, 0x40fafcc000000000L    # 110540.0

    div-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr p1, p3

    iget-wide p3, p0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {p3, p4}, Lsc/c;->c(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v2, v4

    div-double/2addr p1, v2

    new-instance v2, Lua/nav/routing/GeoPoint;

    add-double/2addr p3, v0

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->b:D

    add-double/2addr v0, p1

    invoke-direct {v2, p3, p4, v0, v1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    return-object v2
.end method

.method public static c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D
    .locals 8

    const-string v0, "a"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, p1, Lua/nav/routing/GeoPoint;->a:D

    add-double v4, v0, v2

    const/4 v6, 0x2

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lsc/c;->c(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide v6, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide p0, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v6, p0

    mul-double/2addr v6, v4

    sub-double/2addr v2, v0

    const-wide p0, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v2, p0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lsc/c;->b(D)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    return-wide p0
.end method

.method public static d(DD)D
    .locals 2

    sub-double/2addr p0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, p2

    const-wide v0, 0x4080e00000000000L    # 540.0

    add-double/2addr p0, v0

    rem-double/2addr p0, p2

    const-wide p2, 0x4066800000000000L    # 180.0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Lad/n0;Lua/nav/routing/Route;)Ljava/lang/Double;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "route"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v2, v1, :cond_2

    sget-object v6, Ldd/t0;->Companion:Ldd/s0;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/GeoPoint;

    iget-wide v9, v8, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v11, v7, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v13, v7, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v7, v7, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    add-double/2addr v3, v6

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    cmpl-double v6, v3, v6

    if-ltz v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    invoke-static {v1, v0}, Lad/n0;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    invoke-static {v0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    invoke-static {v1, v0}, Lad/n0;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lua/nav/routing/Route;Lad/o0;)Z
    .locals 4

    const-string v0, "route"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v0, p2, Lad/o0;->c:Ljava/lang/String;

    const-string v1, "GPS"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NETTRK"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GPS?"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GPS_LAST"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p2, Lad/o0;->b:D

    const-wide v2, 0x4010aaaaaaaaaaabL    # 4.166666666666667

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lad/n0;->e(Lad/n0;Lua/nav/routing/Route;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    iget-wide v0, p2, Lad/o0;->a:D

    invoke-static {p0, p1, v0, v1}, Lad/n0;->d(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
