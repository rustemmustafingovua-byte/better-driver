.class public final Lhd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lhd/c;

.field public static final j:Ljava/util/UUID;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lu9/t;

.field public final c:Lp2/x;

.field public final d:Lsc/j;

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public h:Lu9/j1;

.field public volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhd/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhd/e;->Companion:Lhd/c;

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lhd/e;->j:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;Lp2/x;Lsc/j;)V
    .locals 6

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/e;->a:Landroid/app/Application;

    iput-object p2, p0, Lhd/e;->b:Lu9/t;

    iput-object p3, p0, Lhd/e;->c:Lp2/x;

    iput-object p4, p0, Lhd/e;->d:Lsc/j;

    const-string p2, "obd"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lhd/e;->e:Landroid/content/SharedPreferences;

    new-instance p2, Lhd/m;

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-direct {p2, p3, p3, p4}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-static {p2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p2

    iput-object p2, p0, Lhd/e;->f:Lx9/l0;

    iput-object p2, p0, Lhd/e;->g:Lx9/l0;

    const-string p0, "scale"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-static/range {v0 .. v5}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    sput-wide p0, Lb6/g;->n:D

    return-void
.end method

.method public static final a(Lhd/e;Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    sget-object v2, Lt8/z;->a:Lt8/z;

    instance-of v3, v0, Lhd/d;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lhd/d;

    iget v4, v3, Lhd/d;->w:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lhd/d;->w:I

    goto :goto_0

    :cond_0
    new-instance v3, Lhd/d;

    invoke-direct {v3, v1, v0}, Lhd/d;-><init>(Lhd/e;La9/c;)V

    :goto_0
    iget-object v0, v3, Lhd/d;->u:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lhd/d;->w:I

    const-string v8, " failures="

    const/4 v14, 0x2

    const-wide/32 v16, 0xea60

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v14, :cond_1

    iget v5, v3, Lhd/d;->t:I

    iget v9, v3, Lhd/d;->s:I

    const-wide/16 v18, 0x0

    iget-wide v11, v3, Lhd/d;->r:J

    iget-object v10, v3, Lhd/d;->m:Lj9/y;

    const/16 p2, -0x1

    iget-object v13, v3, Lhd/d;->l:Ljava/lang/String;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v29, v2

    move-object v0, v3

    move-object v7, v10

    move-object v3, v13

    move v13, v14

    const/4 v10, 0x0

    move-object v2, v1

    move-object v1, v4

    move v4, v6

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 p2, -0x1

    const-wide/16 v18, 0x0

    iget v5, v3, Lhd/d;->t:I

    iget v9, v3, Lhd/d;->s:I

    iget-wide v10, v3, Lhd/d;->r:J

    iget-object v12, v3, Lhd/d;->q:Lhd/k;

    iget-object v13, v3, Lhd/d;->p:Lj9/x;

    iget-object v14, v3, Lhd/d;->o:Lj9/u;

    iget-object v15, v3, Lhd/d;->n:Landroidx/lifecycle/a1;

    iget-object v6, v3, Lhd/d;->m:Lj9/y;

    iget-object v7, v3, Lhd/d;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v29, v2

    move-object v1, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v29, v2

    move-object v1, v4

    :goto_1
    const/16 v21, 0x1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_2
    move-object v7, v12

    goto/16 :goto_11

    :cond_3
    const/16 p2, -0x1

    const-wide/16 v18, 0x0

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    move-object v7, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x7d0

    move-object/from16 v3, p1

    :goto_3
    invoke-interface {v5}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->s(Ly8/h;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v12, Landroidx/lifecycle/a1;

    iget-object v0, v1, Lhd/e;->a:Landroid/app/Application;

    const-string v13, "address"

    invoke-static {v3, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    iput-object v3, v12, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    new-instance v14, Lj9/u;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lj9/x;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v22, Lhd/k;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v0, La1/b;

    const/16 v15, 0x19

    invoke-direct {v0, v15}, La1/b;-><init>(I)V

    new-instance v15, Lb0/k0;

    move-object/from16 v24, v0

    const/4 v0, 0x2

    invoke-direct {v15, v14, v13, v1, v0}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lb0/a;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v29, v2

    const/16 v2, 0xc

    :try_start_3
    invoke-direct {v0, v2, v1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iget-object v2, v1, Lhd/e;->d:Lsc/j;

    move-object/from16 v26, v0

    iget-object v0, v7, Lj9/y;->m:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v27, v2

    move-object/from16 v23, v12

    move-object/from16 v25, v15

    :try_start_4
    invoke-direct/range {v22 .. v28}, Lhd/k;-><init>(Landroidx/lifecycle/a1;La1/b;Lb0/k0;Lb0/a;Lsc/j;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v12, v22

    move-object/from16 v15, v23

    move-object/from16 v0, v27

    :try_start_5
    iget-object v2, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "name"
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :try_start_6
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obd_connect dev="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v5, Lhd/d;->l:Ljava/lang/String;

    iput-object v7, v5, Lhd/d;->m:Lj9/y;

    iput-object v15, v5, Lhd/d;->n:Landroidx/lifecycle/a1;

    iput-object v14, v5, Lhd/d;->o:Lj9/u;

    iput-object v13, v5, Lhd/d;->p:Lj9/x;

    iput-object v12, v5, Lhd/d;->q:Lhd/k;

    iput-wide v10, v5, Lhd/d;->r:J

    iput v9, v5, Lhd/d;->s:I

    iput v6, v5, Lhd/d;->t:I

    const/4 v1, 0x1

    iput v1, v5, Lhd/d;->w:I

    invoke-virtual {v12, v5}, Lhd/k;->c(La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    goto/16 :goto_f

    :cond_4
    move-object/from16 v30, v7

    move-object v7, v3

    move-object v3, v5

    move v5, v6

    move-object/from16 v6, v30

    :goto_4
    invoke-virtual {v15}, Landroidx/lifecycle/a1;->j()V

    sput p2, Lb6/g;->l:I

    sput-wide v18, Lb6/g;->m:J

    if-eqz v12, :cond_5

    iget-object v0, v12, Lhd/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iput-object v0, v6, Lj9/y;->m:Ljava/lang/Object;

    :cond_5
    iget-boolean v0, v14, Lj9/u;->l:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    iget-wide v12, v13, Lj9/x;->l:J

    sub-long v22, v22, v12

    cmp-long v0, v22, v16

    if-lez v0, :cond_6

    const/4 v9, 0x0

    :cond_6
    const/4 v4, 0x1

    move-object/from16 v2, p0

    move v0, v5

    const/4 v5, 0x0

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v1, v22

    :goto_5
    move-object/from16 v21, v7

    move-object v7, v3

    move-object v3, v5

    move v5, v6

    move-object/from16 v6, v21

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v6, v7

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v4

    move-object/from16 v15, v23

    :goto_6
    move-object v12, v7

    move-object v7, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v12

    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v15, v23

    :goto_7
    move-object v6, v7

    const/4 v7, 0x0

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    :goto_8
    move-object v1, v4

    move-object v15, v12

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v15, v12

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v29, v2

    goto :goto_8

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    :try_start_7
    iget-object v4, v2, Lhd/e;->d:Lsc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 p1, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const-string v23, ""

    move/from16 v24, v5

    if-nez v22, :cond_7

    move-object/from16 v5, v23

    :goto_a
    move-object/from16 v22, v7

    goto :goto_b

    :cond_7
    move-object/from16 v5, v22

    goto :goto_a

    :goto_b
    const/16 v7, 0x6e

    :try_start_8
    invoke-static {v7, v5}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, v14, Lj9/u;->l:Z

    move-wide/from16 v25, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obd_error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " streamed="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lhd/e;->f:Lx9/l0;

    new-instance v4, Lhd/m;

    sget-object v5, Lhd/l;->s:Lhd/l;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    move-object/from16 v7, v23

    :cond_8
    const/4 v10, 0x0

    invoke-direct {v4, v5, v10, v7}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v10, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v3, v14, Lj9/u;->l:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_c

    :cond_9
    instance-of v3, v0, Lhd/b;

    if-eqz v3, :cond_a

    move-object v3, v0

    check-cast v3, Lhd/b;

    iget-object v3, v3, Lhd/b;->l:Ljava/lang/String;

    const-string v4, "bus_errors"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, v24, 0x1

    goto :goto_c

    :cond_a
    const/4 v5, 0x0

    :cond_b
    move/from16 v3, v24

    :goto_c
    const/4 v4, 0x4

    if-lt v3, v4, :cond_f

    iget-object v1, v2, Lhd/e;->d:Lsc/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obd_stopped reason=no_speed sessions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lhd/e;->i:Z

    iget-object v1, v2, Lhd/e;->f:Lx9/l0;

    new-instance v2, Lhd/m;

    sget-object v3, Lhd/l;->t:Lhd/l;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object/from16 v0, v23

    :cond_c
    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {v15}, Landroidx/lifecycle/a1;->j()V

    sput p2, Lb6/g;->l:I

    sput-wide v18, Lb6/g;->m:J

    if-eqz v12, :cond_d

    iget-object v0, v12, Lhd/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_d

    iput-object v0, v6, Lj9/y;->m:Ljava/lang/Object;

    :cond_d
    iget-boolean v0, v14, Lj9/u;->l:Z

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-wide v0, v13, Lj9/x;->l:J

    :cond_e
    move-object/from16 v2, v29

    goto/16 :goto_13

    :catchall_6
    move-exception v0

    goto/16 :goto_12

    :cond_f
    const/4 v4, 0x1

    invoke-virtual {v15}, Landroidx/lifecycle/a1;->j()V

    sput p2, Lb6/g;->l:I

    sput-wide v18, Lb6/g;->m:J

    if-eqz v12, :cond_10

    iget-object v0, v12, Lhd/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_10

    iput-object v0, v6, Lj9/y;->m:Ljava/lang/Object;

    :cond_10
    iget-boolean v0, v14, Lj9/u;->l:Z

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v13, Lj9/x;->l:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, v16

    if-lez v0, :cond_11

    move v9, v5

    :cond_11
    move v0, v3

    move-object/from16 v7, v22

    move-wide/from16 v10, v25

    move-object/from16 v3, p1

    :goto_d
    iget-boolean v12, v14, Lj9/u;->l:Z

    if-eqz v12, :cond_12

    const-wide/16 v11, 0x7d0

    goto :goto_e

    :cond_12
    const/4 v12, 0x2

    int-to-long v13, v12

    mul-long/2addr v10, v13

    const-wide/16 v12, 0x4e20

    cmp-long v14, v10, v12

    if-lez v14, :cond_13

    move-wide v10, v12

    :cond_13
    move-wide v11, v10

    :goto_e
    iput-object v7, v3, Lhd/d;->l:Ljava/lang/String;

    iput-object v6, v3, Lhd/d;->m:Lj9/y;

    const/4 v10, 0x0

    iput-object v10, v3, Lhd/d;->n:Landroidx/lifecycle/a1;

    iput-object v10, v3, Lhd/d;->o:Lj9/u;

    iput-object v10, v3, Lhd/d;->p:Lj9/x;

    iput-object v10, v3, Lhd/d;->q:Lhd/k;

    iput-wide v11, v3, Lhd/d;->r:J

    iput v9, v3, Lhd/d;->s:I

    iput v0, v3, Lhd/d;->t:I

    const/4 v13, 0x2

    iput v13, v3, Lhd/d;->w:I

    invoke-static {v11, v12, v3}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_14

    :goto_f
    move-object v2, v1

    goto :goto_13

    :cond_14
    move-object/from16 v30, v6

    move v6, v0

    move-object v0, v3

    move-object v3, v7

    move-object/from16 v7, v30

    :goto_10
    move-object v5, v0

    move-object v4, v1

    move-object v1, v2

    move-wide v10, v11

    move-object/from16 v2, v29

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v15, v12

    const/4 v10, 0x0

    move-object v6, v7

    move-object v7, v10

    :goto_11
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    move-object v12, v7

    :goto_12
    invoke-virtual {v15}, Landroidx/lifecycle/a1;->j()V

    sput p2, Lb6/g;->l:I

    sput-wide v18, Lb6/g;->m:J

    if-eqz v12, :cond_15

    iget-object v1, v12, Lhd/k;->h:Ljava/lang/String;

    if-eqz v1, :cond_15

    iput-object v1, v6, Lj9/y;->m:Ljava/lang/Object;

    :cond_15
    iget-boolean v1, v14, Lj9/u;->l:Z

    if-eqz v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-wide v1, v13, Lj9/x;->l:J

    :cond_16
    throw v0

    :cond_17
    move-object/from16 v29, v2

    :goto_13
    return-object v2
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lhd/e;->c()Z

    move-result v0

    sget-object v1, Lu8/r;->l:Lu8/r;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lhd/e;->a:Landroid/app/Application;

    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lu8/t;->l:Lu8/t;

    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lhd/a;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getAddress(...)"

    invoke-static {v2, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lhd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :cond_5
    instance-of v0, p0, Lt8/l;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, p0

    :goto_4
    check-cast v1, Ljava/util/List;

    new-instance p0, Lbd/d;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbd/d;-><init>(I)V

    new-instance v0, Lad/m0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lad/m0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lhd/e;->a:Landroid/app/Application;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 6

    invoke-virtual {p0}, Lhd/e;->e()V

    iget-object v0, p0, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v3, p0, Lhd/e;->f:Lx9/l0;

    if-nez v0, :cond_0

    new-instance p0, Lhd/m;

    sget-object v0, Lhd/l;->m:Lhd/l;

    invoke-direct {p0, v0, v2, v1}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v4, p0, Lhd/e;->a:Landroid/app/Application;

    const-class v5, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_2

    new-instance p0, Lhd/m;

    sget-object v0, Lhd/l;->o:Lhd/l;

    invoke-direct {p0, v0, v2, v1}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lhd/e;->c()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance p0, Lhd/m;

    sget-object v0, Lhd/l;->n:Lhd/l;

    invoke-direct {p0, v0, v2, v1}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_3
    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lba/d;->n:Lba/d;

    new-instance v3, Landroidx/lifecycle/i0;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x2

    iget-object v4, p0, Lhd/e;->b:Lu9/t;

    invoke-static {v4, v1, v2, v3, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, Lhd/e;->h:Lu9/j1;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lhd/e;->h:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lhd/e;->h:Lu9/j1;

    const/4 v0, -0x1

    sput v0, Lb6/g;->l:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lb6/g;->m:J

    iget-object p0, p0, Lhd/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v0, Lb6/g;->n:D

    double-to-float v0, v0

    const-string v1, "scale"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
