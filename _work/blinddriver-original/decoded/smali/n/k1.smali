.class public final synthetic Ln/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln/k1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/c;)V
    .locals 0

    .line 2
    const/16 p1, 0x15

    iput p1, p0, Ln/k1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget p0, p0, Ln/k1;->l:I

    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->o()Lbd/i;

    move-result-object p0

    invoke-virtual {p0}, Lbd/i;->b()V

    return-object v2

    :pswitch_0
    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object p0

    invoke-virtual {p0}, Lua/nav/geo/c;->e()V

    return-object v2

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object p0

    iget-object v0, p0, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/d;

    iget-boolean v3, v3, Lyc/d;->c:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyc/d;

    const-string v10, ""

    const/4 v11, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, Lua/nav/routing/PackDownloadService;->Companion:Lid/v;

    iget-object v3, p0, Lua/nav/geo/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ctx"

    invoke-static {v3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lua/nav/routing/PackDownloadService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "kind"

    const-string v5, "geo_all"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "putExtra(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v0, v0, Lt8/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lua/nav/geo/c;->b:Lu9/t;

    new-instance v3, Lad/w;

    const/16 v4, 0x1a

    invoke-direct {v3, p0, v1, v4}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_1
    :goto_1
    return-object v2

    :pswitch_4
    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lu8/t;->l:Lu8/t;

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Led/p;->l:Led/p;

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/a;->c:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lua/nav/a;->i(Z)V

    return-object v2

    :pswitch_8
    sget-object p0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    return-object v2

    :pswitch_9
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object p0

    iget-object v0, p0, Lua/nav/update/a;->c:Lqd/u;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "banner_hidden_day"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lua/nav/update/a;->f:Lx9/l0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2

    :pswitch_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object p0

    iget-object v0, p0, Ltc/e;->g:Lx9/l0;

    iget-object p0, p0, Ltc/e;->e:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltc/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ltc/a;->a()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lx9/l0;->j(Ljava/lang/Object;)V

    return-object v2

    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CompositionLocal LocalSavedStateRegistryOwner not present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e
    new-instance p0, Lo0/h5;

    invoke-direct {p0}, Lo0/h5;-><init>()V

    return-object p0

    :pswitch_f
    sget-object p0, Lq0/i0;->a:Lp2/m0;

    return-object p0

    :pswitch_10
    const/4 p0, 0x0

    int-to-float p0, p0

    new-instance v0, Lb3/f;

    invoke-direct {v0, p0}, Lb3/f;-><init>(F)V

    return-object v0

    :pswitch_11
    new-instance p0, Lo0/q3;

    invoke-direct {p0}, Lo0/q3;-><init>()V

    return-object p0

    :pswitch_12
    new-instance p0, Lo0/y2;

    invoke-direct {p0}, Lo0/y2;-><init>()V

    return-object p0

    :pswitch_13
    sget-object p0, Lo0/y1;->a:Lo0/y1;

    return-object p0

    :pswitch_14
    sget-object p0, Lo0/o1;->a:Lr0/s2;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_15
    const/16 p0, 0x30

    int-to-float p0, p0

    new-instance v0, Lb3/f;

    invoke-direct {v0, p0}, Lb3/f;-><init>(F)V

    return-object v0

    :pswitch_16
    sget-object p0, Lo0/n1;->a:Lc2/k;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_17
    sget-object p0, Lo0/v0;->a:Lr0/s2;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_18
    invoke-static {}, Lo0/v0;->e()Lo0/u0;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget p0, Lo0/j;->a:F

    sget-object p0, Lo0/c1;->a:Lo0/c1;

    return-object p0

    :pswitch_1a
    sget-object p0, Lnd/k0;->a:Lr0/a0;

    return-object v1

    :pswitch_1b
    sget p0, Lnd/h0;->a:F

    return-object v2

    :pswitch_1c
    new-instance p0, Ld1/b0;

    new-instance v0, Lgd/e;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    invoke-direct {p0, v0}, Ld1/b0;-><init>(Li9/c;)V

    invoke-virtual {p0}, Ld1/b0;->d()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
