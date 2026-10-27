.class public final Lsc/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lp/a1;

.field public static volatile B:Z

.field public static final C:Lz9/d;

.field public static volatile D:Z

.field public static E:Z

.field public static F:Landroid/app/Application;

.field public static final G:Lt8/o;

.field public static final H:Lt8/o;

.field public static final I:Lt8/o;

.field public static final J:Lt8/o;

.field public static final K:Lt8/o;

.field public static final L:Lt8/o;

.field public static final M:Lt8/o;

.field public static final N:Lt8/o;

.field public static O:Lad/x;

.field public static P:Lad/f2;

.field public static Q:Lua/nav/stats/a;

.field public static final R:Lx9/l0;

.field public static S:Ljava/lang/ref/WeakReference;

.field public static volatile T:Z

.field public static final a:Lsc/i0;

.field public static b:Ldd/q0;

.field public static c:Ldd/k0;

.field public static d:Lad/r2;

.field public static e:Lad/j0;

.field public static f:Lg5/i;

.field public static g:Lg5/m;

.field public static h:Lbd/l;

.field public static i:Lbd/i;

.field public static j:Lid/c1;

.field public static k:Lid/l;

.field public static l:Lwc/d;

.field public static m:Lad/z1;

.field public static n:Lad/o;

.field public static o:Lua/nav/a;

.field public static p:Ljd/b;

.field public static q:Lua/nav/update/a;

.field public static r:Luc/f;

.field public static s:Lgd/d;

.field public static t:Lua/nav/support/a;

.field public static u:Ltc/e;

.field public static v:Lkd/j;

.field public static w:Lhd/e;

.field public static x:Lvc/f;

.field public static y:Ldd/e;

.field public static z:Ldd/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsc/i0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsc/i0;->a:Lsc/i0;

    new-instance v0, Lp/a1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lp/a1;-><init>(I)V

    sput-object v0, Lsc/i0;->A:Lp/a1;

    invoke-static {}, Lu9/v;->c()Lu9/l1;

    move-result-object v0

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lz9/n;->a:Lv9/d;

    iget-object v2, v2, Lv9/d;->q:Lv9/d;

    invoke-static {v0, v2}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v0

    sput-object v0, Lsc/i0;->C:Lz9/d;

    const/4 v0, 0x1

    sput-boolean v0, Lsc/i0;->D:Z

    new-instance v0, Lp/a1;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lp/a1;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->G:Lt8/o;

    new-instance v0, Lp/a1;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Lp/a1;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->H:Lt8/o;

    new-instance v0, Lsc/i;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->I:Lt8/o;

    new-instance v0, Lsc/i;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->J:Lt8/o;

    new-instance v0, Lsc/i;

    invoke-direct {v0, v1}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->K:Lt8/o;

    new-instance v0, Lsc/i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->L:Lt8/o;

    new-instance v0, Lsc/i;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->M:Lt8/o;

    new-instance v0, Lsc/i;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/i0;->N:Lt8/o;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    sput-object v0, Lsc/i0;->R:Lx9/l0;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "open(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-static {p0}, Lr5/h1;->B(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string p0, "app"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b()Ltc/e;
    .locals 1

    sget-object v0, Lsc/i0;->u:Ltc/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "airAlerts"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static c()Lgd/d;
    .locals 1

    sget-object v0, Lsc/i0;->s:Lgd/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "api"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static d()Lbd/l;
    .locals 1

    sget-object v0, Lsc/i0;->h:Lbd/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "calmingDb"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static e()Ldd/i;
    .locals 1

    sget-object v0, Lsc/i0;->z:Ldd/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "cell"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static f()Lua/nav/support/a;
    .locals 1

    sget-object v0, Lsc/i0;->t:Lua/nav/support/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "devMessages"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static g()Ldd/k0;
    .locals 1

    sget-object v0, Lsc/i0;->c:Ldd/k0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "engine"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static h()Luc/f;
    .locals 1

    sget-object v0, Lsc/i0;->r:Luc/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "entitlement"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static i()Lad/x;
    .locals 1

    sget-object v0, Lsc/i0;->O:Lad/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "free"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static j()Lua/nav/geo/c;
    .locals 1

    sget-object v0, Lsc/i0;->M:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/geo/c;

    return-object v0
.end method

.method public static k()Lid/e;
    .locals 1

    sget-object v0, Lsc/i0;->G:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e;

    return-object v0
.end method

.method public static l()Lad/j0;
    .locals 1

    sget-object v0, Lsc/i0;->e:Lad/j0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "guide"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static m()Ldd/q0;
    .locals 1

    sget-object v0, Lsc/i0;->b:Ldd/q0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "logger"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static n()Lfd/o;
    .locals 1

    sget-object v0, Lsc/i0;->N:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfd/o;

    return-object v0
.end method

.method public static o()Lbd/i;
    .locals 1

    sget-object v0, Lsc/i0;->i:Lbd/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "roadObjects"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static p()Lid/c1;
    .locals 1

    sget-object v0, Lsc/i0;->j:Lid/c1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "routeStore"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static q()Lua/nav/routing/i;
    .locals 1

    sget-object v0, Lsc/i0;->I:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/i;

    return-object v0
.end method

.method public static r()Lua/nav/a;
    .locals 1

    sget-object v0, Lsc/i0;->o:Lua/nav/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settings"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static s()Lkd/j;
    .locals 1

    sget-object v0, Lsc/i0;->v:Lkd/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "share"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static t()Lad/f2;
    .locals 1

    sget-object v0, Lsc/i0;->P:Lad/f2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "stopLearner"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static u()Lua/nav/stats/a;
    .locals 1

    sget-object v0, Lsc/i0;->Q:Lua/nav/stats/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tripStats"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static v()Lua/nav/update/a;
    .locals 1

    sget-object v0, Lsc/i0;->q:Lua/nav/update/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "update"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static w()Lad/r2;
    .locals 1

    sget-object v0, Lsc/i0;->d:Lad/r2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "voice"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static y(Z)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v0, v0, Luc/f;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc/c;

    iget-object v0, v0, Luc/c;->a:Luc/a;

    sget-object v1, Luc/a;->n:Luc/a;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lf2/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lf2/l;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    iget-object v1, v0, Lkd/j;->h:Landroid/content/SharedPreferences;

    const-string v2, "enabled"

    invoke-static {v1, v2, p0}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iget-object v0, v0, Lkd/j;->i:Lx9/l0;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static z()V
    .locals 18

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-boolean v0, v0, Ldd/n;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    const-string v2, "rec_auto_stop reason=background"

    invoke-virtual {v0, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    iget-object v2, v0, Ldd/k0;->e:Ldd/o0;

    iput-boolean v1, v2, Ldd/o0;->a:Z

    iget-object v2, v0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {v2}, Ldd/q0;->d()V

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->g:Lx9/l0;

    :cond_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ldd/n;

    const-string v4, "it"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x17ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    invoke-virtual {v0}, Ldd/k0;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    sget-object v0, Lsc/i0;->w:Lhd/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhd/e;->e()V

    iget-object v3, v0, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v4, "enabled"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lhd/e;->i:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lhd/e;->f:Lx9/l0;

    new-instance v1, Lhd/m;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v2, v3}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_2
    const-string v0, "obd"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_3
    :goto_3
    :try_start_3
    sget-object v0, Lsc/i0;->x:Lvc/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lvc/f;->f()V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_4
    const-string v0, "bydSpeed"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_5
    :try_start_4
    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v0

    iget-object v1, v0, Ldd/i;->h:Lu9/j1;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v2, v0, Ldd/i;->h:Lu9/j1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_6
    :try_start_5
    sget-object v0, Lua/nav/guidance/NavService;->Companion:Lad/s0;

    sget-object v1, Lsc/i0;->F:Landroid/app/Application;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lua/nav/guidance/NavService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_7

    :cond_6
    const-string v0, "app"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_7
    return-void
.end method


# virtual methods
.method public final declared-synchronized x(Landroid/app/Application;)V
    .locals 25

    move-object/from16 v1, p1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lsc/i0;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v8, 0x1

    :try_start_1
    sput-boolean v8, Lsc/i0;->E:Z

    sput-object v1, Lsc/i0;->F:Landroid/app/Application;

    invoke-static {}, Lsc/r0;->a()V

    new-instance v0, Lp2/x;

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lp2/x;-><init>(IB)V

    sput-object v0, Lsc/c;->c:Li9/e;

    invoke-static {v1}, Ldd/w0;->e(Landroid/app/Application;)V

    new-instance v0, Ldd/q0;

    invoke-direct {v0, v1}, Ldd/q0;-><init>(Landroid/app/Application;)V

    sput-object v0, Lsc/i0;->b:Ldd/q0;

    new-instance v0, Lp2/y;

    const/16 v9, 0x18

    invoke-direct {v0, v9}, Lp2/y;-><init>(I)V

    invoke-static {v1, v0}, Led/b;->b(Landroid/app/Application;Lp2/y;)V

    new-instance v0, Lua/nav/a;

    invoke-direct {v0, v1}, Lua/nav/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lsc/i0;->o:Lua/nav/a;

    new-instance v0, Ldd/k0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v2

    new-instance v3, Lp/a1;

    invoke-direct {v3, v6}, Lp/a1;-><init>(I)V

    new-instance v4, Lod/x4;

    const/16 v10, 0xc

    invoke-direct {v4, v10, v1}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3, v4}, Ldd/k0;-><init>(Landroid/app/Application;Ldd/q0;Lp/a1;Lod/x4;)V

    sput-object v0, Lsc/i0;->c:Ldd/k0;

    invoke-static {v1}, Lsc/g;->a(Landroid/content/ContextWrapper;)V

    new-instance v0, Lhd/e;

    sget-object v2, Lsc/i0;->C:Lz9/d;

    new-instance v3, Lp2/x;

    const/16 v11, 0x1c

    invoke-direct {v3, v11, v7}, Lp2/x;-><init>(IB)V

    new-instance v4, Lsc/j;

    invoke-direct {v4, v7}, Lsc/j;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lhd/e;-><init>(Landroid/app/Application;Lu9/t;Lp2/x;Lsc/j;)V

    sput-object v0, Lsc/i0;->w:Lhd/e;

    new-instance v0, Lvc/f;

    new-instance v3, Lp2/x;

    const/16 v12, 0x1d

    invoke-direct {v3, v12, v7}, Lp2/x;-><init>(IB)V

    new-instance v4, Lsc/j;

    invoke-direct {v4, v8}, Lsc/j;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lvc/f;-><init>(Landroid/app/Application;Lu9/t;Lp2/x;Lsc/j;)V

    sput-object v0, Lsc/i0;->x:Lvc/f;

    new-instance v3, Ldd/e;

    new-instance v0, Lsc/o;

    invoke-direct {v0, v7}, Lsc/o;-><init>(I)V

    invoke-direct {v3, v0}, Ldd/e;-><init>(Lsc/o;)V

    sput-object v3, Lsc/i0;->y:Ldd/e;

    new-instance v0, Ldd/i;

    new-instance v4, Lsc/j;

    const/4 v13, 0x2

    invoke-direct {v4, v13}, Lsc/j;-><init>(I)V

    new-instance v5, Lsc/i;

    const/4 v14, 0x6

    invoke-direct {v5, v14}, Lsc/i;-><init>(I)V

    invoke-direct/range {v0 .. v5}, Ldd/i;-><init>(Landroid/app/Application;Lu9/t;Ldd/e;Lsc/j;Lsc/i;)V

    sput-object v0, Lsc/i0;->z:Ldd/i;

    new-instance v0, Lr/h1;

    invoke-direct {v0, v8}, Lr/h1;-><init>(I)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v0, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lad/r2;

    invoke-direct {v0, v1}, Lad/r2;-><init>(Landroid/app/Application;)V

    sput-object v0, Lsc/i0;->d:Lad/r2;

    new-instance v0, Ljd/b;

    invoke-direct {v0, v1}, Ljd/b;-><init>(Landroid/app/Application;)V

    sput-object v0, Lsc/i0;->p:Ljd/b;

    new-instance v0, Luc/f;

    invoke-direct {v0, v1}, Luc/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsc/i0;->r:Luc/f;

    new-instance v15, Lgd/d;

    sget-object v16, Lsc/i0;->p:Ljd/b;

    if-eqz v16, :cond_a

    new-instance v0, Lp/a1;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Lp/a1;-><init>(I)V

    new-instance v5, Lp/a1;

    const/16 v11, 0xa

    invoke-direct {v5, v11}, Lp/a1;-><init>(I)V

    new-instance v11, Lp/a1;

    const/16 v12, 0xb

    invoke-direct {v11, v12}, Lp/a1;-><init>(I)V

    const/16 v20, 0x0

    const/16 v21, 0x20

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lgd/d;-><init>(Ljd/b;Li9/a;Li9/a;Lp/a1;Lla/v;I)V

    sput-object v15, Lsc/i0;->s:Lgd/d;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "scope"

    invoke-static {v2, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Luc/f;->b:Lgd/d;

    iput-object v2, v0, Luc/f;->c:Lu9/t;

    invoke-virtual {v0, v8}, Luc/f;->h(Z)V

    invoke-static {v1, v2}, Luc/g;->a(Landroid/app/Application;Lu9/t;)V

    sget-object v0, Lua/nav/billing/TrialReminderWorker;->Companion:Luc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Luc/h;->a(Landroid/app/Application;)V

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v5, Lgd/c;

    const/4 v11, 0x4

    invoke-direct {v5, v1, v4, v11}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v0, v4, v5, v13}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v5, Ltc/e;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v12

    new-instance v15, Lp/a1;

    invoke-direct {v15, v10}, Lp/a1;-><init>(I)V

    invoke-direct {v5, v1, v12, v2, v15}, Ltc/e;-><init>(Landroid/app/Application;Lgd/d;Lu9/t;Lp/a1;)V

    sput-object v5, Lsc/i0;->u:Ltc/e;

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v5

    new-instance v12, Lp2/y;

    const/16 v15, 0x17

    invoke-direct {v12, v15}, Lp2/y;-><init>(I)V

    iput-object v12, v5, Ltc/e;->q:Lp2/y;

    new-instance v5, Lua/nav/support/a;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v12

    invoke-direct {v5, v1, v12}, Lua/nav/support/a;-><init>(Landroid/app/Application;Lgd/d;)V

    sput-object v5, Lsc/i0;->t:Lua/nav/support/a;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object v5

    invoke-virtual {v5}, Lua/nav/support/a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lua/nav/support/a;->Companion:Lmd/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lmd/a;->a(Landroid/app/Application;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    new-instance v5, Lsc/s;

    invoke-direct {v5, v7}, Lsc/s;-><init>(I)V

    invoke-static {v2, v4, v4, v5, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object v5, Lsc/i0;->H:Lt8/o;

    invoke-virtual {v5}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lid/r;

    new-instance v11, Lp/a1;

    const/16 v14, 0xd

    invoke-direct {v11, v14}, Lp/a1;-><init>(I)V

    iput-object v11, v12, Lid/r;->m:Li9/a;

    new-instance v11, Lg5/i;

    new-instance v12, Lg5/m;

    new-instance v14, Lg5/l;

    const/4 v6, 0x7

    invoke-direct {v14, v6}, Lg5/l;-><init>(I)V

    invoke-virtual {v5}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lid/r;

    new-instance v6, Lp/a1;

    const/16 v15, 0xe

    invoke-direct {v6, v15}, Lp/a1;-><init>(I)V

    invoke-direct {v12, v14, v5, v6}, Lg5/m;-><init>(Lg5/l;Lid/r;Lp/a1;)V

    sget-object v5, Lsc/i0;->L:Lt8/o;

    invoke-virtual {v5}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lid/m1;

    new-instance v6, Lp/a1;

    const/16 v14, 0xf

    invoke-direct {v6, v14}, Lp/a1;-><init>(I)V

    new-instance v14, Lp/a1;

    const/16 v15, 0x10

    invoke-direct {v14, v15}, Lp/a1;-><init>(I)V

    invoke-direct {v11, v12, v5, v6, v14}, Lg5/i;-><init>(Lg5/m;Lid/m1;Lp/a1;Lp/a1;)V

    sput-object v11, Lsc/i0;->f:Lg5/i;

    new-instance v5, Lid/c1;

    invoke-direct {v5, v1}, Lid/c1;-><init>(Landroid/app/Application;)V

    sput-object v5, Lsc/i0;->j:Lid/c1;

    new-instance v5, Lid/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sput-object v5, Lsc/i0;->k:Lid/l;

    new-instance v5, Lsc/s;

    invoke-direct {v5, v8}, Lsc/s;-><init>(I)V

    invoke-static {v2, v4, v4, v5, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v5, Lr/h1;

    invoke-direct {v5, v13}, Lr/h1;-><init>(I)V

    invoke-static {v2, v0, v4, v5, v13}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lg5/m;

    new-instance v5, Lsc/o;

    invoke-direct {v5, v8}, Lsc/o;-><init>(I)V

    invoke-direct {v0, v5}, Lg5/m;-><init>(Lsc/o;)V

    sput-object v0, Lsc/i0;->g:Lg5/m;

    new-instance v0, Lbd/i;

    new-instance v5, Lp/a1;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lp/a1;-><init>(I)V

    invoke-direct {v0, v1, v2, v5}, Lbd/i;-><init>(Landroid/app/Application;Lu9/t;Lp/a1;)V

    sput-object v0, Lsc/i0;->i:Lbd/i;

    new-instance v0, Lbd/l;

    new-instance v5, Lsc/t;

    invoke-direct {v5, v8, v4}, La9/i;-><init>(ILy8/c;)V

    invoke-direct {v0, v5}, Lbd/l;-><init>(Lsc/t;)V

    sput-object v0, Lsc/i0;->h:Lbd/l;

    new-instance v0, Lwc/d;

    sget-object v5, Lsc/i0;->g:Lg5/m;

    if-eqz v5, :cond_9

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v6

    new-instance v11, Lp/a1;

    const/16 v12, 0x13

    invoke-direct {v11, v12}, Lp/a1;-><init>(I)V

    new-instance v14, Lp/a1;

    const/16 v12, 0x14

    invoke-direct {v14, v12}, Lp/a1;-><init>(I)V

    invoke-direct {v0, v5, v6, v11, v14}, Lwc/d;-><init>(Lg5/m;Lad/r2;Lp/a1;Lp/a1;)V

    sput-object v0, Lsc/i0;->l:Lwc/d;

    new-instance v0, Lad/z1;

    new-instance v5, Lqd/u;

    const-string v6, "speed_profile"

    invoke-direct {v5, v1, v6}, Lqd/u;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lad/z1;-><init>(Lqd/u;)V

    sput-object v0, Lsc/i0;->m:Lad/z1;

    new-instance v0, Lad/o;

    new-instance v5, Lqd/u;

    const-string v6, "eta_profile"

    invoke-direct {v5, v1, v6}, Lqd/u;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lad/o;-><init>(Lqd/u;)V

    sput-object v0, Lsc/i0;->n:Lad/o;

    new-instance v11, Lad/j0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v12

    move v0, v13

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v13

    move v5, v15

    sget-object v15, Lsc/i0;->f:Lg5/i;

    if-eqz v15, :cond_8

    const/4 v6, 0x4

    sget-object v16, Lsc/i0;->l:Lwc/d;

    if-eqz v16, :cond_7

    const/4 v14, 0x6

    sget-object v17, Lsc/i0;->m:Lad/z1;

    if-eqz v17, :cond_6

    const/16 v20, 0x17

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v18

    const/16 v22, 0x13

    sget-object v19, Lsc/i0;->h:Lbd/l;

    if-eqz v19, :cond_5

    move/from16 v23, v20

    sget-object v20, Lsc/i0;->n:Lad/o;

    if-eqz v20, :cond_4

    move v10, v14

    move-object v14, v2

    move v2, v10

    move v10, v0

    move/from16 v0, v23

    invoke-direct/range {v11 .. v20}, Lad/j0;-><init>(Ldd/k0;Lad/r2;Lu9/t;Lid/d1;Lwc/d;Lad/z1;Lua/nav/a;Lbd/l;Lad/o;)V

    sput-object v11, Lsc/i0;->e:Lad/j0;

    new-instance v11, Lua/nav/update/a;

    invoke-direct {v11, v1, v14}, Lua/nav/update/a;-><init>(Landroid/app/Application;Lu9/t;)V

    sput-object v11, Lsc/i0;->q:Lua/nav/update/a;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v11

    invoke-virtual {v11}, Lua/nav/update/a;->k()V

    new-instance v11, Lad/x;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v12

    new-instance v13, Lp/a1;

    const/16 v15, 0x15

    invoke-direct {v13, v15}, Lp/a1;-><init>(I)V

    invoke-direct {v11, v12, v14, v13}, Lad/x;-><init>(Ldd/k0;Lu9/t;Lp/a1;)V

    sput-object v11, Lsc/i0;->O:Lad/x;

    new-instance v11, Lad/f2;

    new-instance v12, Lqd/u;

    const-string v13, "stop_profile"

    invoke-direct {v12, v1, v13}, Lqd/u;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lad/f2;-><init>(Lqd/u;)V

    sput-object v11, Lsc/i0;->P:Lad/f2;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v11

    invoke-static {}, Lsc/i0;->t()Lad/f2;

    move-result-object v12

    iput-object v12, v11, Lad/x;->g:Lad/f2;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v11

    new-instance v12, Lp2/y;

    const/16 v13, 0x19

    invoke-direct {v12, v13}, Lp2/y;-><init>(I)V

    iput-object v12, v11, Lad/j0;->O:Lp2/y;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v11

    invoke-static {}, Lsc/i0;->t()Lad/f2;

    move-result-object v12

    iput-object v12, v11, Lad/j0;->P:Lad/f2;

    new-instance v11, Lid/d0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v12

    move v15, v13

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v13

    move-object/from16 v16, v14

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v14

    move/from16 v17, v15

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object v15

    new-instance v2, Lp/a1;

    const/16 v5, 0x16

    invoke-direct {v2, v5}, Lp/a1;-><init>(I)V

    new-instance v5, Lr0/o1;

    invoke-direct {v5, v6, v1}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    move/from16 v18, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    move-object/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Lid/d0;-><init>(Ldd/k0;Lad/x;Lad/j0;Lid/e;Lu9/t;Lp/a1;Lr0/o1;)V

    move-object/from16 v14, v16

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v5

    iput-object v11, v5, Lad/j0;->p:Lid/d0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v5

    iput-object v11, v5, Lad/x;->e:Lid/d0;

    iget-object v5, v11, Lid/d0;->j:Lu9/j1;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v11, Lid/d0;->e:Lu9/t;

    new-instance v12, Lid/c0;

    invoke-direct {v12, v11, v4}, Lid/c0;-><init>(Lid/d0;Ly8/c;)V

    invoke-static {v5, v4, v4, v12, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v5

    iput-object v5, v11, Lid/d0;->j:Lu9/j1;

    :goto_1
    new-instance v5, Landroidx/lifecycle/m0;

    invoke-direct {v5, v11, v1, v4, v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v14, v4, v4, v5, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v5, Lsc/s;

    invoke-direct {v5, v10}, Lsc/s;-><init>(I)V

    invoke-static {v14, v4, v4, v5, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v5

    iget-object v9, v5, Lad/x;->l:Lu9/j1;

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v5, Lad/x;->a:Ldd/k0;

    new-instance v11, Lad/u;

    invoke-direct {v11, v5, v8}, Lad/u;-><init>(Lad/x;I)V

    iget-object v9, v9, Ldd/k0;->j:Ldd/m;

    iput-object v11, v9, Ldd/m;->k:Lad/u;

    iget-object v9, v5, Lad/x;->b:Lu9/t;

    new-instance v11, Lad/w;

    invoke-direct {v11, v5, v4, v7}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v9, v4, v4, v11, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v9

    iput-object v9, v5, Lad/x;->l:Lu9/j1;

    :goto_2
    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v5

    new-instance v9, Lp/a1;

    invoke-direct {v9, v0}, Lp/a1;-><init>(I)V

    iput-object v9, v5, Lad/j0;->l:Lp/a1;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v0

    new-instance v5, Lod/v;

    const/16 v9, 0xc

    invoke-direct {v5, v9}, Lod/v;-><init>(I)V

    iput-object v5, v0, Lad/j0;->o:Lod/v;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    new-instance v5, Lp/a1;

    invoke-direct {v5, v2}, Lp/a1;-><init>(I)V

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iput-object v5, v0, Ldd/m;->l:Lp/a1;

    new-instance v0, Lsc/s;

    invoke-direct {v0, v3}, Lsc/s;-><init>(I)V

    invoke-static {v14, v4, v4, v0, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v0

    new-instance v5, Lp/a1;

    const/16 v9, 0x1a

    invoke-direct {v5, v9}, Lp/a1;-><init>(I)V

    iput-object v5, v0, Lad/x;->o:Li9/a;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v0

    new-instance v5, Lp/a1;

    const/16 v11, 0x1c

    invoke-direct {v5, v11}, Lp/a1;-><init>(I)V

    iput-object v5, v0, Lad/x;->i:Li9/a;

    new-instance v0, Lkd/j;

    move v5, v3

    new-instance v3, Lp/a1;

    const/16 v12, 0x1d

    invoke-direct {v3, v12}, Lp/a1;-><init>(I)V

    move-object v13, v4

    new-instance v4, Lsc/i;

    invoke-direct {v4, v7}, Lsc/i;-><init>(I)V

    move v7, v5

    new-instance v5, Lp2/y;

    invoke-direct {v5, v9}, Lp2/y;-><init>(I)V

    move/from16 v16, v6

    new-instance v6, Lp2/y;

    const/16 v9, 0x1b

    invoke-direct {v6, v9}, Lp2/y;-><init>(I)V

    move v9, v7

    new-instance v7, Lsc/i;

    invoke-direct {v7, v8}, Lsc/i;-><init>(I)V

    move v15, v9

    move-object v10, v13

    move-object v2, v14

    move/from16 v14, v16

    move/from16 v9, v22

    move v13, v12

    move v12, v11

    const/16 v11, 0x10

    invoke-direct/range {v0 .. v7}, Lkd/j;-><init>(Landroid/app/Application;Lu9/t;Lp/a1;Lsc/i;Lp2/y;Lp2/y;Lsc/i;)V

    sput-object v0, Lsc/i0;->v:Lkd/j;

    new-instance v0, Lsc/s;

    invoke-direct {v0, v14}, Lsc/s;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    move-object v1, v2

    sget-object v2, Lsc/i0;->R:Lx9/l0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v3

    iget-object v3, v3, Lad/j0;->k:Lx9/l0;

    new-instance v4, Lod/s2;

    invoke-direct {v4, v3, v8}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v3

    iget-object v3, v3, Lkd/j;->j:Lx9/l0;

    new-instance v5, Lsc/x;

    invoke-direct {v5, v14, v10}, La9/i;-><init>(ILy8/c;)V

    invoke-static {v2, v4, v3, v5}, Lx9/c0;->g(Lx9/l0;Lod/s2;Lx9/l0;Lsc/x;)Lx9/m;

    move-result-object v3

    invoke-static {v3}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v3

    iget-object v4, v0, Lkd/j;->b:Lu9/t;

    new-instance v5, Landroidx/lifecycle/i0;

    invoke-direct {v5, v3, v0, v10, v11}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v4, v10, v10, v5, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    iget-object v3, v0, Lkd/j;->j:Lx9/l0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v0

    iget-object v0, v0, Lad/j0;->k:Lx9/l0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v4

    iget-object v4, v4, Lad/x;->k:Lx9/l0;

    new-instance v5, Lsc/y;

    invoke-direct {v5, v15, v10}, La9/i;-><init>(ILy8/c;)V

    new-instance v6, Lx9/u;

    invoke-direct {v6, v0, v4, v5}, Lx9/u;-><init>(Lx9/g;Lx9/g;Li9/f;)V

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    iget-object v5, v0, Lkd/j;->p:Lx9/l0;

    move-object v4, v6

    new-instance v6, Lp2/y;

    invoke-direct {v6, v12}, Lp2/y;-><init>(I)V

    new-instance v7, Lsc/i;

    invoke-direct {v7, v15}, Lsc/i;-><init>(I)V

    new-instance v8, Lp2/y;

    invoke-direct {v8, v13}, Lp2/y;-><init>(I)V

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Lkd/b0;->a(Landroid/app/Application;Lu9/t;Lx9/l0;Lx9/l0;Lx9/u;Lx9/l0;Lp2/y;Lsc/i;Lp2/y;)V

    move-object/from16 v24, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v24

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v3

    new-instance v4, Lod/y6;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v1}, Lod/y6;-><init>(ILjava/lang/Object;)V

    iput-object v4, v3, Ltc/e;->i:Lod/y6;

    new-instance v3, Lad/w;

    invoke-direct {v3, v1, v10, v9}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v10, v10, v3, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->b()Ltc/e;

    move-result-object v3

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v4

    iget-object v4, v4, Lad/j0;->k:Lx9/l0;

    new-instance v5, Lod/s2;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lod/s2;-><init>(Lx9/l0;I)V

    new-instance v4, Lkd/g;

    invoke-direct {v4}, Lkd/g;-><init>()V

    new-instance v6, Lx9/u;

    invoke-direct {v6, v0, v5, v4}, Lx9/u;-><init>(Lx9/g;Lx9/g;Li9/f;)V

    invoke-static {v6}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v0

    iget-object v4, v3, Ltc/e;->c:Lu9/t;

    new-instance v5, Landroidx/lifecycle/m0;

    const/16 v6, 0x19

    invoke-direct {v5, v0, v3, v10, v6}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v4, v10, v10, v5, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v0

    new-instance v3, Lsc/a0;

    invoke-direct {v3, v14, v10}, La9/i;-><init>(ILy8/c;)V

    iput-object v3, v0, Lad/x;->p:Lsc/a0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v0

    new-instance v3, Lsc/i;

    invoke-direct {v3, v14}, Lsc/i;-><init>(I)V

    iput-object v3, v0, Lad/j0;->m:Lsc/i;

    new-instance v0, Lua/nav/stats/a;

    invoke-direct {v0, v1, v2}, Lua/nav/stats/a;-><init>(Landroid/app/Application;Lu9/t;)V

    sput-object v0, Lsc/i0;->Q:Lua/nav/stats/a;

    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v5

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v4

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v6

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v7

    iget-object v0, v5, Lua/nav/stats/a;->a:Lu9/t;

    new-instance v3, Lld/r;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lld/r;-><init>(Ldd/k0;Lua/nav/stats/a;Lad/j0;Lad/x;Ly8/c;)V

    invoke-static {v0, v10, v10, v3, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lsc/s;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsc/s;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lsc/s;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lsc/s;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lsc/s;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lsc/s;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lr/h1;

    invoke-direct {v0, v15}, Lr/h1;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lr/h1;

    invoke-direct {v0, v14}, Lr/h1;-><init>(I)V

    invoke-static {v2, v10, v10, v0, v15}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    move-object v10, v4

    :try_start_2
    const-string v0, "etaProfile"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_5
    move-object v10, v4

    const-string v0, "calmingDb"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_6
    move-object v10, v4

    const-string v0, "speedProfile"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_7
    move-object v10, v4

    const-string v0, "cameras"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_8
    move-object v10, v4

    const-string v0, "router"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_9
    move-object v10, v4

    const-string v0, "cameraDb"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :cond_a
    move-object v10, v4

    const-string v0, "vault"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v10

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
