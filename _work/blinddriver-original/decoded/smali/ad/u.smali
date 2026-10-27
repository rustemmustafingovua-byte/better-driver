.class public final synthetic Lad/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lad/x;


# direct methods
.method public synthetic constructor <init>(Lad/x;I)V
    .locals 0

    iput p2, p0, Lad/u;->l:I

    iput-object p1, p0, Lad/u;->m:Lad/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lad/u;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ldd/m0;

    const-string v2, "s"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lad/u;->m:Lad/x;

    iget-object v2, v0, Lad/x;->h:Lad/l;

    iget-object v8, v0, Lad/x;->d:Lad/r;

    iget-wide v3, v1, Ldd/m0;->e:J

    iget-object v5, v1, Ldd/m0;->c:[F

    iget-object v6, v1, Ldd/m0;->b:Ljava/lang/Float;

    iget-object v7, v1, Ldd/m0;->d:[F

    invoke-virtual/range {v2 .. v7}, Lad/l;->c(J[FLjava/lang/Float;[F)V

    iget-object v2, v1, Ldd/m0;->b:Ljava/lang/Float;

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-wide v11, v1, Ldd/m0;->e:J

    float-to-double v13, v7

    const-wide p0, 0x408f400000000000L    # 1000.0

    iget-wide v3, v8, Lad/r;->m:J

    iput-wide v11, v8, Lad/r;->m:J

    cmp-long v7, v3, v9

    if-ltz v7, :cond_2

    iget-boolean v7, v8, Lad/r;->e:Z

    if-eqz v7, :cond_2

    invoke-virtual {v8, v11, v12}, Lad/r;->c(J)Z

    move-result v7

    if-nez v7, :cond_2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    iget-wide v5, v8, Lad/r;->f:D

    cmpg-double v5, v5, v15

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v11, v3

    long-to-double v3, v11

    div-double v17, v3, p0

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v17 .. v22}, Lg6/c1;->d(DDD)D

    move-result-wide v3

    iget-wide v5, v8, Lad/r;->d:D

    mul-double/2addr v13, v3

    add-double/2addr v13, v5

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v13, v3

    rem-double/2addr v13, v3

    iput-wide v13, v8, Lad/r;->d:D

    goto :goto_0

    :cond_1
    const-wide p0, 0x408f400000000000L    # 1000.0

    :cond_2
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    :goto_0
    iget-wide v3, v1, Ldd/m0;->e:J

    iget-object v5, v1, Ldd/m0;->a:Ljava/lang/Float;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_4
    iget-object v2, v8, Lad/r;->t:Lad/i;

    iget-object v7, v2, Lad/i;->f:Lu8/k;

    iget-wide v11, v2, Lad/i;->b:J

    cmp-long v8, v11, v9

    if-gez v8, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_2

    :cond_5
    sub-long v11, v3, v11

    long-to-double v11, v11

    div-double v17, v11, p0

    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v17 .. v22}, Lg6/c1;->d(DDD)D

    move-result-wide v11

    :goto_2
    iput-wide v3, v2, Lad/i;->b:J

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    :goto_3
    move-wide/from16 p0, v9

    goto :goto_4

    :cond_6
    const-wide/16 v17, 0x0

    goto :goto_3

    :goto_4
    iget-wide v9, v2, Lad/i;->c:D

    mul-double v17, v17, v11

    add-double v9, v9, v17

    iput-wide v9, v2, Lad/i;->c:D

    if-eqz v5, :cond_8

    iget-wide v8, v2, Lad/i;->d:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide/from16 v21, v3

    const-wide/16 v19, 0x0

    goto :goto_5

    :cond_7
    iget-wide v8, v2, Lad/i;->d:D

    const-wide/16 v19, 0x0

    iget-wide v13, v2, Lad/i;->e:D

    move-wide/from16 v21, v3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Lad/i;->a(DD)D

    move-result-wide v3

    add-double/2addr v8, v3

    :goto_5
    iput-wide v8, v2, Lad/i;->d:D

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lad/i;->e:D

    goto :goto_6

    :cond_8
    move-wide/from16 v21, v3

    const-wide/16 v19, 0x0

    :goto_6
    iget-wide v3, v2, Lad/i;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-wide v5, v2, Lad/i;->i:D

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lad/i;->e(D)D

    move-result-wide v3

    iput-wide v3, v2, Lad/i;->a:D

    goto :goto_8

    :cond_9
    iget-wide v3, v2, Lad/i;->a:D

    add-double v3, v3, v17

    invoke-static {v3, v4}, Lad/i;->e(D)D

    move-result-wide v3

    iput-wide v3, v2, Lad/i;->a:D

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Lad/i;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    cmpl-double v3, v11, v19

    if-lez v3, :cond_b

    iget-wide v3, v2, Lad/i;->a:D

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-wide v8, v2, Lad/i;->i:D

    add-double/2addr v5, v8

    invoke-static {v5, v6}, Lad/i;->e(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lad/i;->a(DD)D

    move-result-wide v5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v11, v8

    cmpl-double v8, v11, v15

    if-lez v8, :cond_a

    goto :goto_7

    :cond_a
    move-wide v15, v11

    :goto_7
    mul-double/2addr v5, v15

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lad/i;->e(D)D

    move-result-wide v3

    iput-wide v3, v2, Lad/i;->a:D

    :cond_b
    :goto_8
    iget-wide v3, v2, Lad/i;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_c

    :cond_c
    invoke-virtual {v7}, Lu8/k;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v7}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/h;

    iget-wide v3, v3, Lad/h;->a:J

    sub-long v3, v21, v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-ltz v3, :cond_d

    goto :goto_9

    :cond_d
    move-wide/from16 v3, v21

    goto :goto_a

    :cond_e
    :goto_9
    new-instance v17, Lad/h;

    iget-wide v3, v2, Lad/i;->d:D

    iget-wide v5, v2, Lad/i;->c:D

    move-wide/from16 v18, v21

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    invoke-direct/range {v17 .. v23}, Lad/h;-><init>(JDD)V

    move-object/from16 v5, v17

    move-wide/from16 v3, v18

    invoke-virtual {v7, v5}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_a
    iget v5, v7, Lu8/k;->n:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_f

    invoke-virtual {v7}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/h;

    iget-wide v8, v5, Lad/h;->a:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x1f40

    cmp-long v5, v8, v10

    if-lez v5, :cond_f

    invoke-virtual {v7}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_a

    :cond_f
    iget-object v5, v2, Lad/i;->g:Lu8/k;

    iget v8, v7, Lu8/k;->n:I

    if-ge v8, v6, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v7}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/h;

    invoke-virtual {v7}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/h;

    iget-wide v8, v2, Lad/i;->h:J

    cmp-long v10, v8, p0

    if-ltz v10, :cond_11

    iget-wide v10, v6, Lad/h;->a:J

    cmp-long v8, v10, v8

    if-gtz v8, :cond_11

    goto :goto_c

    :cond_11
    iget-wide v8, v7, Lad/h;->c:D

    iget-wide v10, v6, Lad/h;->c:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x4046800000000000L    # 45.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_12

    goto :goto_c

    :cond_12
    iget-wide v10, v7, Lad/h;->b:D

    iget-wide v6, v6, Lad/h;->b:D

    sub-double/2addr v10, v6

    div-double/2addr v10, v8

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpg-double v6, v6, v10

    const/4 v7, 0x0

    if-gtz v6, :cond_13

    const-wide v8, 0x3ff6666666666666L    # 1.4

    cmpg-double v6, v10, v8

    if-gtz v6, :cond_13

    const/4 v7, 0x1

    :cond_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_b
    iget v6, v5, Lu8/k;->n:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_14

    invoke-virtual {v5}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_b

    :cond_14
    iput-wide v3, v2, Lad/i;->h:J

    :goto_c
    iget-object v0, v0, Lad/x;->f:Lb0/a;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lad/u;->m:Lad/x;

    iget-object v2, v0, Lad/x;->i:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v0, v0, Lad/x;->a:Ldd/k0;

    const-string v2, "free_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_16
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
