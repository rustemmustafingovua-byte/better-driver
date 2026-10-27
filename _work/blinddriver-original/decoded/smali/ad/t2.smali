.class public abstract Lad/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lad/t2;->a:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        -0x3fcf000000000000L    # -17.0
        -0x3fd6000000000000L    # -13.0
        -0x3fdc000000000000L    # -10.0
    .end array-data
.end method

.method public static a(Ljava/lang/Double;JLjava/lang/Double;Lad/c1;)D
    .locals 17

    move-object/from16 v0, p4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide/from16 v9, p1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    const-wide v9, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    add-double/2addr v7, v9

    mul-double/2addr v7, v7

    div-double v7, v1, v7

    add-double v9, v3, v7

    mul-double/2addr v7, v5

    add-double/2addr v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v3

    move-wide v9, v7

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v11, 0x3f9c71c71c71c71cL    # 0.027777777777777776

    add-double/2addr v9, v11

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    :cond_1
    if-eqz v0, :cond_2

    iget-wide v5, v0, Lad/c1;->a:D

    iget-wide v11, v0, Lad/c1;->b:D

    const-wide v13, 0x3fd3333333333333L    # 0.3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    mul-double/2addr v11, v11

    div-double/2addr v1, v11

    add-double/2addr v9, v1

    mul-double/2addr v1, v5

    add-double/2addr v7, v1

    :cond_2
    cmpg-double v0, v9, v3

    if-nez v0, :cond_3

    return-wide v3

    :cond_3
    div-double v11, v7, v9

    const-wide/16 v13, 0x0

    const-wide v15, 0x4044d55555555555L    # 41.666666666666664

    invoke-static/range {v11 .. v16}, Lg6/c1;->d(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b([SDI)[S
    .locals 35

    move-object/from16 v0, p0

    invoke-static {v0}, Lad/t2;->g([S)D

    move-result-wide v1

    const-wide/high16 v3, -0x3fa7000000000000L    # -100.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    move/from16 v3, p3

    int-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v5, v3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    div-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v15, v9, v5

    const-wide v5, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v3, v5

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    sub-double v21, v9, v3

    array-length v3, v0

    new-array v4, v3, [S

    move-wide/from16 v25, v9

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    const-wide v27, 0x40dfffc000000000L    # 32767.0

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    const-wide/high16 v17, 0x40e0000000000000L    # 32768.0

    const-wide/high16 v29, 0x4034000000000000L    # 20.0

    if-ge v8, v3, :cond_4

    aget-short v5, v0, v8

    const-wide/16 v31, 0x0

    int-to-double v6, v5

    div-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpl-double v5, v17, v13

    if-lez v5, :cond_1

    move-wide/from16 v19, v11

    move-wide/from16 v11, v17

    move-wide/from16 v17, v13

    move-wide/from16 v33, v9

    move-wide/from16 v9, v19

    invoke-static/range {v11 .. v18}, Lm/a;->b(DDDD)D

    move-result-wide v11

    :goto_1
    move-wide v13, v11

    goto :goto_2

    :cond_1
    move-wide/from16 v33, v9

    move-wide v9, v11

    move-wide/from16 v11, v17

    move-wide/from16 v23, v13

    move-wide/from16 v19, v13

    invoke-static/range {v17 .. v24}, Lm/a;->b(DDDD)D

    move-result-wide v11

    goto :goto_1

    :goto_2
    const-wide v11, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    mul-double v11, v11, v29

    const-wide/high16 v17, -0x3fc6000000000000L    # -26.0

    cmpl-double v5, v11, v17

    if-lez v5, :cond_2

    sub-double v11, v11, v17

    neg-double v11, v11

    const-wide v17, 0x3fe6db6db6db6db7L    # 0.7142857142857143

    mul-double v11, v11, v17

    div-double v11, v11, v29

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    goto :goto_3

    :cond_2
    move-wide/from16 v9, v33

    :goto_3
    sub-double v11, v9, v25

    cmpg-double v5, v9, v25

    if-gez v5, :cond_3

    move-wide v9, v15

    goto :goto_4

    :cond_3
    move-wide/from16 v9, v21

    :goto_4
    mul-double/2addr v11, v9

    add-double v25, v11, v25

    mul-double v6, v6, v25

    mul-double v6, v6, v27

    double-to-int v5, v6

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    invoke-static {v5, v6, v7}, Lg6/c1;->f(III)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v9, v33

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v5, p1

    move-wide/from16 v33, v9

    move-wide v9, v11

    const-wide/16 v31, 0x0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v4}, Lad/t2;->g([S)D

    move-result-wide v5

    sub-double v11, v0, v5

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    invoke-static/range {v11 .. v16}, Lg6/c1;->d(DDD)D

    move-result-wide v0

    div-double v0, v0, v29

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    new-array v2, v3, [S

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_7

    aget-short v6, v4, v5

    int-to-double v6, v6

    div-double v6, v6, v17

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_5

    goto :goto_6

    :cond_5
    sub-double/2addr v8, v10

    neg-double v8, v8

    const-wide v12, 0x3fd851eb851eb852L    # 0.38

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    sub-double v8, v33, v8

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    cmpg-double v6, v6, v31

    if-gez v6, :cond_6

    neg-double v6, v8

    goto :goto_6

    :cond_6
    move-wide v6, v8

    :goto_6
    mul-double v6, v6, v27

    double-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    return-object v2
.end method

.method public static c(Ljava/util/List;DZ)Ljava/lang/Double;
    .locals 9

    const-string v0, "hazards"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/l0;

    iget-wide v2, v1, Lad/l0;->a:D

    sub-double/2addr v2, p1

    iget-object v1, v1, Lad/l0;->b:Lad/k0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-wide/high16 v4, -0x3fec000000000000L    # -5.0

    if-eqz v1, :cond_7

    const/4 v6, 0x1

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    if-eq v1, v6, :cond_5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v7

    :goto_1
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    const-wide/high16 v4, -0x3ff8000000000000L    # -3.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const-wide/high16 v1, 0x4022000000000000L    # 9.0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :cond_4
    move-wide v3, v1

    :goto_2
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/high16 v4, -0x3fe8000000000000L    # -6.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_3

    :cond_6
    move-wide v0, v7

    :goto_3
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide v4, 0x4046800000000000L    # 45.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    :cond_8
    move-wide v3, v1

    :goto_4
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public static d([B)Lad/s2;
    .locals 15

    array-length v1, p0

    const/16 v2, 0x2c

    if-lt v1, v2, :cond_a

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lr9/a;->e:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, p0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v5, "RIFF"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/String;

    const/16 v5, 0x8

    invoke-direct {v1, p0, v5, v4, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v1, 0xc

    move v2, v3

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    add-int/lit8 v8, v1, 0x8

    array-length v9, p0

    if-gt v8, v9, :cond_a

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lr9/a;->e:Ljava/nio/charset/Charset;

    invoke-direct {v9, p0, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v10, v1, 0x4

    invoke-static {v10, p0}, Lad/t2;->h(I[B)I

    move-result v10

    int-to-long v10, v10

    add-int/lit8 v12, v1, 0x6

    invoke-static {v12, p0}, Lad/t2;->h(I[B)I

    move-result v12

    int-to-long v12, v12

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    or-long/2addr v10, v12

    const-string v12, "fmt "

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/lit8 v12, v1, 0x18

    array-length v13, p0

    if-gt v12, v13, :cond_1

    invoke-static {v8, p0}, Lad/t2;->h(I[B)I

    move-result v2

    add-int/lit8 v5, v1, 0xa

    invoke-static {v5, p0}, Lad/t2;->h(I[B)I

    move-result v6

    add-int/lit8 v5, v1, 0xc

    invoke-static {v5, p0}, Lad/t2;->h(I[B)I

    move-result v5

    int-to-long v12, v5

    add-int/lit8 v5, v1, 0xe

    invoke-static {v5, p0}, Lad/t2;->h(I[B)I

    move-result v5

    int-to-long v3, v5

    shl-long/2addr v3, v14

    or-long/2addr v3, v12

    long-to-int v7, v3

    add-int/lit8 v1, v1, 0x16

    invoke-static {v1, p0}, Lad/t2;->h(I[B)I

    move-result v5

    goto :goto_4

    :cond_1
    const-string v1, "data"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    if-ne v2, v1, :cond_a

    if-ne v5, v14, :cond_a

    if-gt v1, v6, :cond_a

    const/4 v1, 0x3

    if-ge v6, v1, :cond_a

    if-gtz v7, :cond_2

    goto :goto_6

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_4

    const-wide v1, 0xffffffffL

    cmp-long v1, v10, v1

    if-eqz v1, :cond_4

    int-to-long v1, v8

    add-long/2addr v1, v10

    array-length v3, p0

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v1, v1

    goto :goto_2

    :cond_4
    :goto_1
    array-length v1, p0

    :goto_2
    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_5

    goto :goto_6

    :cond_5
    new-array v2, v1, [S

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v8

    invoke-static {v4, p0}, Lad/t2;->h(I[B)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Lad/s2;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v7, v6, v1}, Lad/s2;-><init>(Ljava/lang/Object;III)V

    return-object v0

    :cond_7
    :goto_4
    long-to-int v1, v10

    if-gez v1, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    add-int/2addr v8, v3

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v8

    array-length v3, p0

    int-to-long v3, v3

    cmp-long v3, v10, v3

    if-lez v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_a
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e([S)D
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v3, p0, v1

    const v4, 0x8000

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-double v0, v2

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static f(Ldd/l0;Ldd/l0;JLdd/l0;)Lad/p1;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lad/p1;

    sget-object v2, Lad/o1;->l:Lad/o1;

    iget-wide v3, p0, Ldd/l0;->c:J

    sub-long v3, p2, v3

    invoke-direct {v1, p0, v2, v3, v4}, Lad/p1;-><init>(Ldd/l0;Lad/o1;J)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p0, Lad/p1;

    sget-object v2, Lad/o1;->m:Lad/o1;

    iget-wide v3, p1, Ldd/l0;->c:J

    sub-long/2addr p2, v3

    invoke-direct {p0, p1, v2, p2, p3}, Lad/p1;-><init>(Ldd/l0;Lad/o1;J)V

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p4, :cond_2

    new-instance p1, Lad/p1;

    sget-object p2, Lad/o1;->n:Lad/o1;

    const-wide/16 v2, 0x0

    invoke-direct {p1, p4, p2, v2, v3}, Lad/p1;-><init>(Ldd/l0;Lad/o1;J)V

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    filled-new-array {v1, p0, p1}, [Lad/p1;

    move-result-object p0

    invoke-static {p0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p2, :cond_5

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    move-object v0, p4

    check-cast v0, Lad/p1;

    iget-wide v0, v0, Lad/p1;->c:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, p1

    check-cast p2, Lad/p1;

    invoke-virtual {p2}, Lad/p1;->a()D

    move-result-wide p2

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lad/p1;

    invoke-virtual {v0}, Lad/p1;->a()D

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_8

    move-object p1, p4

    move-wide p2, v0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_7

    :goto_4
    check-cast p1, Lad/p1;

    return-object p1

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    move-object p2, p1

    check-cast p2, Lad/p1;

    iget-wide p2, p2, Lad/p1;->c:J

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lad/p1;

    iget-wide v0, v0, Lad/p1;->c:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_d

    move-object p1, p4

    move-wide p2, v0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_c

    :goto_5
    check-cast p1, Lad/p1;

    return-object p1

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static g([S)D
    .locals 12

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3ffc000000000000L    # -2.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v0, v2

    array-length v4, p0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_1

    aget-short v9, p0, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpl-double v11, v9, v0

    if-ltz v11, :cond_0

    mul-double/2addr v9, v9

    add-double/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    move-wide v5, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    const-wide/high16 v0, -0x3fa2000000000000L    # -120.0

    return-wide v0

    :cond_2
    int-to-double v0, v8

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static h(I[B)I
    .locals 1

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method
