.class public final Lad/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/j;


# instance fields
.field public final a:Li9/a;

.field public final b:Lu8/k;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:D

.field public j:D

.field public k:D

.field public l:Li9/c;

.field public m:D

.field public n:J

.field public o:D

.field public p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/l;->Companion:Lad/j;

    return-void
.end method

.method public constructor <init>(Li9/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/l;->a:Li9/a;

    new-instance p1, Lu8/k;

    invoke-direct {p1}, Lu8/k;-><init>()V

    iput-object p1, p0, Lad/l;->b:Lu8/k;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lad/l;->c:J

    iput-wide v0, p0, Lad/l;->d:J

    iput-wide v0, p0, Lad/l;->e:J

    iput-wide v0, p0, Lad/l;->g:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lad/l;->k:D

    iput-wide v0, p0, Lad/l;->n:J

    iput-wide v0, p0, Lad/l;->p:J

    return-void
.end method

.method public static f(DD)D
    .locals 2

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    rem-double/2addr p2, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpl-double p0, p2, p0

    const/16 p1, 0x168

    if-lez p0, :cond_0

    int-to-double v0, p1

    sub-double/2addr p2, v0

    :cond_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p2, v0

    if-gtz p0, :cond_1

    int-to-double p0, p1

    add-double/2addr p2, p0

    :cond_1
    return-wide p2
.end method


# virtual methods
.method public final a(J)Z
    .locals 4

    iget-wide v0, p0, Lad/l;->f:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(JJ)D
    .locals 11

    iget-object v0, p0, Lad/l;->b:Lu8/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/k;

    iget-wide v5, v4, Lad/k;->a:J

    sub-long v7, p1, v5

    cmp-long v7, v7, p3

    if-gtz v7, :cond_1

    iget-wide v7, p0, Lad/l;->g:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    iget-wide v7, v4, Lad/k;->c:D

    iget-wide v9, v3, Lad/k;->a:J

    sub-long/2addr v5, v9

    long-to-double v5, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v9

    mul-double/2addr v5, v7

    add-double/2addr v5, v1

    move-wide v1, v5

    :cond_1
    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final c(J[FLjava/lang/Float;[F)V
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-eqz v1, :cond_1a

    array-length v3, v1

    const/4 v10, 0x3

    if-ge v3, v10, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v3, v0, Lad/l;->a:Li9/a;

    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lua/nav/Tuning;

    iput-wide v8, v0, Lad/l;->f:J

    const/4 v12, 0x0

    aget v3, v1, v12

    mul-float/2addr v3, v3

    const/4 v13, 0x1

    aget v4, v1, v13

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    const/4 v3, 0x2

    aget v1, v1, v3

    mul-float/2addr v1, v1

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    if-eqz v2, :cond_1

    array-length v1, v2

    if-lt v1, v10, :cond_1

    aget v1, v2, v12

    mul-float/2addr v1, v1

    aget v6, v2, v13

    mul-float/2addr v6, v6

    add-float/2addr v6, v1

    aget v1, v2, v3

    mul-float/2addr v1, v1

    add-float/2addr v1, v6

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    move-wide v6, v1

    goto :goto_0

    :cond_1
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    new-instance v1, Lad/k;

    const/16 v16, 0x0

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_2
    move/from16 v2, v16

    :goto_1
    float-to-double v2, v2

    move-wide/from16 v25, v4

    move-wide v4, v2

    move-wide/from16 v2, v25

    invoke-direct/range {v1 .. v9}, Lad/k;-><init>(DDDJ)V

    iget-object v2, v0, Lad/l;->b:Lu8/k;

    invoke-virtual {v2, v1}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v2}, Lu8/k;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/k;

    iget-wide v3, v1, Lad/k;->a:J

    sub-long v3, v8, v3

    const-wide/16 v5, 0x1f40

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    invoke-virtual {v2}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-wide v3, v0, Lad/l;->p:J

    const-wide/16 v5, 0x0

    cmp-long v1, v5, v3

    const-wide v17, 0x408f400000000000L    # 1000.0

    if-gtz v1, :cond_6

    cmp-long v1, v3, v8

    if-gez v1, :cond_6

    iget-wide v3, v0, Lad/l;->o:D

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_3
    move-wide/from16 v19, v5

    goto :goto_4

    :cond_4
    move/from16 v1, v16

    goto :goto_3

    :goto_4
    float-to-double v5, v1

    iget-wide v14, v0, Lad/l;->p:J

    sub-long v14, v8, v14

    const-wide/16 v22, 0x1f4

    cmp-long v1, v14, v22

    if-lez v1, :cond_5

    move-wide/from16 v14, v22

    :cond_5
    long-to-double v14, v14

    div-double v14, v14, v17

    mul-double/2addr v14, v5

    add-double/2addr v14, v3

    iput-wide v14, v0, Lad/l;->o:D

    goto :goto_5

    :cond_6
    move-wide/from16 v19, v5

    :goto_5
    iput-wide v8, v0, Lad/l;->p:J

    iget-wide v3, v0, Lad/l;->n:J

    cmp-long v1, v3, v19

    if-ltz v1, :cond_8

    cmp-long v1, v8, v3

    if-lez v1, :cond_8

    iget-wide v3, v0, Lad/l;->m:D

    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v16

    :cond_7
    move/from16 v1, v16

    float-to-double v5, v1

    iget-wide v14, v0, Lad/l;->n:J

    sub-long v14, v8, v14

    long-to-double v14, v14

    div-double v14, v14, v17

    mul-double/2addr v14, v5

    add-double/2addr v14, v3

    iput-wide v14, v0, Lad/l;->m:D

    iput-wide v8, v0, Lad/l;->n:J

    :cond_8
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v12

    move v7, v4

    const-wide/16 v5, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    const-wide/16 p3, 0x0

    move-object/from16 v2, v18

    check-cast v2, Lad/k;

    iget-wide v12, v2, Lad/k;->a:J

    move/from16 p5, v4

    iget-wide v3, v2, Lad/k;->d:D

    sub-long v12, v8, v12

    move-wide/from16 v23, v3

    iget-wide v3, v11, Lua/nav/Tuning;->b:J

    cmp-long v3, v12, v3

    if-gtz v3, :cond_a

    add-int/lit8 v4, p5, 0x1

    iget-wide v2, v2, Lad/k;->b:D

    add-double/2addr v5, v2

    mul-double/2addr v2, v2

    add-double/2addr v14, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    add-double v16, v16, v23

    :cond_9
    :goto_7
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    move/from16 v4, p5

    goto :goto_7

    :cond_b
    move/from16 p5, v4

    const-wide/16 p3, 0x0

    const/16 v1, 0x8

    if-ge v4, v1, :cond_c

    goto/16 :goto_e

    :cond_c
    int-to-double v1, v4

    div-double/2addr v5, v1

    div-double/2addr v14, v1

    mul-double v1, v5, v5

    sub-double/2addr v14, v1

    cmpg-double v1, v14, p3

    if-gez v1, :cond_d

    move-wide/from16 v2, p3

    goto :goto_8

    :cond_d
    move-wide v2, v14

    :goto_8
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-int/lit8 v3, v7, 0x5

    mul-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_e

    int-to-double v3, v7

    div-double v14, v16, v3

    goto :goto_9

    :cond_e
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    :goto_9
    iput-wide v1, v0, Lad/l;->i:D

    iput-wide v5, v0, Lad/l;->j:D

    iput-wide v14, v0, Lad/l;->k:D

    iget-wide v3, v11, Lua/nav/Tuning;->e:D

    cmpg-double v3, v1, v3

    if-gez v3, :cond_f

    iget-wide v3, v11, Lua/nav/Tuning;->d:D

    cmpg-double v3, v5, v3

    if-gez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    :goto_a
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_10

    iget-wide v12, v11, Lua/nav/Tuning;->f:D

    cmpg-double v4, v14, v12

    if-gez v4, :cond_10

    iget-wide v12, v11, Lua/nav/Tuning;->g:D

    cmpg-double v4, v5, v12

    if-gez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    iget-boolean v7, v0, Lad/l;->h:Z

    const-string v12, " gyro="

    const-string v13, " mean="

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    move-object/from16 v21, v11

    const-wide/16 v10, -0x1

    if-nez v7, :cond_15

    if-nez v3, :cond_12

    if-eqz v4, :cond_11

    goto :goto_c

    :cond_11
    iput-wide v10, v0, Lad/l;->c:J

    return-void

    :cond_12
    :goto_c
    iget-wide v3, v0, Lad/l;->c:J

    cmp-long v3, v3, v19

    if-gez v3, :cond_13

    iput-wide v8, v0, Lad/l;->c:J

    :cond_13
    iget-wide v3, v0, Lad/l;->c:J

    sub-long v3, v8, v3

    move-object/from16 v7, v21

    iget-wide v7, v7, Lua/nav/Tuning;->c:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_1a

    const/4 v3, 0x1

    iput-boolean v3, v0, Lad/l;->h:Z

    iput-wide v10, v0, Lad/l;->d:J

    iget-object v0, v0, Lad/l;->l:Li9/c;

    if-eqz v0, :cond_1a

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_14

    move-wide/from16 v14, v16

    :cond_14
    invoke-static {v14, v15, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dr_stop std="

    invoke-static {v4, v1, v13, v2, v12}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    move-object/from16 v7, v21

    iget-wide v3, v7, Lua/nav/Tuning;->h:D

    cmpl-double v3, v5, v3

    if-gtz v3, :cond_17

    iget-wide v3, v7, Lua/nav/Tuning;->i:D

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_17

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_16

    iget-wide v3, v7, Lua/nav/Tuning;->j:D

    cmpl-double v3, v14, v3

    if-lez v3, :cond_16

    goto :goto_d

    :cond_16
    iput-wide v10, v0, Lad/l;->d:J

    return-void

    :cond_17
    :goto_d
    iget-wide v3, v0, Lad/l;->d:J

    cmp-long v3, v3, v19

    if-gez v3, :cond_18

    iput-wide v8, v0, Lad/l;->d:J

    :cond_18
    iget-wide v3, v0, Lad/l;->d:J

    sub-long v3, v8, v3

    iget-wide v10, v7, Lua/nav/Tuning;->k:J

    cmp-long v3, v3, v10

    if-ltz v3, :cond_1a

    const/4 v3, 0x0

    iput-boolean v3, v0, Lad/l;->h:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lad/l;->c:J

    iput-wide v8, v0, Lad/l;->e:J

    iget-object v0, v0, Lad/l;->l:Li9/c;

    if-eqz v0, :cond_1a

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_19

    move-wide/from16 v14, v16

    :cond_19
    invoke-static {v14, v15, v3}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dr_resume std="

    invoke-static {v4, v1, v13, v2, v12}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_e
    return-void
.end method

.method public final d(J)Ljava/lang/Double;
    .locals 11

    invoke-virtual {p0, p1, p2}, Lad/l;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lad/l;->h:Z

    if-eqz v0, :cond_1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide v0, p0, Lad/l;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lad/l;->a:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    iget-wide v1, p0, Lad/l;->e:J

    sub-long/2addr p1, v1

    iget-wide v1, v0, Lua/nav/Tuning;->l:J

    cmp-long p0, p1, v1

    if-gez p0, :cond_3

    long-to-double v3, p1

    long-to-double v1, v1

    div-double v5, v3, v1

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v5 .. v10}, Lg6/c1;->d(DDD)D

    move-result-wide v1

    iget-wide v3, v0, Lua/nav/Tuning;->m:J

    cmp-long p0, p1, v3

    if-gez p0, :cond_2

    iget-wide p0, v0, Lua/nav/Tuning;->n:D

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lad/l;->m:D

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lad/l;->n:J

    return-void
.end method
