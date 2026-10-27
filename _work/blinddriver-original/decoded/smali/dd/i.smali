.class public final Ldd/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/f;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lu9/t;

.field public final c:Ldd/e;

.field public final d:Lsc/j;

.field public final e:Lsc/i;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public h:Lu9/j1;

.field public i:Ldd/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/i;->Companion:Ldd/f;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;Ldd/e;Lsc/j;Lsc/i;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/i;->a:Landroid/app/Application;

    iput-object p2, p0, Ldd/i;->b:Lu9/t;

    iput-object p3, p0, Ldd/i;->c:Ldd/e;

    iput-object p4, p0, Ldd/i;->d:Lsc/j;

    iput-object p5, p0, Ldd/i;->e:Lsc/i;

    const/4 p1, 0x0

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Ldd/i;->f:Lx9/l0;

    iput-object p1, p0, Ldd/i;->g:Lx9/l0;

    return-void
.end method

.method public static final a(Ldd/i;La9/c;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Ldd/i;->f:Lx9/l0;

    iget-object v3, v1, Ldd/i;->d:Lsc/j;

    instance-of v4, v0, Ldd/h;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Ldd/h;

    iget v5, v4, Ldd/h;->u:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Ldd/h;->u:I

    goto :goto_0

    :cond_0
    new-instance v4, Ldd/h;

    invoke-direct {v4, v1, v0}, Ldd/h;-><init>(Ldd/i;La9/c;)V

    :goto_0
    iget-object v0, v4, Ldd/h;->s:Ljava/lang/Object;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v6, v4, Ldd/h;->u:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-wide v8, v4, Ldd/h;->r:J

    iget-wide v10, v4, Ldd/h;->q:J

    iget-wide v12, v4, Ldd/h;->p:J

    iget-wide v14, v4, Ldd/h;->o:J

    move/from16 p1, v7

    move-wide/from16 v16, v8

    iget-wide v7, v4, Ldd/h;->n:J

    iget-object v6, v4, Ldd/h;->m:Ljava/lang/String;

    iget-object v9, v4, Ldd/h;->l:Ljava/lang/String;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object v1, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v1

    move-object v1, v5

    move/from16 v5, p1

    move-wide/from16 v44, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide v2, v7

    move-wide v7, v14

    move-wide v14, v12

    move-wide/from16 v12, v44

    goto/16 :goto_1c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 p1, v7

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    const-string v0, ""

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x2710

    move-wide v10, v6

    move-wide v12, v10

    move-wide/from16 v16, v12

    move-wide v14, v8

    move-object v9, v0

    move-object v6, v4

    move-wide/from16 v7, v16

    move-object v4, v9

    :goto_1
    invoke-interface {v6}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->s(Ly8/h;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    :try_start_0
    invoke-virtual {v1}, Ldd/i;->g()Lt8/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-wide/from16 v24, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_2

    :goto_3
    instance-of v10, v0, Lt8/l;

    if-eqz v10, :cond_3

    const/4 v0, 0x0

    :cond_3
    check-cast v0, Lt8/j;

    const-string v10, "toLowerCase(...)"

    const-wide/32 v26, 0xea60

    if-nez v0, :cond_5

    const/4 v11, 0x0

    iput-object v11, v1, Ldd/i;->i:Ldd/g;

    const-string v0, "none"

    invoke-static {v4, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v4}, Ldd/i;->f(Ljava/lang/String;)Z

    move-result v4

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v11}, Ldd/i;->f(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v28, v12

    const-string v12, "cell none perm_phone="

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " perm_loc="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    move-wide/from16 v32, v7

    move-object/from16 v20, v9

    move-wide/from16 v30, v14

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    :goto_4
    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_16

    :cond_4
    move-wide/from16 v28, v12

    move-object/from16 v19, v5

    move-wide/from16 v32, v7

    move-object/from16 v20, v9

    move-wide/from16 v30, v14

    goto/16 :goto_12

    :cond_5
    move-wide/from16 v28, v12

    iget-object v11, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v11, Ldd/n0;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    iget-object v0, v1, Ldd/i;->c:Ldd/e;

    const-string v12, "c"

    invoke-static {v11, v12}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v11, Ldd/n0;->e:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_17

    iget v12, v11, Ldd/n0;->b:I

    move-wide/from16 v30, v14

    iget-wide v13, v11, Ldd/n0;->d:J

    iget-object v15, v0, Ldd/e;->c:Lg5/m;

    iget-object v15, v15, Lg5/m;->m:Ljava/lang/Object;

    sget-object v18, Ldd/e;->Companion:Ldd/d;

    const/16 v19, 0x8

    shr-long v13, v13, v19

    long-to-int v13, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v32, v7

    int-to-long v7, v12

    const/16 v14, 0x20

    shl-long/2addr v7, v14

    int-to-long v12, v13

    or-long/2addr v7, v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldd/c;

    if-eqz v7, :cond_6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iget-wide v14, v7, Ldd/c;->c:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    sget-object v0, Ldd/j;->l:Ldd/j;

    const/16 v0, 0x1b

    invoke-static {v7, v12, v13, v0}, Ldd/c;->a(Ldd/c;DI)Ldd/c;

    move-result-object v0

    :goto_5
    move-object/from16 v19, v0

    goto/16 :goto_f

    :cond_6
    iget v7, v11, Ldd/n0;->c:I

    if-lez v7, :cond_7

    iget v8, v11, Ldd/n0;->b:I

    iget v12, v11, Ldd/n0;->e:I

    invoke-virtual {v0, v8, v7, v12}, Ldd/e;->a(III)Ldd/c;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object/from16 v19, v7

    goto/16 :goto_f

    :cond_7
    iget v7, v11, Ldd/n0;->b:I

    iget-wide v12, v11, Ldd/n0;->d:J

    iget-object v8, v0, Ldd/e;->c:Lg5/m;

    iget-object v8, v8, Lg5/m;->n:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-nez v8, :cond_8

    goto/16 :goto_e

    :cond_8
    array-length v15, v8

    if-nez v15, :cond_9

    goto/16 :goto_e

    :cond_9
    shr-long v12, v12, v19

    long-to-int v13, v12

    array-length v12, v8

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v12, :cond_b

    add-int v18, v15, v12

    ushr-int/lit8 v18, v18, 0x1

    move/from16 v19, v14

    aget v14, v8, v18

    if-ge v14, v13, :cond_a

    add-int/lit8 v15, v18, 0x1

    :goto_7
    move/from16 v14, v19

    goto :goto_6

    :cond_a
    move/from16 v12, v18

    goto :goto_7

    :cond_b
    move/from16 v19, v14

    add-int/lit8 v12, v15, -0x1

    if-ltz v12, :cond_c

    array-length v14, v8

    if-ge v12, v14, :cond_c

    aget v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    :goto_8
    if-ltz v15, :cond_d

    array-length v14, v8

    if-ge v15, v14, :cond_d

    aget v8, v8, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    filled-new-array {v12, v8}, [Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x0

    goto :goto_b

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_b

    :cond_f
    move-object v14, v12

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v18

    sub-int v18, v18, v13

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v14, v8, :cond_10

    move v14, v8

    move-object v12, v15

    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_16

    :goto_b
    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v12, v8, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0x7d0

    if-le v12, v13, :cond_11

    goto :goto_e

    :cond_11
    iget-object v12, v0, Ldd/e;->c:Lg5/m;

    iget-object v12, v12, Lg5/m;->o:Ljava/lang/Object;

    sget-object v13, Ldd/e;->Companion:Ldd/d;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v13, v7

    shl-long v13, v13, v19

    move v15, v7

    int-to-long v7, v8

    or-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldd/c;

    if-nez v7, :cond_12

    goto :goto_e

    :cond_12
    iget-object v0, v0, Ldd/e;->d:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :goto_c
    move-wide/from16 v39, v12

    goto :goto_d

    :cond_13
    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    goto :goto_c

    :goto_d
    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    cmpl-double v0, v39, v12

    if-lez v0, :cond_14

    goto :goto_e

    :cond_14
    new-instance v34, Ldd/c;

    iget-wide v12, v7, Ldd/c;->a:D

    iget-wide v7, v7, Ldd/c;->b:D

    const/16 v42, 0x0

    sget-object v43, Ldd/j;->n:Ldd/j;

    const/16 v41, 0x0

    move-wide/from16 v37, v7

    move-wide/from16 v35, v12

    invoke-direct/range {v34 .. v43}, Ldd/c;-><init>(DDDIZLdd/j;)V

    move-object/from16 v19, v34

    goto :goto_f

    :cond_15
    :goto_e
    const/16 v19, 0x0

    goto :goto_f

    :cond_16
    move-object/from16 v8, v20

    goto/16 :goto_a

    :cond_17
    move-wide/from16 v32, v7

    move-wide/from16 v30, v14

    iget v7, v11, Ldd/n0;->b:I

    iget v8, v11, Ldd/n0;->c:I

    invoke-virtual {v0, v7, v8, v12}, Ldd/e;->a(III)Ldd/c;

    move-result-object v0

    goto/16 :goto_5

    :goto_f
    iget v7, v11, Ldd/n0;->e:I

    iget-wide v12, v11, Ldd/n0;->d:J

    iget v8, v11, Ldd/n0;->c:I

    iget v14, v11, Ldd/n0;->b:I

    iget v15, v11, Ldd/n0;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v20, v11

    const-string v11, "-"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v11, v12, v13, v11}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v19, :cond_18

    new-instance v18, Ldd/g;

    invoke-direct/range {v18 .. v23}, Ldd/g;-><init>(Ldd/c;Ldd/n0;JLjava/lang/String;)V

    move-object/from16 v0, v18

    :goto_10
    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v23

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    goto :goto_10

    :goto_11
    iput-object v0, v1, Ldd/i;->i:Ldd/g;

    invoke-static {v11, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sub-long v34, v21, v16

    cmp-long v0, v34, v26

    if-ltz v0, :cond_19

    goto :goto_13

    :cond_19
    :goto_12
    move-object v9, v4

    move-wide/from16 v7, v16

    goto/16 :goto_4

    :cond_1a
    :goto_13
    :try_start_1
    iget-object v0, v1, Ldd/i;->a:Landroid/app/Application;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v4

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_1b

    move-object/from16 v4, v16

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    goto :goto_14

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v4

    :goto_14
    instance-of v0, v4, Lt8/l;

    if-eqz v0, :cond_1c

    const/4 v4, 0x0

    :cond_1c
    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1d

    const-string v4, "?"

    :cond_1d
    if-eqz v9, :cond_1e

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v16, v2

    iget-wide v1, v9, Ldd/c;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v17, v3

    iget-wide v2, v9, Ldd/c;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v18, v4

    iget-wide v3, v9, Ldd/c;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget v4, v9, Ldd/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v9, v9, Ldd/c;->f:Ldd/j;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v11

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1, v2, v3, v4, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lookup=%.4f,%.4f r=%.1fkm n=%d kind=%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1e
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v23, v11

    const-string v0, "lookup=none"

    :goto_15
    const-string v1, " mnc="

    const-string v2, " area="

    const-string v3, "cell mcc="

    invoke-static {v3, v15, v1, v14, v2}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    move-wide/from16 v7, v21

    move-object/from16 v9, v23

    :goto_16
    iget-object v0, v2, Ldd/i;->i:Ldd/g;

    if-eqz v0, :cond_1f

    iget-wide v3, v0, Ldd/g;->c:J

    sub-long v3, v21, v3

    const-wide/32 v11, 0x927c0

    cmp-long v3, v3, v11

    if-gtz v3, :cond_1f

    goto :goto_17

    :cond_1f
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_20

    const/4 v11, 0x0

    :goto_18
    move-object/from16 v3, v16

    goto :goto_19

    :cond_20
    move-object v11, v0

    goto :goto_18

    :goto_19
    invoke-virtual {v3, v11}, Lx9/l0;->j(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/g;

    iget-object v4, v2, Ldd/i;->e:Lsc/i;

    invoke-virtual {v4}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_22

    iget-object v5, v0, Ldd/g;->d:Ljava/lang/String;

    iget-object v0, v0, Ldd/g;->a:Ldd/c;

    if-eqz v4, :cond_22

    sget-object v11, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v12, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v14, v4, Lua/nav/routing/GeoPoint;->b:D

    move-object/from16 v16, v3

    iget-wide v2, v0, Ldd/c;->a:D

    move-wide/from16 v38, v2

    iget-wide v2, v0, Ldd/c;->c:D

    move-object v4, v11

    move-wide/from16 v34, v12

    iget-wide v11, v0, Ldd/c;->b:D

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v40, v11

    move-wide/from16 v36, v14

    invoke-static/range {v34 .. v41}, Ldd/s0;->a(DDDD)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    const/4 v4, 0x2

    int-to-double v13, v4

    mul-double/2addr v13, v2

    move-object v15, v5

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpl-double v13, v11, v4

    if-lez v13, :cond_21

    sub-long v13, v21, v24

    cmp-long v13, v13, v26

    if-ltz v13, :cond_21

    iget-object v0, v0, Ldd/c;->f:Ldd/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "cell_gps_far d=%.1fkm limit=%.1fkm r=%.1fkm src="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " kind="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/Double;

    invoke-direct {v13, v11, v12}, Ljava/lang/Double;-><init>(D)V

    new-instance v11, Ljava/lang/Double;

    invoke-direct {v11, v4, v5}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Ljava/lang/Double;-><init>(D)V

    filled-new-array {v13, v11, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x3

    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v10, v21

    :goto_1a
    move-wide/from16 v2, v28

    goto :goto_1b

    :cond_21
    cmpg-double v0, v11, v4

    if-gtz v0, :cond_23

    sub-long v2, v21, v28

    const-wide/32 v13, 0x493e0

    cmp-long v0, v2, v13

    if-ltz v0, :cond_23

    const-string v0, "cell_gps_ok d=%.1fkm limit=%.1fkm src="

    invoke-static {v0, v15}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v11, v12}, Ljava/lang/Double;-><init>(D)V

    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v4, v5}, Ljava/lang/Double;-><init>(D)V

    filled-new-array {v3, v10}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v2, v21

    move-wide/from16 v10, v24

    goto :goto_1b

    :cond_22
    move-object/from16 v16, v3

    :cond_23
    move-wide/from16 v10, v24

    goto :goto_1a

    :goto_1b
    iput-object v9, v6, Ldd/h;->l:Ljava/lang/String;

    move-object/from16 v4, v20

    iput-object v4, v6, Ldd/h;->m:Ljava/lang/String;

    iput-wide v7, v6, Ldd/h;->n:J

    move-wide/from16 v12, v32

    iput-wide v12, v6, Ldd/h;->o:J

    move-wide/from16 v14, v30

    iput-wide v14, v6, Ldd/h;->p:J

    iput-wide v10, v6, Ldd/h;->q:J

    iput-wide v2, v6, Ldd/h;->r:J

    move/from16 v5, p1

    iput v5, v6, Ldd/h;->u:I

    move-object/from16 v17, v1

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1, v6}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_24

    move-object v5, v1

    goto :goto_1d

    :cond_24
    move-wide/from16 v44, v12

    move-wide v12, v2

    move-wide v2, v7

    move-wide/from16 v7, v44

    move-object/from16 v44, v9

    move-object v9, v4

    move-object/from16 v4, v44

    :goto_1c
    move/from16 p1, v5

    move-object v5, v1

    move-object/from16 v1, p0

    move-wide/from16 v44, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-wide/from16 v16, v44

    goto/16 :goto_1

    :cond_25
    sget-object v5, Lt8/z;->a:Lt8/z;

    :goto_1d
    return-object v5
.end method

.method public static c(Landroid/telephony/CellInfo;)Ldd/n0;
    .locals 9

    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Ldd/i;->h(Ljava/lang/Integer;Ljava/lang/Integer;IJ)Lt8/j;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ldd/n0;

    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x3

    invoke-direct/range {v1 .. v8}, Ldd/n0;-><init>(IIIJILjava/lang/Integer;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Ldd/i;->h(Ljava/lang/Integer;Ljava/lang/Integer;IJ)Lt8/j;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ldd/n0;

    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x2

    invoke-direct/range {v1 .. v8}, Ldd/n0;-><init>(IIIJILjava/lang/Integer;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldd/i;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Ldd/i;->h(Ljava/lang/Integer;Ljava/lang/Integer;IJ)Lt8/j;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ldd/n0;

    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    int-to-long v5, p0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ldd/n0;-><init>(IIIJILjava/lang/Integer;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/Integer;Ljava/lang/Integer;IJ)Lt8/j;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lt8/j;

    invoke-direct {p2, p0, p1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b()Lid/h1;
    .locals 6

    iget-object p0, p0, Ldd/i;->f:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/g;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ldd/g;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lid/h1;

    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-object p0, p0, Ldd/g;->a:Ldd/c;

    iget-wide v2, p0, Ldd/c;->a:D

    iget-wide v4, p0, Ldd/c;->b:D

    invoke-direct {v1, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-wide v2, p0, Ldd/c;->c:D

    invoke-direct {v0, v1, v2, v3}, Lid/h1;-><init>(Lua/nav/routing/GeoPoint;D)V

    return-object v0
.end method

.method public final e()Lx9/l0;
    .locals 0

    iget-object p0, p0, Ldd/i;->g:Lx9/l0;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Ldd/i;->a:Landroid/app/Application;

    invoke-static {p0, p1}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lt8/j;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v0}, Ldd/i;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    iget-object v3, v1, Ldd/i;->a:Landroid/app/Application;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v4, "android.permission.READ_PHONE_STATE"

    sget-object v5, Lu8/r;->l:Lu8/r;

    if-nez v0, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    filled-new-array {v0}, [Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {v6}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v4}, Ldd/i;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v2

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    instance-of v8, v0, Lt8/l;

    if-eqz v8, :cond_4

    move-object v0, v2

    :cond_4
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    move-object v0, v5

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/telephony/CellInfo;

    invoke-virtual {v10}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_7
    move-object v9, v2

    :goto_4
    check-cast v9, Landroid/telephony/CellInfo;

    if-eqz v9, :cond_8

    invoke-static {v9}, Ldd/i;->c(Landroid/telephony/CellInfo;)Ldd/n0;

    move-result-object v8

    if-eqz v8, :cond_8

    new-instance v0, Lt8/j;

    const-string v1, "cellinfo"

    invoke-direct {v0, v8, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_8
    if-nez v7, :cond_3

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ldd/i;->c(Landroid/telephony/CellInfo;)Ldd/n0;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v7, Lt8/j;

    const-string v8, "cellinfo_neighbor"

    invoke-direct {v7, v0, v8}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v4}, Ldd/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_b
    move-object v0, v2

    goto :goto_7

    :goto_6
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_7
    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_c

    move-object v0, v2

    :cond_c
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    sget-object v3, Ldd/k;->a:Lr9/i;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ldd/k;->a:Lr9/i;

    invoke-static {v4, v0}, Lr9/i;->c(Lr9/i;Ljava/lang/String;)Lf9/h;

    move-result-object v0

    new-instance v4, Lk/k0;

    invoke-direct {v4, v0}, Lk/k0;-><init>(Lf9/h;)V

    :cond_e
    :goto_8
    invoke-virtual {v4}, Lk/k0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v4}, Lk/k0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr9/g;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lr9/e;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "mMcc"

    invoke-static {v0, v9}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v12, v9

    const-string v9, "mMnc"

    invoke-static {v0, v9}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v13, v9

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x118e1

    const-string v11, "mTac"

    const-string v14, "mCid"

    const-string v15, "mLac"

    if-eq v9, v10, :cond_13

    const v6, 0x12bbd

    if-eq v9, v6, :cond_11

    const v6, 0x4f8828c

    if-eq v9, v6, :cond_f

    goto :goto_9

    :cond_f
    const-string v6, "Wcdma"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_9

    :cond_10
    new-instance v5, Lt8/p;

    invoke-static {v0, v15}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v14}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v9, v8}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    const-string v6, "Lte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    new-instance v5, Lt8/p;

    invoke-static {v0, v11}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "mCi"

    invoke-static {v0, v8}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v5, v6, v8, v3}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    const-string v8, "Gsm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :goto_9
    new-instance v5, Lt8/p;

    invoke-static {v0, v11}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "mNci"

    invoke-static {v0, v8}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v5, v6, v8, v3}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    new-instance v5, Lt8/p;

    invoke-static {v0, v15}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v14}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v8, v9, v6}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    iget-object v6, v5, Lt8/p;->l:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iget-object v8, v5, Lt8/p;->m:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    iget-object v5, v5, Lt8/p;->n:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v17

    if-eqz v6, :cond_e

    const-wide/16 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v5, v14, v9

    if-eqz v5, :cond_e

    if-nez v8, :cond_15

    goto/16 :goto_8

    :cond_15
    new-instance v11, Ldd/n0;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v14, v3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-string v3, "mPsc"

    invoke-static {v0, v3}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_b
    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_c

    :cond_16
    const-string v3, "mPci"

    invoke-static {v0, v3}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_b

    :cond_17
    move-object/from16 v18, v2

    :goto_c
    invoke-direct/range {v11 .. v18}, Ldd/n0;-><init>(IIIJILjava/lang/Integer;)V

    goto :goto_d

    :cond_18
    move-object v11, v2

    :goto_d
    if-eqz v11, :cond_a

    new-instance v0, Lt8/j;

    const-string v1, "servicestate"

    invoke-direct {v0, v11, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_19
    return-object v7
.end method
