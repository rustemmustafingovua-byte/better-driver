.class public final synthetic Lp/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp/a1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget p0, p0, Lp/a1;->l:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object v2, p0, Ldd/n;->h:Ldd/t;

    sget-object v3, Ldd/t;->l:Ldd/t;

    if-ne v2, v3, :cond_0

    iget-boolean p0, p0, Ldd/n;->i:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p0

    iget-object p0, p0, Lad/j0;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/a0;

    iget-boolean p0, p0, Lad/a0;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/Tuning;

    iget p0, p0, Lua/nav/Tuning;->S:I

    int-to-long v0, p0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p0

    iget-boolean p0, p0, Lad/j0;->K:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object p0

    iget-object p0, p0, Lad/x;->d:Lad/r;

    iget-object p0, p0, Lad/r;->t:Lad/i;

    invoke-virtual {p0}, Lad/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lad/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lad/i;->j:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lad/i;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lad/i;->e:D

    iget-wide v2, p0, Lad/i;->i:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lad/i;->e(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_1
    return-object v2

    :pswitch_4
    new-instance p0, Lid/r;

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lid/r;-><init>(Lid/e;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object p0

    invoke-virtual {p0}, Lad/x;->a()Ldd/l0;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->g:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    iget-object p0, p0, Luc/f;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luc/c;

    iget-object p0, p0, Luc/c;->a:Luc/a;

    sget-object v2, Luc/a;->n:Luc/a;

    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/Tuning;

    return-object p0

    :pswitch_8
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    iget-object p0, p0, Luc/f;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luc/c;

    const-string v0, "cameras_signals"

    invoke-virtual {p0, v0}, Luc/c;->b(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/Tuning;

    return-object p0

    :pswitch_a
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    sget-object p0, Lsc/i0;->h:Lbd/l;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "calmingDb"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2

    :pswitch_b
    new-instance p0, Lid/e;

    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0, v1}, Lid/e;-><init>(Landroid/app/Application;Z)V

    return-object p0

    :cond_4
    const-string p0, "app"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2

    :pswitch_c
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    iget-object p0, p0, Luc/f;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luc/c;

    invoke-virtual {p0}, Luc/c;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->i:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :pswitch_e
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p0

    invoke-virtual {p0}, Lfd/o;->h()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p0

    iget-object p0, p0, Luc/f;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luc/c;

    invoke-virtual {p0}, Luc/c;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object p0

    iget-object p0, p0, Lad/x;->k:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/s;

    iget-object p0, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-nez p0, :cond_8

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object v0, p0, Ldd/n;->c:Ldd/l0;

    if-nez v0, :cond_5

    iget-object v0, p0, Ldd/n;->d:Ldd/l0;

    :cond_5
    if-eqz v0, :cond_6

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v3, v0, Ldd/l0;->d:D

    iget-wide v0, v0, Ldd/l0;->e:D

    invoke-direct {v2, v3, v4, v0, v1}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_6
    if-nez v2, :cond_7

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object p0

    invoke-virtual {p0}, Ldd/k0;->d()Lua/nav/routing/GeoPoint;

    move-result-object p0

    goto :goto_2

    :cond_7
    move-object p0, v2

    :cond_8
    :goto_2
    return-object p0

    :pswitch_11
    new-instance p0, Lt8/j;

    const-string v0, "version"

    const-string v1, "1.0.1"

    invoke-direct {p0, v0, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lt8/j;

    const-string v2, "sdk"

    invoke-direct {v1, v2, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-wide v2, v0, Luc/f;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Lt8/j;

    const-string v3, "installed_at"

    invoke-direct {v2, v3, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lt8/j;

    const-string v3, "flavor"

    const-string v4, "github"

    invoke-direct {v0, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0, v1, v2, v0}, [Lt8/j;

    move-result-object p0

    invoke-static {p0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_13
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p0

    invoke-virtual {p0}, Lua/nav/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    sget-object p0, Lsc/i0;->p:Ljd/b;

    if-eqz p0, :cond_a

    const-string v0, "mapbox_token"

    invoke-virtual {p0, v0}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    :cond_9
    return-object p0

    :cond_a
    const-string p0, "vault"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2

    :pswitch_15
    sget-object p0, Lsc/g;->a:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_16
    const-string p0, "Unexpected call to default provider"

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_17
    sget p0, Lr/i0;->a:F

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_18
    sget p0, Lr/i0;->a:F

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_19
    sget-object p0, Lgd/h;->b:Lla/v;

    invoke-virtual {p0}, Lla/v;->a()Lla/u;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x19

    invoke-static {v0, v1}, Lma/e;->b(J)I

    move-result v0

    iput v0, p0, Lla/u;->w:I

    new-instance v0, Lla/v;

    invoke-direct {v0, p0}, Lla/v;-><init>(Lla/u;)V

    return-object v0

    :pswitch_1a
    new-instance p0, Lp/a2;

    invoke-direct {p0, v1}, Lp/a2;-><init>(I)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lp/s1;

    invoke-direct {p0}, Lp/s1;-><init>()V

    return-object p0

    :pswitch_1c
    sget-object p0, Lp/b1;->a:Lr0/a0;

    sget-object p0, Lp/j0;->a:Lp/j0;

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
