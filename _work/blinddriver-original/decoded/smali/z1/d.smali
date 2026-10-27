.class public final Lz1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lz1/c;

.field public final c:I

.field public final d:[Lz1/a;

.field public e:I

.field public final f:[F

.field public final g:[F

.field public final h:[F


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 13
    sget-object v0, Lz1/c;->l:Lz1/c;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lz1/d;-><init>(ZLz1/c;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x1

    .line 14
    sget-object v0, Lz1/c;->m:Lz1/c;

    invoke-direct {p0, p1, v0}, Lz1/d;-><init>(ZLz1/c;)V

    return-void
.end method

.method public constructor <init>(ZLz1/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lz1/d;->a:Z

    .line 3
    iput-object p2, p0, Lz1/d;->b:Lz1/c;

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lz1/c;->l:Lz1/c;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lsq2 not (yet) supported for differential axes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    .line 7
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 8
    throw p0

    :cond_3
    move p1, p2

    :goto_1
    iput p1, p0, Lz1/d;->c:I

    const/16 p1, 0x14

    .line 9
    new-array v0, p1, [Lz1/a;

    iput-object v0, p0, Lz1/d;->d:[Lz1/a;

    .line 10
    new-array v0, p1, [F

    iput-object v0, p0, Lz1/d;->f:[F

    .line 11
    new-array p1, p1, [F

    iput-object p1, p0, Lz1/d;->g:[F

    .line 12
    new-array p1, p2, [F

    iput-object p1, p0, Lz1/d;->h:[F

    return-void
.end method


# virtual methods
.method public final a(FJ)V
    .locals 2

    iget v0, p0, Lz1/d;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lz1/d;->e:I

    iget-object p0, p0, Lz1/d;->d:[Lz1/a;

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Lz1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-wide p2, v1, Lz1/a;->a:J

    iput p1, v1, Lz1/a;->b:F

    aput-object v1, p0, v0

    return-void

    :cond_0
    iput-wide p2, v1, Lz1/a;->a:J

    iput p1, v1, Lz1/a;->b:F

    return-void
.end method

.method public final b(F)F
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget v3, v0, Lz1/d;->e:I

    iget-object v4, v0, Lz1/d;->d:[Lz1/a;

    aget-object v5, v4, v3

    if-nez v5, :cond_1

    move v0, v2

    move/from16 v16, v0

    goto/16 :goto_a

    :cond_1
    const/4 v6, 0x0

    move-object v7, v5

    :goto_1
    aget-object v8, v4, v3

    iget-boolean v10, v0, Lz1/d;->a:Z

    iget-object v11, v0, Lz1/d;->b:Lz1/c;

    iget-object v12, v0, Lz1/d;->f:[F

    iget-object v13, v0, Lz1/d;->g:[F

    if-nez v8, :cond_2

    move/from16 v16, v2

    move/from16 v18, v10

    const/4 v15, 0x1

    goto :goto_5

    :cond_2
    iget-wide v14, v5, Lz1/a;->a:J

    move/from16 v16, v2

    move/from16 v17, v3

    iget-wide v2, v8, Lz1/a;->a:J

    sub-long/2addr v14, v2

    long-to-float v14, v14

    move/from16 v18, v10

    const/4 v15, 0x1

    iget-wide v9, v7, Lz1/a;->a:J

    sub-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-float v2, v2

    sget-object v3, Lz1/c;->l:Lz1/c;

    if-eq v11, v3, :cond_4

    if-eqz v18, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v5

    goto :goto_3

    :cond_4
    :goto_2
    move-object v7, v8

    :goto_3
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v14, v3

    if-gtz v3, :cond_8

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    goto :goto_5

    :cond_5
    iget v2, v8, Lz1/a;->b:F

    aput v2, v12, v6

    neg-float v2, v14

    aput v2, v13, v6

    const/16 v2, 0x14

    if-nez v17, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move/from16 v3, v17

    :goto_4
    sub-int/2addr v3, v15

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v2, v16

    goto :goto_1

    :cond_8
    :goto_5
    iget v2, v0, Lz1/d;->c:I

    if-lt v6, v2, :cond_f

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_e

    if-ne v2, v15, :cond_d

    sub-int/2addr v6, v15

    aget v0, v13, v6

    move v2, v6

    move/from16 v3, v16

    :goto_6
    const/4 v4, 0x2

    if-lez v2, :cond_c

    add-int/lit8 v5, v2, -0x1

    aget v7, v13, v5

    cmpg-float v8, v0, v7

    if-nez v8, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v18, :cond_a

    aget v5, v12, v5

    neg-float v5, v5

    goto :goto_7

    :cond_a
    aget v8, v12, v2

    aget v5, v12, v5

    sub-float v5, v8, v5

    :goto_7
    sub-float/2addr v0, v7

    div-float/2addr v5, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v4, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float/2addr v0, v4

    sub-float v0, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    if-ne v2, v6, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, -0x1

    move v0, v7

    goto :goto_6

    :cond_c
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v2, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    goto :goto_9

    :cond_d
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    :try_start_0
    iget-object v0, v0, Lz1/d;->h:[F

    invoke-static {v13, v12, v6, v0}, Lg5/f;->J([F[FI[F)V

    const/4 v15, 0x1

    aget v0, v0, v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move/from16 v0, v16

    :goto_9
    const/16 v2, 0x3e8

    int-to-float v2, v2

    mul-float/2addr v0, v2

    goto :goto_a

    :cond_f
    move/from16 v0, v16

    :goto_a
    cmpg-float v2, v0, v16

    if-nez v2, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_b
    move/from16 v2, v16

    goto :goto_c

    :cond_11
    cmpl-float v2, v0, v16

    if-lez v2, :cond_13

    cmpl-float v2, v0, v1

    if-lez v2, :cond_12

    move v0, v1

    :cond_12
    move v2, v0

    goto :goto_c

    :cond_13
    neg-float v1, v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_12

    move v2, v1

    :goto_c
    return v2
.end method
