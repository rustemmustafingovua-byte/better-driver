.class public final synthetic Lod/x4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lod/x4;->l:I

    iput-object p2, p0, Lod/x4;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm1/m;J)V
    .locals 0

    .line 2
    const/16 p2, 0xf

    iput p2, p0, Lod/x4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/x4;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lod/x4;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Lod/x4;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lz2/b;

    iget-object v0, p0, Lz2/b;->n:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/e;

    iget-wide v1, v1, Ll1/e;->a:J

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/e;

    iget-wide v1, v1, Ll1/e;->a:J

    invoke-static {v1, v2}, Ll1/e;->c(J)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lz2/b;->l:Lm1/n;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/e;

    iget-wide v0, v0, Ll1/e;->a:J

    iget-object v4, p0, Lm1/n;->c:Landroid/graphics/Shader;

    :goto_0
    return-object v4

    :pswitch_0
    check-cast p0, Lz/h;

    iget-object v0, p0, Lz/h;->Z:Li9/c;

    iget-boolean p0, p0, Lz/h;->Y:Z

    xor-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p0, Ly4/q;

    iget-object v0, p0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Ly4/q;->l:Landroid/content/Context;

    sget-object v4, Lb5/f;->q:Ljava/lang/String;

    const/16 v4, 0x22

    if-lt v1, v4, :cond_2

    invoke-static {v3}, Lb5/b;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_2
    const-string v1, "jobscheduler"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-static {v3, v1}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-static {v1, v5}, Lb5/f;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v1

    iget-object v2, v1, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v1, v1, Lg5/q;->m:Lg5/h;

    invoke-virtual {v1}, Lk4/p;->a()Lr4/i;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lr4/i;->b()I

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v3}, Lk4/p;->f(Lr4/i;)V

    iget-object v1, p0, Ly4/q;->m:Lx4/a;

    iget-object p0, p0, Ly4/q;->p:Ljava/util/List;

    invoke-static {v1, v0, p0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v1, v3}, Lk4/p;->f(Lr4/i;)V

    throw p0

    :pswitch_2
    check-cast p0, Ly4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lh5/a;->a(Ly4/n;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    check-cast p0, Ll1/c;

    return-object p0

    :pswitch_4
    check-cast p0, Lm1/m;

    check-cast p0, Lm1/n;

    iget-object p0, p0, Lm1/n;->c:Landroid/graphics/Shader;

    return-object p0

    :pswitch_5
    check-cast p0, Lw/p;

    invoke-virtual {p0}, Lw/p;->g()Lw/k;

    move-result-object p0

    iget p0, p0, Lw/k;->n:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lj9/n;->k([Ljava/lang/Object;)Lj9/b;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroid/app/Application;

    const-string v1, ""

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    invoke-virtual {v0}, Lua/nav/Tuning;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Led/b;->a:Lr9/i;

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v5, "last_crash.txt"

    invoke-direct {v0, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_5

    invoke-static {v0}, Lf9/j;->y(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lr9/r;->V(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0x48190800

    cmp-long v5, v7, v5

    if-lez v5, :cond_6

    :cond_5
    move-object v3, v4

    goto :goto_5

    :cond_6
    invoke-static {v3, p0}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    move-object p0, v1

    :cond_7
    invoke-static {p0}, Led/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, p0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v3

    :goto_4
    instance-of p0, v3, Lt8/l;

    if-eqz p0, :cond_8

    move-object v3, v4

    :cond_8
    check-cast v3, Lt8/j;

    :goto_5
    if-eqz v3, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p0, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    cmp-long p0, v5, v7

    if-gez p0, :cond_9

    move-object v4, v3

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p0, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const p0, 0xea60

    int-to-long v7, p0

    div-long/2addr v5, v7

    iget-object p0, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v0, 0xf0

    invoke-static {v0, p0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " previous_crash_min_ago="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    move-object v1, p0

    :cond_a
    const-string p0, "app=BlindDriver version=1.0.1 code=26102401 build=release tuning="

    invoke-static {p0, v2, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/a;->a:Lcd/b;

    iget-object v0, v0, Lcd/b;->l:Ljava/lang/String;

    const-string v1, "lang"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcd/a;->b:Lcd/i;

    sget-object v1, Lcd/i;->m:Lcd/i;

    if-ne v0, v1, :cond_b

    const-string v0, "imperial"

    goto :goto_6

    :cond_b
    const-string v0, "metric"

    :goto_6
    const-string v1, "units"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lsc/g;->a:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lr0/b1;->h(I)V

    :try_start_5
    sget-object p0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object p0

    invoke-virtual {p0}, Lad/r2;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    check-cast p0, Lsa/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    iget-object v0, p0, Lsa/p;->H:Lsa/y;

    invoke-virtual {v0, v1, v2, v2}, Lsa/y;->m(IIZ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    sget-object v1, Lsa/b;->o:Lsa/b;

    invoke-virtual {p0, v1, v1, v0}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    :goto_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    check-cast p0, Lw9/i;

    invoke-interface {p0}, Lw9/t;->g()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw9/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/g1;

    :pswitch_b
    return-object p0

    :pswitch_c
    check-cast p0, Lp/c2;

    sget-object v0, Lp/u1;->a:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/k;

    iput-object v0, p0, Lp/c2;->K:Lp/k;

    if-eqz v0, :cond_c

    new-instance v5, Lp/j;

    iget-object v6, v0, Lp/k;->a:Landroid/content/Context;

    iget-object v7, v0, Lp/k;->b:Lb3/c;

    iget-wide v8, v0, Lp/k;->c:J

    iget-object v10, v0, Lp/k;->d:Lu/s0;

    invoke-direct/range {v5 .. v10}, Lp/j;-><init>(Landroid/content/Context;Lb3/c;JLu/s0;)V

    move-object v4, v5

    :cond_c
    iput-object v4, p0, Lp/c2;->L:Lp/j;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    check-cast p0, Lp/m1;

    iget-object v0, p0, Lp/m1;->B:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v1

    iget-object v2, p0, Lp/m1;->C:Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v2

    if-gt v1, v2, :cond_d

    goto :goto_9

    :cond_d
    iget-object v1, p0, Lp/m1;->H:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/j1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    invoke-virtual {p0}, Lp/m1;->M0()I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_9
    return-object v4

    :pswitch_e
    check-cast p0, Lp/h0;

    iget-object p0, p0, Lp/h0;->X:Li9/a;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_f
    check-cast p0, Lua/nav/update/a;

    iget-object v0, p0, Lua/nav/update/a;->j:Lx9/l0;

    iget-object v2, p0, Lua/nav/update/a;->d:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqd/q;

    iget-object v2, v2, Lqd/q;->c:Lua/nav/update/ReleaseInfo;

    if-nez v2, :cond_f

    new-instance p0, Lqd/h;

    const-string v1, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u0457 \u043f\u0440\u043e \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e. \u0421\u043f\u0435\u0440\u0448\u0443 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f."

    invoke-direct {p0, v1}, Lqd/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v2

    iget-object v2, v2, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    if-eqz v2, :cond_10

    sget-object p0, Lqd/l;->a:Lqd/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    iget-object v2, p0, Lua/nav/update/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    if-nez v2, :cond_11

    sget-object p0, Lqd/k;->a:Lqd/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lqd/g;

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lqd/j;

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lua/nav/update/a;->b:Lu9/t;

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v3, Lod/d7;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v4, v5}, Lod/d7;-><init>(Lua/nav/update/a;Ly8/c;I)V

    invoke-static {v0, v2, v4, v3, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_13
    :goto_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_10
    check-cast p0, Lqd/n;

    check-cast p0, Lqd/g;

    iget p0, p0, Lqd/g;->a:I

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lua/nav/routing/i;

    invoke-virtual {p0}, Lua/nav/routing/i;->c()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_12
    check-cast p0, Lad/r2;

    iget-boolean v0, p0, Lad/r2;->c:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcd/d;->g1:Lcd/c;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lad/r2;->e(Ljava/lang/String;Z)V

    :cond_14
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_13
    check-cast p0, Lod/l5;

    iget p0, p0, Lod/l5;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
