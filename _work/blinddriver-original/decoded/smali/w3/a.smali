.class public final Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic l:Lg5/m;


# direct methods
.method public constructor <init>(Lg5/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a;->l:Lg5/m;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lw3/a;->l:Lg5/m;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lq3/k;

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Lw3/b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lw3/b;->b:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw3/c;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    move-wide/from16 p0, v1

    move-wide/from16 v17, v4

    move v12, v7

    goto/16 :goto_8

    :cond_1
    iget-object v10, v0, Lw3/b;->a:Lk/v0;

    invoke-virtual {v10, v8}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-gez v11, :cond_0

    invoke-virtual {v10, v8}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v10, v8, Lw3/c;->h:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_3

    iput-wide v1, v8, Lw3/c;->h:J

    iget v9, v8, Lw3/c;->b:F

    invoke-virtual {v8, v9}, Lw3/c;->b(F)V

    goto :goto_1

    :cond_3
    sub-long v19, v1, v10

    iput-wide v1, v8, Lw3/c;->h:J

    iget v10, v8, Lw3/c;->m:F

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    iget-object v10, v8, Lw3/c;->l:Lw3/d;

    iget-wide v14, v10, Lw3/d;->i:D

    iget v14, v8, Lw3/c;->b:F

    float-to-double v14, v14

    iget v12, v8, Lw3/c;->a:F

    float-to-double v12, v12

    const-wide/16 v16, 0x2

    div-long v26, v19, v16

    move-object/from16 v21, v10

    move-wide/from16 v24, v12

    move-wide/from16 v22, v14

    invoke-virtual/range {v21 .. v27}, Lw3/d;->a(DDJ)Lm/e0;

    move-result-object v10

    iget-object v12, v8, Lw3/c;->l:Lw3/d;

    iget v13, v8, Lw3/c;->m:F

    float-to-double v13, v13

    iput-wide v13, v12, Lw3/d;->i:D

    iput v11, v8, Lw3/c;->m:F

    iget v11, v10, Lm/e0;->a:F

    float-to-double v13, v11

    iget v10, v10, Lm/e0;->b:F

    float-to-double v10, v10

    move-wide/from16 v24, v10

    move-object/from16 v21, v12

    move-wide/from16 v22, v13

    invoke-virtual/range {v21 .. v27}, Lw3/d;->a(DDJ)Lm/e0;

    move-result-object v10

    iget v11, v10, Lm/e0;->a:F

    iput v11, v8, Lw3/c;->b:F

    iget v10, v10, Lm/e0;->b:F

    iput v10, v8, Lw3/c;->a:F

    goto :goto_3

    :cond_4
    iget-object v14, v8, Lw3/c;->l:Lw3/d;

    iget v10, v8, Lw3/c;->b:F

    float-to-double v10, v10

    iget v12, v8, Lw3/c;->a:F

    float-to-double v12, v12

    move-wide v15, v10

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v20}, Lw3/d;->a(DDJ)Lm/e0;

    move-result-object v10

    iget v11, v10, Lm/e0;->a:F

    iput v11, v8, Lw3/c;->b:F

    iget v10, v10, Lm/e0;->b:F

    iput v10, v8, Lw3/c;->a:F

    :goto_3
    iget v10, v8, Lw3/c;->b:F

    iget v11, v8, Lw3/c;->g:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v8, Lw3/c;->b:F

    iget v11, v8, Lw3/c;->f:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v8, Lw3/c;->b:F

    iget v11, v8, Lw3/c;->a:F

    iget-object v12, v8, Lw3/c;->l:Lw3/d;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v13, v11

    move v11, v10

    iget-wide v9, v12, Lw3/d;->e:D

    cmpg-double v9, v13, v9

    if-gez v9, :cond_5

    iget-wide v9, v12, Lw3/d;->i:D

    double-to-float v9, v9

    sub-float v10, v11, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    iget-wide v11, v12, Lw3/d;->d:D

    cmpg-double v9, v9, v11

    if-gez v9, :cond_5

    iget-object v9, v8, Lw3/c;->l:Lw3/d;

    iget-wide v9, v9, Lw3/d;->i:D

    double-to-float v9, v9

    iput v9, v8, Lw3/c;->b:F

    const/4 v9, 0x0

    iput v9, v8, Lw3/c;->a:F

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    move v9, v6

    :goto_4
    iget v10, v8, Lw3/c;->b:F

    iget v11, v8, Lw3/c;->f:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v8, Lw3/c;->b:F

    iget v11, v8, Lw3/c;->g:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v8, Lw3/c;->b:F

    invoke-virtual {v8, v10}, Lw3/c;->b(F)V

    if-eqz v9, :cond_0

    iget-object v9, v8, Lw3/c;->j:Ljava/util/ArrayList;

    iput-boolean v6, v8, Lw3/c;->e:Z

    sget-object v10, Lw3/b;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    new-instance v11, Lw3/b;

    invoke-direct {v11}, Lw3/b;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw3/b;

    iget-object v11, v10, Lw3/b;->a:Lk/v0;

    invoke-virtual {v11, v8}, Lk/v0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v10, Lw3/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    const/4 v13, 0x0

    if-ltz v12, :cond_7

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lw3/b;->e:Z

    :cond_7
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lw3/c;->h:J

    iput-boolean v6, v8, Lw3/c;->c:Z

    move v10, v6

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lv4/p;

    iget v12, v8, Lw3/c;->b:F

    iget-object v11, v11, Lv4/p;->a:Lv4/q;

    iget-object v14, v11, Lv4/q;->h:Lv4/z;

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v15

    sget-object v15, Lv4/s;->g:Lc2/c0;

    if-gez v12, :cond_9

    move-wide/from16 p0, v1

    iget-wide v1, v14, Lv4/t;->G:J

    invoke-virtual {v14, v6}, Lv4/z;->c0(I)Lv4/t;

    move-result-object v12

    iget-object v6, v12, Lv4/t;->B:Lv4/t;

    iput-object v13, v12, Lv4/t;->B:Lv4/t;

    move-wide/from16 v17, v4

    iget-wide v4, v11, Lv4/q;->a:J

    move v12, v7

    move-object/from16 v19, v8

    const-wide/16 v7, -0x1

    invoke-virtual {v14, v7, v8, v4, v5}, Lv4/z;->T(JJ)V

    invoke-virtual {v14, v1, v2, v7, v8}, Lv4/z;->T(JJ)V

    iput-wide v1, v11, Lv4/q;->a:J

    iget-object v1, v11, Lv4/q;->g:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget-object v1, v14, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v6, :cond_b

    const/4 v11, 0x1

    invoke-virtual {v6, v6, v15, v11}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    goto :goto_6

    :cond_9
    move-wide/from16 p0, v1

    move-wide/from16 v17, v4

    move v1, v6

    move v12, v7

    move-object/from16 v19, v8

    const/4 v11, 0x1

    invoke-virtual {v14, v14, v15, v1}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    goto :goto_6

    :cond_a
    move-wide/from16 p0, v1

    move-wide/from16 v17, v4

    move v12, v7

    move-object/from16 v19, v8

    :cond_b
    const/4 v11, 0x1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, p0

    move v7, v12

    move-wide/from16 v4, v17

    move-object/from16 v8, v19

    const/4 v6, 0x0

    goto :goto_5

    :cond_c
    move-wide/from16 p0, v1

    move-wide/from16 v17, v4

    move v12, v7

    const/4 v11, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_7
    if-ltz v1, :cond_e

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    add-int/lit8 v7, v12, 0x1

    move-wide/from16 v1, p0

    move-wide/from16 v4, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    iget-boolean v1, v0, Lw3/b;->e:Z

    if-eqz v1, :cond_12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    :goto_9
    if-ltz v1, :cond_11

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, v0, Lw3/b;->e:Z

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, v0, Lw3/b;->d:Lg5/m;

    if-nez v1, :cond_13

    new-instance v1, Lg5/m;

    iget-object v2, v0, Lw3/b;->c:Lq3/k;

    invoke-direct {v1, v2}, Lg5/m;-><init>(Lq3/k;)V

    iput-object v1, v0, Lw3/b;->d:Lg5/m;

    :cond_13
    iget-object v0, v0, Lw3/b;->d:Lg5/m;

    iget-object v1, v0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    iget-object v0, v0, Lg5/m;->o:Ljava/lang/Object;

    check-cast v0, Lw3/a;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_14
    return-void
.end method
