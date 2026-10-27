.class public final Lsc/r;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Z


# direct methods
.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    iput p3, p0, Lsc/r;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p0, p0, Lsc/r;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lsc/r;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lsc/r;-><init>(ILy8/c;I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsc/r;->n:Z

    return-object p0

    :pswitch_0
    new-instance p0, Lsc/r;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lsc/r;-><init>(ILy8/c;I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsc/r;->n:Z

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsc/r;->l:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lsc/r;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/r;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lsc/r;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/r;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lsc/r;->l:I

    const-wide/32 v1, 0x1d4c0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lsc/r;->n:Z

    sget-object v7, Lz8/a;->l:Lz8/a;

    iget v8, p0, Lsc/r;->m:I

    if-eqz v8, :cond_1

    if-ne v8, v6, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-eqz v0, :cond_a

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    sget-object p0, Lsc/i0;->F:Landroid/app/Application;

    const/4 p1, 0x0

    const-string v0, "app"

    if-eqz p0, :cond_9

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    invoke-virtual {p0}, Ldd/k0;->k()V

    :try_start_0
    sget-object p0, Lsc/i0;->w:Lhd/e;

    if-eqz p0, :cond_4

    iget-object v1, p0, Lhd/e;->h:Lu9/j1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lu9/c1;->b()Z

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v2, "enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lhd/e;->i:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lhd/e;->d()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_4
    const-string p0, "obd"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_5
    :goto_1
    :try_start_1
    sget-object p0, Lsc/i0;->x:Lvc/f;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lvc/f;->d()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_6
    const-string p0, "bydSpeed"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_3
    :try_start_2
    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object p0

    iget-object v1, p0, Ldd/i;->h:Lu9/j1;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lu9/c1;->b()Z

    move-result v1

    if-ne v1, v6, :cond_7

    goto :goto_4

    :cond_7
    iget-object v1, p0, Ldd/i;->b:Lu9/t;

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v4, Lad/w;

    const/4 v5, 0x7

    invoke-direct {v4, p0, p1, v5}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v2, p1, v4, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v1

    iput-object v1, p0, Ldd/i;->h:Lu9/j1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_4
    :try_start_3
    sget-object p0, Lua/nav/guidance/NavService;->Companion:Lad/s0;

    sget-object v1, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lad/s0;->a(Landroid/app/Application;)V

    goto :goto_6

    :cond_8
    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_6

    :cond_9
    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-boolean v0, p0, Lsc/r;->n:Z

    iput v6, p0, Lsc/r;->m:I

    invoke-static {v1, v2, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_b

    goto :goto_7

    :cond_b
    :goto_5
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->z()V

    :cond_c
    :goto_6
    sget-object v7, Lt8/z;->a:Lt8/z;

    :goto_7
    return-object v7

    :pswitch_0
    iget-boolean v0, p0, Lsc/r;->n:Z

    sget-object v7, Lz8/a;->l:Lz8/a;

    iget v8, p0, Lsc/r;->m:I

    if-eqz v8, :cond_f

    if-eq v8, v6, :cond_e

    if-ne v8, v3, :cond_d

    goto :goto_8

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    :goto_8
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_10
    if-eqz v0, :cond_13

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object p1

    iput-boolean v0, p0, Lsc/r;->n:Z

    iput v6, p0, Lsc/r;->m:I

    invoke-virtual {p1, v4, p0}, Lua/nav/support/a;->e(ZLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_11

    goto :goto_b

    :cond_11
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object p1

    iget-object p1, p1, Lua/nav/support/a;->j:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    cmp-long p1, v8, v10

    if-gez p1, :cond_12

    move-wide v8, v1

    goto :goto_a

    :cond_12
    const-wide/32 v8, 0xdbba0

    :goto_a
    iput-boolean v0, p0, Lsc/r;->n:Z

    iput v3, p0, Lsc/r;->m:I

    invoke-static {v8, v9, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_10

    goto :goto_b

    :cond_13
    sget-object v7, Lt8/z;->a:Lt8/z;

    :goto_b
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
