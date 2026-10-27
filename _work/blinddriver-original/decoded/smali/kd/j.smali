.class public final Lkd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lu9/t;

.field public final c:Lp/a1;

.field public final d:Lsc/i;

.field public final e:Lp2/y;

.field public final f:Lp2/y;

.field public final g:Lsc/i;

.field public final h:Landroid/content/SharedPreferences;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public final l:Lx9/l0;

.field public final m:Lx9/l0;

.field public final n:Lx9/l0;

.field public final o:Lx9/l0;

.field public final p:Lx9/l0;

.field public final q:Lt8/o;

.field public final r:Lt8/o;

.field public s:Z

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lu9/t;Lp/a1;Lsc/i;Lp2/y;Lp2/y;Lsc/i;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/j;->a:Landroid/app/Application;

    iput-object p2, p0, Lkd/j;->b:Lu9/t;

    iput-object p3, p0, Lkd/j;->c:Lp/a1;

    iput-object p4, p0, Lkd/j;->d:Lsc/i;

    iput-object p5, p0, Lkd/j;->e:Lp2/y;

    iput-object p6, p0, Lkd/j;->f:Lp2/y;

    iput-object p7, p0, Lkd/j;->g:Lsc/i;

    const-string p2, "share"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->h:Landroid/content/SharedPreferences;

    const-string p2, "enabled"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->i:Lx9/l0;

    iput-object p1, p0, Lkd/j;->j:Lx9/l0;

    sget-object p1, Lkd/b;->l:Lkd/b;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->k:Lx9/l0;

    iput-object p1, p0, Lkd/j;->l:Lx9/l0;

    const/4 p1, 0x0

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->m:Lx9/l0;

    iput-object p1, p0, Lkd/j;->n:Lx9/l0;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->o:Lx9/l0;

    iput-object p1, p0, Lkd/j;->p:Lx9/l0;

    new-instance p1, Lkd/a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lkd/a;-><init>(Lkd/j;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->q:Lt8/o;

    new-instance p1, Lkd/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lkd/a;-><init>(Lkd/j;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lkd/j;->r:Lt8/o;

    return-void
.end method

.method public static final a(Lkd/j;Lkd/m;Lkd/d0;La9/c;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    iget-object v4, v1, Lkd/j;->q:Lt8/o;

    const-string v5, "gps"

    iget-object v6, v1, Lkd/j;->e:Lp2/y;

    iget-object v7, v1, Lkd/j;->c:Lp/a1;

    iget-object v8, v1, Lkd/j;->k:Lx9/l0;

    instance-of v9, v0, Lkd/i;

    if-eqz v9, :cond_0

    move-object v9, v0

    check-cast v9, Lkd/i;

    iget v10, v9, Lkd/i;->s:I

    const/high16 v11, -0x80000000

    and-int v12, v10, v11

    if-eqz v12, :cond_0

    sub-int/2addr v10, v11

    iput v10, v9, Lkd/i;->s:I

    goto :goto_0

    :cond_0
    new-instance v9, Lkd/i;

    invoke-direct {v9, v1, v0}, Lkd/i;-><init>(Lkd/j;La9/c;)V

    :goto_0
    iget-object v0, v9, Lkd/i;->q:Ljava/lang/Object;

    sget-object v10, Lz8/a;->l:Lz8/a;

    iget v11, v9, Lkd/i;->s:I

    const-string v12, "getValue(...)"

    const-string v13, "setMockLocation(...)"

    const-string v14, "fused"

    sget-object v16, Lt8/z;->a:Lt8/z;

    packed-switch v11, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v9, Lkd/i;->l:Lkd/k;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v24, v8

    goto/16 :goto_16

    :pswitch_1
    iget-boolean v2, v9, Lkd/i;->p:Z

    iget-boolean v3, v9, Lkd/i;->o:Z

    iget-boolean v7, v9, Lkd/i;->n:Z

    move v11, v2

    move/from16 p1, v3

    iget-wide v2, v9, Lkd/i;->m:J

    iget-object v15, v9, Lkd/i;->l:Lkd/k;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v19, v13

    move v13, v7

    move-object v7, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v14

    move v14, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-wide v4, v2

    move-object v2, v8

    const/4 v3, 0x1

    move/from16 v8, p1

    goto/16 :goto_12

    :pswitch_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v24, v8

    goto/16 :goto_11

    :pswitch_3
    iget-boolean v2, v9, Lkd/i;->o:Z

    iget-boolean v3, v9, Lkd/i;->n:Z

    iget-wide v5, v9, Lkd/i;->m:J

    iget-object v7, v9, Lkd/i;->l:Lkd/k;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v19, v4

    move-object/from16 v24, v8

    move-object/from16 p1, v13

    move-object/from16 v25, v14

    goto/16 :goto_10

    :pswitch_4
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    move-object v3, v8

    goto/16 :goto_1b

    :pswitch_5
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_6
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v1, Lkd/j;->a:Landroid/app/Application;

    :try_start_0
    const-class v11, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager;

    const-string v15, "android:mock_location"

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v4

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v15, v0, v4}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    :goto_2
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v11, v0, Lt8/l;

    if-eqz v11, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    iput v4, v9, Lkd/i;->s:I

    invoke-virtual {v1, v9}, Lkd/j;->d(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3

    goto/16 :goto_1d

    :cond_3
    :goto_4
    sget-object v0, Lkd/b;->m:Lkd/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v10, v16

    goto/16 :goto_1d

    :cond_4
    move-object v11, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v1, Lkd/j;->d:Lsc/i;

    invoke-virtual {v0}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkd/k;

    invoke-virtual {v7}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v18, v7

    const/4 v7, 0x0

    iput-object v7, v2, Lkd/m;->c:Ljava/lang/Long;

    iget-object v7, v2, Lkd/m;->b:Ljava/lang/Long;

    if-nez v7, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lkd/m;->b:Ljava/lang/Long;

    goto :goto_6

    :cond_5
    move-object/from16 v18, v7

    const/4 v7, 0x0

    iput-object v7, v2, Lkd/m;->b:Ljava/lang/Long;

    iget-object v7, v2, Lkd/m;->c:Ljava/lang/Long;

    if-nez v7, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lkd/m;->c:Ljava/lang/Long;

    :cond_6
    :goto_6
    const-wide/16 v20, 0xbb8

    const-wide/16 v22, 0x1388

    move-object/from16 v24, v8

    if-eqz v0, :cond_7

    iget-wide v7, v0, Lkd/k;->e:D

    const-wide v25, 0x4072c00000000000L    # 300.0

    cmpg-double v7, v7, v25

    if-gtz v7, :cond_7

    iget-boolean v7, v2, Lkd/m;->a:Z

    if-eqz v7, :cond_9

    if-eqz v15, :cond_8

    iget-object v7, v2, Lkd/m;->b:Ljava/lang/Long;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v4, v7

    cmp-long v7, v7, v22

    if-gez v7, :cond_7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    if-nez v15, :cond_7

    iget-object v7, v2, Lkd/m;->c:Ljava/lang/Long;

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v4, v7

    cmp-long v7, v7, v20

    if-ltz v7, :cond_7

    goto :goto_7

    :goto_8
    iput-boolean v7, v2, Lkd/m;->a:Z

    iget-object v2, v1, Lkd/j;->g:Lsc/i;

    invoke-virtual {v2}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkd/e0;

    invoke-virtual/range {v18 .. v18}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v15, v13

    move-object/from16 v25, v14

    if-nez v7, :cond_a

    const/4 v13, 0x0

    iput-boolean v13, v3, Lkd/d0;->g:Z

    iput-boolean v13, v3, Lkd/d0;->a:Z

    const-wide/16 v13, -0x1

    iput-wide v13, v3, Lkd/d0;->f:J

    :goto_9
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_a
    iget-boolean v13, v3, Lkd/d0;->g:Z

    if-nez v13, :cond_b

    const/4 v13, 0x1

    iput-boolean v13, v3, Lkd/d0;->g:Z

    iput-wide v4, v3, Lkd/d0;->c:J

    const/4 v13, 0x0

    iput-boolean v13, v3, Lkd/d0;->a:Z

    const-wide/16 v13, -0x1

    iput-wide v13, v3, Lkd/d0;->f:J

    :cond_b
    iget-boolean v13, v3, Lkd/d0;->a:Z

    if-eqz v13, :cond_e

    iget-wide v13, v3, Lkd/d0;->d:J

    sub-long v13, v4, v13

    const-wide/16 v20, 0x2710

    cmp-long v20, v13, v20

    if-ltz v20, :cond_d

    if-eqz v8, :cond_c

    const-wide/16 v20, 0x4e20

    cmp-long v8, v13, v20

    if-ltz v8, :cond_d

    :cond_c
    const/4 v13, 0x0

    iput-boolean v13, v3, Lkd/d0;->a:Z

    iput-wide v4, v3, Lkd/d0;->c:J

    iput-wide v4, v3, Lkd/d0;->e:J

    const-wide/16 v13, -0x1

    iput-wide v13, v3, Lkd/d0;->f:J

    :cond_d
    iget-boolean v8, v3, Lkd/d0;->a:Z

    goto/16 :goto_c

    :cond_e
    if-eqz v2, :cond_14

    iget v8, v2, Lkd/e0;->a:I

    iget-wide v13, v2, Lkd/e0;->e:J

    cmp-long v13, v13, v22

    if-gtz v13, :cond_14

    const/4 v13, 0x6

    if-lt v8, v13, :cond_f

    iget-boolean v13, v2, Lkd/e0;->d:Z

    if-nez v13, :cond_f

    iget-object v13, v2, Lkd/e0;->b:Ljava/lang/Float;

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v14, 0x41900000    # 18.0f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_f

    goto :goto_a

    :cond_f
    const-wide/16 v13, -0x1

    goto :goto_b

    :cond_10
    :goto_a
    iget-object v13, v2, Lkd/e0;->c:Ljava/lang/Float;

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v14, 0x3fc00000    # 1.5f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_f

    :cond_11
    iget-wide v13, v3, Lkd/d0;->f:J

    const-wide/16 v22, 0x0

    cmp-long v13, v13, v22

    if-gez v13, :cond_12

    iput-wide v4, v3, Lkd/d0;->f:J

    :cond_12
    iget-wide v13, v3, Lkd/d0;->f:J

    sub-long v13, v4, v13

    cmp-long v13, v13, v20

    if-ltz v13, :cond_13

    iget-wide v13, v3, Lkd/d0;->e:J

    sub-long v13, v4, v13

    const-wide/16 v20, 0x7530

    cmp-long v13, v13, v20

    if-ltz v13, :cond_13

    const/4 v13, 0x1

    iput-boolean v13, v3, Lkd/d0;->a:Z

    iput-wide v4, v3, Lkd/d0;->d:J

    const-string v13, "sky used="

    invoke-static {v8, v13}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lkd/d0;->b:Ljava/lang/String;

    :cond_13
    iget-boolean v8, v3, Lkd/d0;->a:Z

    goto :goto_c

    :goto_b
    iput-wide v13, v3, Lkd/d0;->f:J

    goto/16 :goto_9

    :cond_14
    iget-wide v13, v3, Lkd/d0;->c:J

    sub-long v13, v4, v13

    const-wide/32 v20, 0x493e0

    cmp-long v8, v13, v20

    if-ltz v8, :cond_15

    const/4 v13, 0x1

    iput-boolean v13, v3, Lkd/d0;->a:Z

    iput-wide v4, v3, Lkd/d0;->d:J

    const-string v8, "timer"

    iput-object v8, v3, Lkd/d0;->b:Ljava/lang/String;

    :cond_15
    iget-boolean v8, v3, Lkd/d0;->a:Z

    :goto_c
    iget-boolean v13, v1, Lkd/j;->u:Z

    if-eq v8, v13, :cond_19

    iput-boolean v8, v1, Lkd/j;->u:Z

    if-eqz v8, :cond_16

    iget-object v3, v3, Lkd/d0;->b:Ljava/lang/String;

    const-string v13, "start reason="

    invoke-static {v13, v3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_16
    const-string v3, "end"

    :goto_d
    invoke-virtual/range {v18 .. v18}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v13

    if-eqz v2, :cond_17

    iget v14, v2, Lkd/e0;->a:I

    iget-boolean v2, v2, Lkd/e0;->d:Z

    move-object/from16 v20, v11

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 p1, v15

    const-string v15, " used="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " jam="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_e

    :cond_17
    move-object/from16 v20, v11

    move-object/from16 p1, v15

    :goto_e
    const-string v2, ""

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "share probe="

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gps_good="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_19
    move-object/from16 v20, v11

    move-object/from16 p1, v15

    :goto_f
    if-eqz v7, :cond_1a

    if-nez v0, :cond_1b

    :cond_1a
    move-object/from16 v3, v24

    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_1b
    if-eqz v8, :cond_1e

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lkd/j;->e(Z)Z

    iput-object v0, v9, Lkd/i;->l:Lkd/k;

    iput-wide v4, v9, Lkd/i;->m:J

    iput-boolean v7, v9, Lkd/i;->n:Z

    iput-boolean v8, v9, Lkd/i;->o:Z

    const/4 v2, 0x3

    iput v2, v9, Lkd/i;->s:I

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v9}, Lkd/j;->f(ZLa9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_1c

    goto/16 :goto_1d

    :cond_1c
    move-wide v5, v4

    move v3, v7

    move-object v7, v0

    move-object v0, v2

    move v2, v8

    :goto_10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {v19 .. v19}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lp7/a;

    move-object/from16 v11, v25

    invoke-static {v7, v11}, Lkd/j;->g(Lkd/k;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v0, v4}, Lp7/a;->e(Landroid/location/Location;)Lu7/i;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-static {v0, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-object v7, v9, Lkd/i;->l:Lkd/k;

    iput-wide v5, v9, Lkd/i;->m:J

    iput-boolean v3, v9, Lkd/i;->n:Z

    iput-boolean v2, v9, Lkd/i;->o:Z

    const/4 v2, 0x4

    iput v2, v9, Lkd/i;->s:I

    invoke-virtual {v1, v0, v9}, Lkd/j;->b(Lu7/i;La9/c;)Ljava/io/Serializable;

    move-result-object v0

    if-ne v0, v10, :cond_1d

    goto/16 :goto_1d

    :cond_1d
    :goto_11
    sget-object v0, Lkd/b;->q:Lkd/b;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, v24

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v15, p1

    move-object/from16 v2, v24

    move-object/from16 v11, v25

    const/4 v3, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v3}, Lkd/j;->e(Z)Z

    move-result v14

    iput-object v0, v9, Lkd/i;->l:Lkd/k;

    iput-wide v4, v9, Lkd/i;->m:J

    iput-boolean v7, v9, Lkd/i;->n:Z

    iput-boolean v8, v9, Lkd/i;->o:Z

    iput-boolean v14, v9, Lkd/i;->p:Z

    const/4 v13, 0x5

    iput v13, v9, Lkd/i;->s:I

    invoke-virtual {v1, v3, v9}, Lkd/j;->f(ZLa9/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_1f

    goto/16 :goto_1d

    :cond_1f
    move/from16 v27, v7

    move-object v7, v0

    move-object v0, v13

    move/from16 v13, v27

    :goto_12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v14, :cond_20

    if-nez v17, :cond_20

    sget-object v0, Lkd/b;->r:Lkd/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_20
    if-eqz v14, :cond_21

    :try_start_2
    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v24, v2

    move-object/from16 v3, v20

    :try_start_3
    invoke-static {v7, v3}, Lkd/j;->g(Lkd/k;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v0, v16

    goto :goto_14

    :catchall_2
    move-exception v0

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v24, v2

    :goto_13
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "share error gps "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_21
    move-object/from16 v24, v2

    :cond_22
    :goto_15
    if-eqz v17, :cond_25

    invoke-virtual/range {v19 .. v19}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lp7/a;

    invoke-static {v7, v11}, Lkd/j;->g(Lkd/k;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lp7/a;->e(Landroid/location/Location;)Lu7/i;

    move-result-object v0

    invoke-static {v0, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v9, Lkd/i;->l:Lkd/k;

    iput-wide v4, v9, Lkd/i;->m:J

    iput-boolean v13, v9, Lkd/i;->n:Z

    iput-boolean v8, v9, Lkd/i;->o:Z

    iput-boolean v14, v9, Lkd/i;->p:Z

    const/4 v13, 0x6

    iput v13, v9, Lkd/i;->s:I

    invoke-virtual {v1, v0, v9}, Lkd/j;->b(Lu7/i;La9/c;)Ljava/io/Serializable;

    move-result-object v0

    if-ne v0, v10, :cond_23

    goto/16 :goto_1d

    :cond_23
    move-object v2, v7

    :goto_16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v7, v2

    goto :goto_17

    :cond_24
    const/4 v15, 0x0

    goto :goto_18

    :cond_25
    :goto_17
    move-object v2, v7

    const/4 v15, 0x1

    :goto_18
    iget-object v0, v1, Lkd/j;->m:Lx9/l0;

    iget-wide v2, v2, Lkd/k;->e:D

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v15, :cond_26

    sget-object v0, Lkd/b;->p:Lkd/b;

    goto :goto_19

    :cond_26
    sget-object v0, Lkd/b;->r:Lkd/b;

    :goto_19
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, v24

    invoke-virtual {v3, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v1, Lkd/j;->o:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    :goto_1a
    iput-object v2, v9, Lkd/i;->l:Lkd/k;

    iput-wide v4, v9, Lkd/i;->m:J

    iput-boolean v7, v9, Lkd/i;->n:Z

    iput-boolean v8, v9, Lkd/i;->o:Z

    const/4 v0, 0x2

    iput v0, v9, Lkd/i;->s:I

    invoke-virtual {v1, v9}, Lkd/j;->d(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_27

    goto :goto_1d

    :cond_27
    :goto_1b
    invoke-virtual/range {v18 .. v18}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lkd/b;->o:Lkd/b;

    goto :goto_1c

    :cond_28
    sget-object v0, Lkd/b;->n:Lkd/b;

    :goto_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    :goto_1d
    return-object v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lkd/k;Ljava/lang/String;)Landroid/location/Location;
    .locals 3

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkd/k;->a:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v1, p0, Lkd/k;->b:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget-wide v1, p0, Lkd/k;->e:D

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/location/Location;->setAccuracy(F)V

    iget p1, p0, Lkd/k;->d:F

    invoke-virtual {v0, p1}, Landroid/location/Location;->setSpeed(F)V

    iget-object p0, p0, Lkd/k;->c:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/location/Location;->setBearing(F)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {v0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    if-eqz p0, :cond_1

    const/high16 p0, 0x41a00000    # 20.0f

    invoke-virtual {v0, p0}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Lu7/i;La9/c;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p2, Lkd/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkd/c;

    iget v1, v0, Lkd/c;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkd/c;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkd/c;

    invoke-direct {v0, p0, p2}, Lkd/c;-><init>(Lkd/j;La9/c;)V

    :goto_0
    iget-object p2, v0, Lkd/c;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lkd/c;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iput v3, v0, Lkd/c;->n:I

    new-instance p2, Lu9/g;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {p2}, Lu9/g;->r()V

    new-instance v0, Lkd/d;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lkd/d;-><init>(Lu9/g;I)V

    new-instance v2, Lb0/l1;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lu7/i;->b:Lad/a2;

    sget-object v3, Lu7/e;->a:Lf7/l;

    new-instance v4, Lu7/g;

    invoke-direct {v4, v3, v2}, Lu7/g;-><init>(Ljava/util/concurrent/Executor;Lb0/l1;)V

    invoke-virtual {v0, v4}, Lad/a2;->p(Lu7/h;)V

    invoke-virtual {p1}, Lu7/i;->f()V

    new-instance v2, Lg5/l;

    const/16 v4, 0x8

    invoke-direct {v2, v4, p0, p2}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lu7/g;

    invoke-direct {p0, v3, v2}, Lu7/g;-><init>(Ljava/util/concurrent/Executor;Lg5/l;)V

    invoke-virtual {v0, p0}, Lad/a2;->p(Lu7/h;)V

    invoke-virtual {p1}, Lu7/i;->f()V

    invoke-virtual {p2}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p2

    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p1, p2, Lt8/l;

    if-eqz p1, :cond_4

    move-object p2, p0

    :cond_4
    return-object p2
.end method

.method public final c()Landroid/location/LocationManager;
    .locals 1

    iget-object p0, p0, Lkd/j;->r:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public final d(La9/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lkd/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkd/e;

    iget v1, v0, Lkd/e;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkd/e;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkd/e;

    invoke-direct {v0, p0, p1}, Lkd/e;-><init>(Lkd/j;La9/c;)V

    :goto_0
    iget-object p1, v0, Lkd/e;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lkd/e;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkd/j;->e(Z)Z

    iput v3, v0, Lkd/e;->n:I

    invoke-virtual {p0, p1, v0}, Lkd/j;->f(ZLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lkd/j;->o:Lx9/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final e(Z)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v0, v1, Lkd/j;->t:Z

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    iget-object v5, v1, Lkd/j;->f:Lp2/y;

    const-string v6, "gps"

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v7

    const-string v8, "gps"

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v7 .. v17}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    invoke-virtual {v1}, Lkd/j;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    iget-object v7, v1, Lkd/j;->e:Lp2/y;

    if-nez v6, :cond_2

    goto :goto_6

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/16 v8, 0x50

    invoke-static {v8, v6}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "share error gps_provider "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v2, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    move v3, v4

    :goto_7
    iput-boolean v3, v1, Lkd/j;->t:Z

    :cond_6
    if-eqz v2, :cond_7

    if-nez v0, :cond_8

    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "share gps_test="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ok="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final f(ZLa9/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lkd/f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkd/f;

    iget v1, v0, Lkd/f;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkd/f;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkd/f;

    invoke-direct {v0, p0, p2}, Lkd/f;-><init>(Lkd/j;La9/c;)V

    :goto_0
    iget-object p2, v0, Lkd/f;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lkd/f;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lkd/f;->l:Z

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lkd/j;->s:Z

    if-ne p1, p2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    iget-object p2, p0, Lkd/j;->q:Lt8/o;

    invoke-virtual {p2}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v2, "getValue(...)"

    invoke-static {p2, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lp7/a;

    sget-object v2, Lp7/a;->j:Ljava/lang/Object;

    monitor-enter v2

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    sget-object v5, Lp7/a;->k:Ljava/lang/Object;

    if-nez v5, :cond_6

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lp7/a;->k:Ljava/lang/Object;

    new-instance v5, Lf6/v;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v6, Lmb/q;->m:Lmb/q;

    iput-object v6, v5, Lf6/v;->b:Ljava/lang/Object;

    sget-object v6, Lmb/q;->n:Lmb/q;

    iput-object v6, v5, Lf6/v;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v7, "Object"

    const-string v8, "Looper must not be null"

    invoke-static {v6, v8}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lf7/h;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ln7/f;

    const/4 v10, 0x1

    invoke-direct {v9, v6, v10}, Ln7/f;-><init>(Landroid/os/Looper;I)V

    new-instance v6, Lf7/g;

    invoke-static {v7}, Lg7/s;->b(Ljava/lang/String;)V

    invoke-direct {v6, v4}, Lf7/g;-><init>(Ljava/lang/Object;)V

    iput-object v6, v8, Lf7/h;->a:Lf7/g;

    iput-object v8, v5, Lf6/v;->d:Ljava/lang/Object;

    const/16 v4, 0x974

    iput v4, v5, Lf6/v;->a:I

    invoke-virtual {v5}, Lf6/v;->e()Lg5/l;

    move-result-object v4

    invoke-virtual {p2, v4}, Le7/f;->b(Lg5/l;)Lu7/i;

    move-result-object p2

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    sget-object v5, Lp7/a;->k:Ljava/lang/Object;

    if-eqz v5, :cond_6

    sput-object v4, Lp7/a;->k:Ljava/lang/Object;

    const-string v4, "Object"

    const-string v6, "Listener type must not be empty"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lf7/g;

    invoke-direct {v4, v5}, Lf7/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v4}, Le7/f;->c(Lf7/g;)Lu7/i;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lu7/i;

    invoke-direct {v4}, Lu7/i;-><init>()V

    new-instance v5, Lu7/f;

    invoke-direct {v5, v4}, Lu7/f;-><init>(Lu7/i;)V

    iget-object v6, p2, Lu7/i;->b:Lad/a2;

    invoke-virtual {v6, v5}, Lad/a2;->p(Lu7/h;)V

    invoke-virtual {p2}, Lu7/i;->f()V

    monitor-exit v2

    move-object p2, v4

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Lu7/i;

    invoke-direct {p2}, Lu7/i;-><init>()V

    invoke-virtual {p2, v4}, Lu7/i;->d(Ljava/lang/Object;)V

    :goto_1
    const-string v2, "setMockMode(...)"

    invoke-static {p2, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, v0, Lkd/f;->l:Z

    iput v3, v0, Lkd/f;->o:I

    invoke-virtual {p0, p2, v0}, Lkd/j;->b(Lu7/i;La9/c;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    :cond_8
    iput-boolean p1, p0, Lkd/j;->s:Z

    :cond_9
    iget-object p0, p0, Lkd/j;->e:Lp2/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "share mock="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ok="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
