.class public final synthetic Lsc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsc/i;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget p0, p0, Lsc/i;->l:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "app"

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lua/nav/geo/PackInfo;->Companion:Lua/nav/geo/PackInfo$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/q;->a:Lha/q;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lua/nav/geo/Manifest;->Companion:Lua/nav/geo/Manifest$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/geo/PackInfo$$serializer;->INSTANCE:Lua/nav/geo/PackInfo$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lua/nav/cameras/CameraFile;->Companion:Lua/nav/cameras/CameraFile$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/cameras/SpeedCamera$$serializer;->INSTANCE:Lua/nav/cameras/SpeedCamera$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lw/p;

    invoke-direct {p0, v1, v1}, Lw/p;-><init>(II)V

    return-object p0

    :pswitch_3
    sget-object p0, Lua/nav/alerts/AlertsDto;->Companion:Lua/nav/alerts/AlertsDto$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/alerts/AlertRegion$$serializer;->INSTANCE:Lua/nav/alerts/AlertRegion$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lua/nav/alerts/AlertRegion;->Companion:Lua/nav/alerts/AlertRegion$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lua/nav/alerts/AlertRegion;->Companion:Lua/nav/alerts/AlertRegion$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    const-string p0, "Europe/Kyiv"

    const-string v0, "Europe/Kiev"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "it"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    const-string p0, "systemDefault(...)"

    invoke-static {v0, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_7
    sget-object p0, Lua/nav/SavedPlan;->Companion:Lua/nav/SavedPlan$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lua/nav/SavedPlan;->Companion:Lua/nav/SavedPlan$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lfd/o;

    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_1

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lfd/o;-><init>(Landroid/app/Application;Lua/nav/a;)V

    return-object p0

    :cond_1
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_a
    new-instance p0, Lua/nav/geo/c;

    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_2

    sget-object v1, Lsc/i0;->C:Lz9/d;

    invoke-direct {p0, v0, v1}, Lua/nav/geo/c;-><init>(Landroid/app/Application;Lu9/t;)V

    return-object p0

    :cond_2
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_b
    new-instance p0, Lid/m1;

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-object v0, Lsc/i0;->J:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e;

    new-instance v1, Lsc/i;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lsc/i;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lid/m1;-><init>(Lid/e;Lsc/i;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lua/nav/routing/i;

    sget-object v1, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v1, :cond_3

    sget-object v2, Lsc/i0;->C:Lz9/d;

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    sget-object v3, Lsc/i0;->J:Lt8/o;

    invoke-virtual {v3}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lid/e;

    invoke-direct {p0, v1, v2, v3, v0}, Lua/nav/routing/i;-><init>(Landroid/app/Application;Lu9/t;Lid/e;Z)V

    return-object p0

    :cond_3
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_d
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lid/l1;

    return-object p0

    :pswitch_e
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object p0, p0, Ldd/n;->a:Ldd/l0;

    if-eqz p0, :cond_4

    new-instance v3, Lua/nav/routing/GeoPoint;

    iget-wide v0, p0, Ldd/l0;->d:D

    iget-wide v4, p0, Ldd/l0;->e:D

    invoke-direct {v3, v0, v1, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_4
    return-object v3

    :pswitch_f
    new-instance p0, Lid/e;

    sget-object v1, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v1, :cond_5

    invoke-direct {p0, v1, v0}, Lid/e;-><init>(Landroid/app/Application;Z)V

    return-object p0

    :cond_5
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_10
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object p0

    iget-object p0, p0, Lad/x;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lad/s;

    iget-boolean v1, v0, Lad/s;->c:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lad/s;->k:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object p0, v3

    :goto_1
    check-cast p0, Lad/s;

    if-eqz p0, :cond_7

    new-instance v4, Lad/o0;

    iget v0, p0, Lad/s;->b:F

    float-to-double v5, v0

    iget-wide v7, p0, Lad/s;->d:D

    iget-object v9, p0, Lad/s;->g:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lad/o0;-><init>(DDLjava/lang/String;)V

    move-object v3, v4

    :cond_7
    return-object v3

    :pswitch_11
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object v0, p0, Ldd/n;->c:Ldd/l0;

    iget-object p0, p0, Ldd/n;->d:Ldd/l0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v4

    invoke-virtual {v4}, Lad/x;->a()Ldd/l0;

    move-result-object v4

    invoke-static {v0, p0, v1, v2, v4}, Lad/t2;->f(Ldd/l0;Ldd/l0;JLdd/l0;)Lad/p1;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lad/p1;->a:Ldd/l0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v1

    iget-wide v4, p0, Lad/p1;->c:J

    const/16 v2, 0x3e8

    int-to-long v6, v2

    div-long/2addr v4, v6

    iget-object v2, v0, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_9
    iget-object p0, p0, Lad/p1;->b:Lad/o1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "reroute_from_net age_s="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " acc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " via=overlay"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p0

    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-wide v2, v0, Ldd/l0;->d:D

    iget-wide v4, v0, Ldd/l0;->e:D

    invoke-direct {v1, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v0, 0x6

    invoke-static {p0, v1, v0}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_12
    new-instance p0, Lua/nav/routing/i;

    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_a

    sget-object v2, Lsc/i0;->C:Lz9/d;

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lua/nav/routing/i;-><init>(Landroid/app/Application;Lu9/t;Lid/e;Z)V

    return-object p0

    :cond_a
    invoke-static {v2}, Lj9/n;->m(Ljava/lang/String;)V

    throw v3

    :pswitch_13
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object v0, p0, Ldd/n;->f:Ldd/p;

    iget-wide v1, v0, Ldd/p;->m:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_b

    goto :goto_3

    :cond_b
    new-instance v5, Lkd/e0;

    iget v6, v0, Ldd/p;->b:I

    iget-object v7, v0, Ldd/p;->c:Ljava/lang/Float;

    iget-object v8, v0, Ldd/p;->d:Ljava/lang/Float;

    iget-boolean v9, p0, Ldd/n;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v10, v3, v1

    invoke-direct/range {v5 .. v11}, Lkd/e0;-><init>(ILjava/lang/Float;Ljava/lang/Float;ZJ)V

    move-object v3, v5

    :goto_3
    return-object v3

    :pswitch_14
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p0

    iget-object p0, p0, Lad/j0;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/a0;

    iget-object v0, p0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    iget-boolean v1, p0, Lad/a0;->a:Z

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    new-instance v4, Lkd/k;

    iget-wide v5, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->b:D

    iget v0, p0, Lad/a0;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v0, p0, Lad/a0;->l:F

    const v1, 0x40666666    # 3.6f

    div-float v10, v0, v1

    iget-wide v11, p0, Lad/a0;->w:D

    invoke-direct/range {v4 .. v12}, Lkd/k;-><init>(DDLjava/lang/Float;FD)V

    :goto_4
    move-object v3, v4

    goto :goto_5

    :cond_c
    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object p0

    iget-object p0, p0, Lad/x;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/s;

    iget-object v0, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_e

    new-instance v4, Lkd/k;

    iget-wide v5, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-boolean v0, p0, Lad/s;->c:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lad/s;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_d
    move-object v9, v3

    iget-wide v0, p0, Lad/s;->d:D

    double-to-float v10, v0

    iget-wide v11, p0, Lad/s;->f:D

    invoke-direct/range {v4 .. v12}, Lkd/k;-><init>(DDLjava/lang/Float;FD)V

    goto :goto_4

    :cond_e
    :goto_5
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
