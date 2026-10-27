.class public final Lr/h1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lr/h1;->l:I

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lr/h1;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p0, p0, Lr/h1;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lr/h1;

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, p2, v1}, Lr/h1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    new-instance p0, Lr/h1;

    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-direct {p0, v0, p2, v1}, Lr/h1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    new-instance p0, Lr/h1;

    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-direct {p0, v0, p2, v1}, Lr/h1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    new-instance p0, Lr/h1;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lr/h1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_3
    new-instance p0, Lr/h1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lr/h1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/h1;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lr/h1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lr/h1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lr/h1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lr/h1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lr/h1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/h1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/h1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lr/h1;->l:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const-string v3, "NavCore"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    sget-object v7, Lt8/z;->a:Lt8/z;

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v9, p0, Lr/h1;->m:I

    if-eqz v9, :cond_2

    if-eq v9, v8, :cond_1

    if-ne v9, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    sget-object p1, Lsc/i0;->g:Lg5/m;

    if-eqz p1, :cond_5

    iput-object v4, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v8, p0, Lr/h1;->m:I

    sget-object v6, Lu9/e0;->a:Lba/e;

    sget-object v6, Lba/d;->n:Lba/d;

    new-instance v9, Lua/nav/cameras/a;

    invoke-direct {v9, p1, v4}, Lua/nav/cameras/a;-><init>(Lg5/m;Ly8/c;)V

    invoke-static {v6, v9, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v7

    :goto_0
    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    :goto_1
    move-object p1, v7

    goto :goto_3

    :cond_5
    const-string p1, "cameraDb"

    invoke-static {p1}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "cameras: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p1

    iget-object p1, p1, Ldd/k0;->j:Ldd/m;

    iget-object p1, p1, Ldd/m;->h:Lx9/l0;

    new-instance v3, Lod/s2;

    invoke-direct {v3, p1, v2}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {v3}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object p1

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v2

    iget-object v2, v2, Lad/j0;->k:Lx9/l0;

    new-instance v3, Lod/s2;

    invoke-direct {v3, v2, v1}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {v3}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v1

    new-instance v2, Lsc/d0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v4}, La9/i;-><init>(ILy8/c;)V

    sget-object v3, Lsc/u;->r:Lsc/u;

    iput-object v4, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v5, p0, Lr/h1;->m:I

    new-array v5, v5, [Lx9/g;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object v1, v5, v8

    new-instance p1, Lx9/t;

    invoke-direct {p1, v2, v4}, Lx9/t;-><init>(Li9/f;Ly8/c;)V

    sget-object v1, Lx9/v;->l:Lx9/v;

    invoke-static {v1, p1, v3, p0, v5}, Ly9/c;->a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_7

    goto :goto_4

    :cond_7
    move-object p0, v7

    :goto_4
    if-ne p0, v0, :cond_8

    :goto_5
    move-object v7, v0

    :cond_8
    :goto_6
    return-object v7

    :pswitch_0
    iget-object v0, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/h1;->m:I

    if-eqz v1, :cond_b

    if-eq v1, v8, :cond_a

    if-ne v1, v5, :cond_9

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :try_start_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_9

    :cond_b
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_3
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    sget-object p1, Lsc/i0;->h:Lbd/l;

    if-eqz p1, :cond_e

    iput-object v4, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v8, p0, Lr/h1;->m:I

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lba/d;->n:Lba/d;

    new-instance v6, Lad/w;

    invoke-direct {v6, p1, v4, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v6, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    goto :goto_7

    :cond_c
    move-object p1, v7

    :goto_7
    if-ne p1, v0, :cond_d

    goto :goto_b

    :cond_d
    :goto_8
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->o()Lbd/i;

    move-result-object p1

    invoke-virtual {p1}, Lbd/i;->c()V

    move-object p1, v7

    goto :goto_a

    :cond_e
    const-string p1, "calmingDb"

    invoke-static {p1}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_9
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_a
    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-object v4, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v5, p0, Lr/h1;->m:I

    const-wide/16 v1, 0x4e20

    invoke-static {v1, v2, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_10

    :goto_b
    move-object v7, v0

    goto :goto_d

    :cond_10
    :goto_c
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->o()Lbd/i;

    move-result-object p0

    iget-object p1, p0, Lbd/i;->d:Landroid/content/SharedPreferences;

    const-string v0, "last_check_ms"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf731400

    cmp-long p1, v2, v0

    if-ltz p1, :cond_12

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p1

    invoke-virtual {p1}, Lfd/o;->h()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {p0}, Lbd/i;->b()V

    :cond_12
    :goto_d
    return-object v7

    :pswitch_1
    iget-object v0, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lr/h1;->m:I

    if-eqz v2, :cond_14

    if-ne v2, v8, :cond_13

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_e

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput-object v0, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v8, p0, Lr/h1;->m:I

    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_15

    move-object v7, v1

    goto :goto_f

    :cond_15
    :goto_e
    :try_start_4
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object p0

    invoke-virtual {p0}, Lid/e;->b()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lid/e;->d()Lcom/graphhopper/GraphHopper;

    :cond_16
    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->i:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lsc/i0;->J:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lid/e;

    invoke-virtual {p0}, Lid/e;->b()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lid/e;->d()Lcom/graphhopper/GraphHopper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_17
    :goto_f
    return-object v7

    :pswitch_2
    iget-object v0, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lr/h1;->m:I

    if-eqz v2, :cond_19

    if-ne v2, v8, :cond_18

    :try_start_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_11

    :catchall_3
    move-exception p0

    goto :goto_12

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_6
    sget-object p1, Lsc/i0;->a:Lsc/i0;

    sget-object p1, Lsc/i0;->y:Ldd/e;

    if-eqz p1, :cond_1c

    iput-object v4, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v8, p0, Lr/h1;->m:I

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v5, Lad/w;

    invoke-direct {v5, p1, v4, v1}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v5, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1a

    goto :goto_10

    :cond_1a
    move-object p0, v7

    :goto_10
    if-ne p0, v0, :cond_1b

    move-object v7, v0

    goto :goto_14

    :cond_1b
    :goto_11
    move-object p0, v7

    goto :goto_13

    :cond_1c
    const-string p0, "cellAreas"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_12
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cell areas: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_14
    return-object v7

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/h1;->m:I

    if-eqz v1, :cond_1f

    if-ne v1, v8, :cond_1e

    iget-object v1, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/h1;->n:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    move-object v1, p1

    :cond_20
    :goto_15
    invoke-interface {v1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-static {p1}, Lu9/v;->s(Ly8/h;)Z

    move-result p1

    if-eqz p1, :cond_21

    new-instance p1, Ln/p1;

    const/16 v2, 0x19

    invoke-direct {p1, v2}, Ln/p1;-><init>(I)V

    iput-object v1, p0, Lr/h1;->n:Ljava/lang/Object;

    iput v8, p0, Lr/h1;->m:I

    invoke-interface {p0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    invoke-static {v2}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20

    move-object v7, v0

    :cond_21
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
