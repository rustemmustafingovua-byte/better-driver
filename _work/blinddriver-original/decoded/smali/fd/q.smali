.class public abstract Lfd/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfd/q;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lfd/p;
    .locals 22

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-wide v1, v1, Lua/nav/routing/GeoPoint;->a:D

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->a:D

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-wide v5, v5, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_1

    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-wide v5, v5, Lua/nav/routing/GeoPoint;->b:D

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v7, v7, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    goto :goto_2

    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v7, v7, Lua/nav/routing/GeoPoint;->b:D

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-wide v9, v9, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_3

    :cond_3
    add-double v9, v1, v3

    const/4 v0, 0x2

    int-to-double v11, v0

    div-double/2addr v9, v11

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v9, v11

    const-wide v11, 0x4092c00000000000L    # 1200.0

    div-double/2addr v11, v9

    new-instance v13, Lfd/p;

    const-wide v9, 0x3f863b90a6bebce3L    # 0.010855798805862132

    sub-double v14, v1, v9

    sub-double v16, v5, v11

    add-double v18, v3, v9

    add-double v20, v7, v11

    invoke-direct/range {v13 .. v21}, Lfd/p;-><init>(DDDD)V

    return-object v13

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static b(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D
    .locals 8

    const-string v0, "a"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->a:D

    sub-double v4, v0, v2

    const-wide v6, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v4, v6

    iget-wide v6, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide p0, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v6, p0

    add-double/2addr v2, v0

    const/4 p0, 0x2

    int-to-double p0, p0

    div-double/2addr v2, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr p0, v0

    mul-double/2addr p0, v6

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method
