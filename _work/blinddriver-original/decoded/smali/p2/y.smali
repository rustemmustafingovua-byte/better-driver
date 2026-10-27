.class public final synthetic Lp2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp2/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lp2/y;->l:I

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const-string v7, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    const-string v8, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    const/16 v9, 0x2d

    const/4 v10, 0x2

    const/16 v11, 0x3a

    const-string v12, "null cannot be cast to non-null type kotlin.Int"

    const-string v13, "it"

    sget-object v15, Lt8/z;->a:Lt8/z;

    const/4 v14, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {v0}, Lsc/i0;->y(Z)V

    return-object v15

    :pswitch_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lad/j0;->w(D)V

    return-object v15

    :pswitch_1
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v1

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iput-boolean v0, v1, Ldd/m;->i:Z

    return-object v15

    :pswitch_2
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Ldd/q0;->a(JLjava/lang/String;)V

    return-object v15

    :pswitch_3
    move-object v0, v1

    check-cast v0, Lua/nav/Tuning;

    invoke-static {v0, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->t()Lad/f2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lad/f2;->a(Lua/nav/Tuning;)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "crash "

    const-string v2, "line"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    :try_start_0
    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Ldd/q0;->b(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    return-object v15

    :pswitch_5
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Ldd/q0;->a(JLjava/lang/String;)V

    return-object v15

    :pswitch_6
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v1, 0x30

    if-gt v1, v0, :cond_0

    if-ge v0, v11, :cond_0

    move v14, v2

    :cond_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, v11, :cond_1

    move v14, v2

    :cond_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, v11, :cond_2

    move v14, v2

    :cond_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-ne v0, v1, :cond_4

    :cond_3
    move v14, v2

    :cond_4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, v9, :cond_5

    move v14, v2

    :cond_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object v0, v1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, v9, :cond_6

    move v14, v2

    :cond_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_c
    move-object v0, v1

    check-cast v0, Lr0/x0;

    iget-object v0, v0, Lr0/x0;->a:Lc2/l0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lc2/l0;->invoke()Ljava/lang/Object;

    :cond_7
    return-object v15

    :pswitch_d
    move-object v0, v1

    check-cast v0, Ly1/c0;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iget v0, v0, Ly1/c0;->a:I

    if-ne v0, v10, :cond_9

    move v14, v2

    :cond_9
    :goto_1
    xor-int/lit8 v0, v14, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object v0, v1

    check-cast v0, Ly1/c0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_f
    move-object v0, v1

    check-cast v0, Ll1/b;

    sget v0, Lr/i0;->a:F

    return-object v15

    :pswitch_10
    move-object v0, v1

    check-cast v0, Lr0/j1;

    sget-object v1, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lr/d;->a:Lr/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr/c;->c:Lr/b;

    goto :goto_2

    :cond_a
    sget-object v0, Lr/f;->b:Lr/e;

    :goto_2
    return-object v0

    :pswitch_11
    move-object v0, v1

    check-cast v0, Lia/h;

    sget-object v1, Lua/nav/update/ReleaseInfo;->Companion:Lua/nav/update/ReleaseInfo$Companion;

    const-string v1, "$this$Json"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, v0, Lia/h;->b:Z

    iput-boolean v2, v0, Lia/h;->d:Z

    iput-boolean v2, v0, Lia/h;->a:Z

    return-object v15

    :pswitch_12
    move-object v0, v1

    check-cast v0, Lq9/h;

    invoke-static {v0, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-static {v1, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/r;

    invoke-direct {v1, v0}, La3/r;-><init>(I)V

    return-object v1

    :pswitch_14
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, La3/s;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lp2/d0;->e:Lg5/c;

    if-eqz v4, :cond_c

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :cond_c
    if-eqz v3, :cond_b

    iget-object v4, v5, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/r;

    :goto_3
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v3, v3, La3/r;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v14, v0

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_4

    :cond_d
    const/4 v14, 0x0

    :goto_4
    invoke-static {v14}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v3, v0}, La3/s;-><init>(IZ)V

    return-object v1

    :pswitch_15
    invoke-static {v1, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/e;

    invoke-direct {v1, v0}, La3/e;-><init>(I)V

    return-object v1

    :pswitch_16
    invoke-static {v1, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lp2/j;

    invoke-direct {v1, v0}, Lp2/j;-><init>(I)V

    return-object v1

    :pswitch_17
    invoke-static {v1, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lp2/d0;->b:Lg5/c;

    if-eqz v2, :cond_10

    :cond_f
    const/4 v14, 0x0

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_f

    iget-object v2, v3, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lp2/j;

    :goto_6
    invoke-static {v14}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v0, v14, Lp2/j;->a:I

    new-instance v2, Lp2/u;

    invoke-direct {v2, v0, v1}, Lp2/u;-><init>(IZ)V

    return-object v2

    :pswitch_18
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v16, Lp2/e0;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget v7, Lm1/p;->h:I

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_12

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-wide v8, Lm1/p;->g:J

    new-instance v1, Lm1/p;

    invoke-direct {v1, v8, v9}, Lm1/p;-><init>(J)V

    goto :goto_7

    :cond_11
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lm1/v;->c(I)J

    move-result-wide v8

    new-instance v1, Lm1/p;

    invoke-direct {v1, v8, v9}, Lm1/p;-><init>(J)V

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v8, v1, Lm1/p;->a:J

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lb3/o;->b:[Lb3/p;

    sget-object v2, Lp2/c0;->v:Lp2/b0;

    iget-object v2, v2, Lp2/b0;->m:Li9/c;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_13

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/o;

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v11, v1, Lb3/o;->a:J

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v10, Lt2/k;->m:Lt2/k;

    sget-object v10, Lp2/c0;->m:Lg5/c;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    :cond_14
    const/16 v21, 0x0

    goto :goto_9

    :cond_15
    if-eqz v1, :cond_14

    iget-object v10, v10, Lg5/c;->n:Ljava/lang/Object;

    check-cast v10, Li9/c;

    invoke-interface {v10, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/k;

    move-object/from16 v21, v1

    :goto_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lp2/c0;->t:Lg5/c;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_16
    const/16 v22, 0x0

    goto :goto_a

    :cond_17
    if-eqz v1, :cond_16

    iget-object v6, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Li9/c;

    invoke-interface {v6, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/i;

    move-object/from16 v22, v1

    :goto_a
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lp2/c0;->u:Lg5/c;

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_18
    const/16 v23, 0x0

    goto :goto_b

    :cond_19
    if-eqz v1, :cond_18

    iget-object v5, v5, Lg5/c;->n:Ljava/lang/Object;

    check-cast v5, Li9/c;

    invoke-interface {v5, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/j;

    move-object/from16 v23, v1

    :goto_b
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    check-cast v1, Ljava/lang/String;

    move-object/from16 v25, v1

    goto :goto_c

    :cond_1a
    const/16 v25, 0x0

    :goto_c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_1b

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/o;

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v1, v1, Lb3/o;->a:J

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lp2/c0;->n:Lg5/c;

    invoke-static {v3, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    const/16 v28, 0x0

    goto :goto_e

    :cond_1d
    if-eqz v3, :cond_1c

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/a;

    move-object/from16 v28, v3

    :goto_e
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lp2/c0;->k:Lg5/c;

    invoke-static {v3, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    const/16 v29, 0x0

    goto :goto_f

    :cond_1f
    if-eqz v3, :cond_1e

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/p;

    move-object/from16 v29, v3

    :goto_f
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lw2/b;->n:Lw2/b;

    sget-object v4, Lp2/c0;->y:Lg5/c;

    invoke-static {v3, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    const/16 v30, 0x0

    goto :goto_10

    :cond_21
    if-eqz v3, :cond_20

    iget-object v4, v4, Lg5/c;->n:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-interface {v4, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw2/b;

    move-object/from16 v30, v3

    :goto_10
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_23

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-wide v3, Lm1/p;->g:J

    new-instance v5, Lm1/p;

    invoke-direct {v5, v3, v4}, Lm1/p;-><init>(J)V

    goto :goto_11

    :cond_22
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lm1/v;->c(I)J

    move-result-wide v3

    new-instance v5, Lm1/p;

    invoke-direct {v5, v3, v4}, Lm1/p;-><init>(J)V

    goto :goto_11

    :cond_23
    const/4 v5, 0x0

    :goto_11
    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v3, v5, Lm1/p;->a:J

    const/16 v5, 0xc

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lp2/c0;->j:Lg5/c;

    invoke-static {v5, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    :cond_24
    const/16 v33, 0x0

    goto :goto_12

    :cond_25
    if-eqz v5, :cond_24

    iget-object v6, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Li9/c;

    invoke-interface {v6, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/l;

    move-object/from16 v33, v5

    :goto_12
    const/16 v5, 0xd

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lm1/g0;->d:Lm1/g0;

    sget-object v5, Lp2/c0;->o:Lg5/c;

    invoke-static {v0, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    :cond_26
    const/16 v34, 0x0

    goto :goto_13

    :cond_27
    if-eqz v0, :cond_26

    iget-object v5, v5, Lg5/c;->n:Ljava/lang/Object;

    check-cast v5, Li9/c;

    invoke-interface {v5, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lm1/g0;

    move-object/from16 v34, v14

    :goto_13
    const v35, 0xc020

    const/16 v24, 0x0

    move-wide/from16 v26, v1

    move-wide/from16 v31, v3

    move-wide/from16 v17, v8

    move-wide/from16 v19, v11

    invoke-direct/range {v16 .. v35}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    return-object v16

    :pswitch_19
    invoke-static {v1, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v16, Lp2/s;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lp2/c0;->q:Lp2/b0;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v1, :cond_28

    iget-object v7, v7, Lp2/b0;->m:Li9/c;

    invoke-interface {v7, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/k;

    goto :goto_14

    :cond_28
    const/4 v1, 0x0

    :goto_14
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v1, v1, La3/k;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lp2/c0;->r:Lp2/b0;

    invoke-static {v2, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v2, :cond_29

    iget-object v7, v7, Lp2/b0;->m:Li9/c;

    invoke-interface {v7, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/m;

    goto :goto_15

    :cond_29
    const/4 v2, 0x0

    :goto_15
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v2, v2, La3/m;->a:I

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lb3/o;->b:[Lb3/p;

    sget-object v9, Lp2/c0;->v:Lp2/b0;

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v7, :cond_2a

    iget-object v9, v9, Lp2/b0;->m:Li9/c;

    invoke-interface {v9, v7}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb3/o;

    goto :goto_16

    :cond_2a
    const/4 v7, 0x0

    :goto_16
    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v9, v7, Lb3/o;->a:J

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, La3/q;->c:La3/q;

    sget-object v7, Lp2/c0;->l:Lg5/c;

    invoke-static {v6, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    :cond_2b
    const/16 v21, 0x0

    goto :goto_17

    :cond_2c
    if-eqz v6, :cond_2b

    iget-object v7, v7, Lg5/c;->n:Ljava/lang/Object;

    check-cast v7, Li9/c;

    invoke-interface {v7, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La3/q;

    move-object/from16 v21, v6

    :goto_17
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lp2/d0;->a:Lg5/c;

    if-eqz v6, :cond_2e

    :cond_2d
    const/16 v22, 0x0

    goto :goto_18

    :cond_2e
    if-eqz v5, :cond_2d

    iget-object v6, v7, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Li9/c;

    invoke-interface {v6, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/u;

    move-object/from16 v22, v5

    :goto_18
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, La3/i;->d:La3/i;

    sget-object v6, Lp2/c0;->A:Lg5/c;

    invoke-static {v5, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_2f
    const/16 v23, 0x0

    goto :goto_19

    :cond_30
    if-eqz v5, :cond_2f

    iget-object v6, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Li9/c;

    invoke-interface {v6, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/i;

    move-object/from16 v23, v5

    :goto_19
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lp2/d0;->c:Lg5/c;

    if-eqz v5, :cond_32

    :cond_31
    const/4 v4, 0x0

    goto :goto_1a

    :cond_32
    if-eqz v4, :cond_31

    iget-object v5, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v5, Li9/c;

    invoke-interface {v5, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La3/e;

    :goto_1a
    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v4, v4, La3/e;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lp2/c0;->s:Lp2/b0;

    invoke-static {v3, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_33

    iget-object v5, v5, Lp2/b0;->m:Li9/c;

    invoke-interface {v5, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La3/d;

    goto :goto_1b

    :cond_33
    const/4 v3, 0x0

    :goto_1b
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v3, v3, La3/d;->a:I

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lp2/d0;->d:Lg5/c;

    if-eqz v5, :cond_35

    :cond_34
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v25, v3

    move/from16 v24, v4

    move-wide/from16 v19, v9

    const/16 v26, 0x0

    goto :goto_1c

    :cond_35
    if-eqz v0, :cond_34

    iget-object v5, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v5, Li9/c;

    invoke-interface {v5, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, La3/s;

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v25, v3

    move/from16 v24, v4

    move-wide/from16 v19, v9

    move-object/from16 v26, v14

    :goto_1c
    invoke-direct/range {v16 .. v26}, Lp2/s;-><init>(IIJLa3/q;Lp2/u;La3/i;IILa3/s;)V

    return-object v16

    :pswitch_1a
    new-instance v0, Lp2/n0;

    if-eqz v1, :cond_36

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    goto :goto_1d

    :cond_36
    const/4 v14, 0x0

    :goto_1d
    invoke-static {v14}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v0, v14}, Lp2/n0;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1b
    new-instance v0, Lp2/o0;

    if-eqz v1, :cond_37

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    goto :goto_1e

    :cond_37
    const/4 v14, 0x0

    :goto_1e
    invoke-static {v14}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v0, v14}, Lp2/o0;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1c
    invoke-static {v1, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, La3/g;

    invoke-direct {v1, v0}, La3/g;-><init>(I)V

    return-object v1

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
