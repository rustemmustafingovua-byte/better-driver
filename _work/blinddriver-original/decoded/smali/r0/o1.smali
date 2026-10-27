.class public final synthetic Lr0/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lr0/o1;->l:I

    iput-object p2, p0, Lr0/o1;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu2/g;Lg5/e;)V
    .locals 0

    .line 2
    const/4 p2, 0x6

    iput p2, p0, Lr0/o1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/o1;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lr0/o1;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lla/v;

    check-cast p1, Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroidx/lifecycle/a1;

    const/4 v4, 0x5

    invoke-direct {v0, v4}, Landroidx/lifecycle/a1;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    const-string p1, "User-Agent"

    const-string v4, "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Mobile Safari/537.36"

    invoke-virtual {v0, p1, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Language"

    const-string v4, "uk,en;q=0.8"

    invoke-virtual {v0, p1, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lg7/c;

    invoke-direct {p1, v0}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    new-instance v0, Lpa/p;

    invoke-direct {v0, p0, p1}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v0}, Lpa/p;->i()Lla/c0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget p1, p0, Lla/c0;->o:I

    const/16 v0, 0x12c

    if-gt v0, p1, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    move v1, v3

    :cond_0
    new-instance v0, Lzc/j;

    const-string v3, "Location"

    iget-object v4, p0, Lla/c0;->q:Lla/p;

    invoke-virtual {v4, v3}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lla/c0;->r:Lla/e0;

    invoke-virtual {v1}, Lla/e0;->k()Ljava/lang/String;

    move-result-object v1

    const v4, 0x61a80

    invoke-static {v4, v1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p1, v3, v1}, Lzc/j;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lla/c0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_2
    instance-of p0, v0, Lt8/l;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_3
    check-cast v2, Lzc/j;

    return-object v2

    :pswitch_0
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/GeoPoint;

    check-cast p1, Lua/nav/geocoding/Place;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_4

    :cond_4
    iget-object p1, p1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v0, p1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->a:D

    sub-double/2addr v0, v2

    const-wide v4, 0x405bc00000000000L    # 111.0

    mul-double/2addr v0, v4

    iget-wide v6, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide p0, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v6, p0

    mul-double/2addr v6, v4

    invoke-static {v2, v3}, Lsc/c;->c(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v6

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lj9/y;

    check-cast p1, Le2/e2;

    const-string v0, "null cannot be cast to non-null type androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lx/v0;

    iget-object p1, p1, Lx/v0;->z:Lx/f0;

    iget-object v0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    filled-new-array {p1}, [Lx/f0;

    move-result-object p1

    invoke-static {p1}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lj9/y;->m:Ljava/lang/Object;

    sget-object p0, Le2/d2;->m:Le2/d2;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lc1/f;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lc1/f;->b(Ljava/lang/Object;)Z

    move-result v3

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lx/a0;

    check-cast p1, Lr0/g0;

    new-instance p1, Lb0/u0;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_4
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lx/t;

    check-cast p1, Lr0/g0;

    new-instance p1, Lb0/u0;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_5
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lw/p;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    neg-float p1, p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    invoke-virtual {p0}, Lw/p;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    cmpl-float v1, p1, v0

    if-lez v1, :cond_9

    invoke-virtual {p0}, Lw/p;->c()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move p1, v0

    goto/16 :goto_8

    :cond_9
    iget v1, p0, Lw/p;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_a

    goto :goto_6

    :cond_a
    const-string v1, "entered drag with non-zero pending scroll"

    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    :goto_6
    iput-boolean v3, p0, Lw/p;->d:Z

    iget v1, p0, Lw/p;->h:F

    add-float/2addr v1, p1

    iput v1, p0, Lw/p;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_f

    iget v1, p0, Lw/p;->h:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lw/p;->f:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw/k;

    iget-boolean v7, p0, Lw/p;->b:Z

    xor-int/2addr v7, v3

    invoke-virtual {v6, v5, v7}, Lw/k;->a(IZ)Lw/k;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v7, p0, Lw/p;->c:Lw/k;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v5, v3}, Lw/k;->a(IZ)Lw/k;

    move-result-object v5

    if-eqz v5, :cond_c

    iput-object v5, p0, Lw/p;->c:Lw/k;

    :cond_b
    move-object v2, v6

    :cond_c
    if-eqz v2, :cond_d

    iget-boolean v5, p0, Lw/p;->b:Z

    invoke-virtual {p0, v2, v5, v3}, Lw/p;->f(Lw/k;ZZ)V

    iget-object v3, p0, Lw/p;->v:Lr0/u0;

    sget-object v5, Lt8/z;->a:Lt8/z;

    invoke-interface {v3, v5}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget v3, p0, Lw/p;->h:F

    sub-float/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lw/p;->h(FLw/k;)V

    goto :goto_7

    :cond_d
    iget-object v2, p0, Lw/p;->k:Le2/g0;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Le2/g0;->k()V

    :cond_e
    iget v2, p0, Lw/p;->h:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lw/p;->g()Lw/k;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lw/p;->h(FLw/k;)V

    :cond_f
    :goto_7
    iget v1, p0, Lw/p;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_10

    goto :goto_8

    :cond_10
    iget v1, p0, Lw/p;->h:F

    sub-float/2addr p1, v1

    iput v0, p0, Lw/p;->h:F

    :goto_8
    neg-float p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string v0, "(this Map)"

    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lu8/f;

    check-cast p1, Ljava/util/Map$Entry;

    const-string v1, "it"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_11

    move-object v2, v0

    goto :goto_9

    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_12

    goto :goto_a

    :cond_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lu8/a;

    if-ne p1, p0, :cond_13

    const-string p0, "(this Collection)"

    goto :goto_b

    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0

    :pswitch_8
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lu2/g;

    check-cast p1, Lu2/g;

    if-ne p0, p1, :cond_14

    const-string p0, " > "

    goto :goto_c

    :cond_14
    const-string p0, "   "

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", newCursorPosition="

    instance-of v1, p1, Lu2/a;

    const/16 v2, 0x29

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CommitTextCommand(text.length="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lu2/a;

    iget-object v3, p1, Lu2/a;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lu2/a;->b:I

    :goto_d
    invoke-static {v1, p0, v2}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_e

    :cond_15
    instance-of v1, p1, Lu2/v;

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SetComposingTextCommand(text.length="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lu2/v;

    iget-object v3, p1, Lu2/v;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lu2/v;->b:I

    goto :goto_d

    :cond_16
    instance-of p0, p1, Lu2/u;

    if-eqz p0, :cond_17

    check-cast p1, Lu2/u;

    invoke-virtual {p1}, Lu2/u;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_17
    instance-of p0, p1, Lu2/e;

    if-eqz p0, :cond_18

    check-cast p1, Lu2/e;

    invoke-virtual {p1}, Lu2/e;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_18
    instance-of p0, p1, Lu2/f;

    if-eqz p0, :cond_19

    check-cast p1, Lu2/f;

    invoke-virtual {p1}, Lu2/f;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_19
    instance-of p0, p1, Lu2/w;

    if-eqz p0, :cond_1a

    check-cast p1, Lu2/w;

    invoke-virtual {p1}, Lu2/w;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_1a
    instance-of p0, p1, Lu2/i;

    if-eqz p0, :cond_1b

    const-string p0, "FinishComposingTextCommand()"

    goto :goto_e

    :cond_1b
    instance-of p0, p1, Lu2/d;

    if-eqz p0, :cond_1c

    const-string p0, "DeleteAllCommand()"

    goto :goto_e

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    invoke-virtual {p0}, Lj9/f;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    const-string p0, "{anonymous EditCommand}"

    :cond_1d
    const-string p1, "Unknown EditCommand: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lt2/e;

    check-cast p1, Lt2/q;

    iget-object v2, p1, Lt2/q;->b:Lt2/k;

    iget v3, p1, Lt2/q;->c:I

    iget v4, p1, Lt2/q;->d:I

    iget-object v5, p1, Lt2/q;->e:Ljava/lang/Object;

    new-instance v0, Lt2/q;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lt2/q;-><init>(Lt2/p;Lt2/k;IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt2/e;->a(Lt2/q;)Lt2/r;

    move-result-object p0

    iget-object p0, p0, Lt2/r;->l:Ljava/lang/Object;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lua/nav/a;->j(ZZ)V

    double-to-int p1, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0454 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u043c\u0441 \u043d\u0430 \u043a\u0440\u043e\u043a). \u0423\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438 \u0437\u043d\u043e\u0432\u0443: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0433\u043e\u043b\u043e\u0441."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lr9/f;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr9/f;->b(I)Lr9/d;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lk/n0;

    instance-of v0, p1, Ld1/i0;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Ld1/i0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ld1/i0;->f(I)V

    :cond_1e
    invoke-virtual {p0, p1}, Lk/n0;->a(Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lr0/u1;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Recomposer effect job completed"

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v3, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lr0/u1;->d:Lu9/v0;

    if-eqz v0, :cond_1f

    iget-object v4, p0, Lr0/u1;->u:Lx9/l0;

    sget-object v5, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    iput-object v2, p0, Lr0/u1;->r:Lu9/g;

    new-instance v1, Lp/o0;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0, p1}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lu9/v0;->P(Li9/c;)Lu9/g0;

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_10

    :cond_1f
    iput-object v1, p0, Lr0/u1;->e:Ljava/lang/Throwable;

    iget-object p0, p0, Lr0/u1;->u:Lx9/l0;

    sget-object p1, Lr0/q1;->l:Lr0/q1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_f
    monitor-exit v3

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_10
    monitor-exit v3

    throw p0

    :pswitch_e
    iget-object p0, p0, Lr0/o1;->m:Ljava/lang/Object;

    check-cast p0, Lr0/x;

    invoke-virtual {p0, p1}, Lr0/x;->z(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
