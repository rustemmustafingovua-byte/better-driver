.class public abstract Ldd/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[D

.field public static volatile b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x66

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Ldd/w0;->a:[D

    return-void

    :array_0
    .array-data 8
        0x403799999999999aL    # 23.6
        0x4049cccccccccccdL    # 51.6
        0x4038666666666666L    # 24.4
        0x4049f33333333333L    # 51.9
        0x403a000000000000L    # 26.0
        0x4049f5c28f5c28f6L    # 51.92
        0x403bb33333333333L    # 27.7
        0x4049cccccccccccdL    # 51.6
        0x403d333333333333L    # 29.2
        0x4049cccccccccccdL    # 51.6
        0x403e8ccccccccccdL    # 30.55
        0x4049a66666666666L    # 51.3
        0x403ef33333333333L    # 30.95
        0x404a066666666666L    # 52.05
        0x4040266666666666L    # 32.3
        0x404a0ccccccccccdL    # 52.1
        0x4040c00000000000L    # 33.5
        0x404a2f5c28f5c28fL    # 52.37
        0x4041333333333333L    # 34.4
        0x4049a00000000000L    # 51.25
        0x4041b33333333333L    # 35.4
        0x404939999999999aL    # 50.45
        0x4042266666666666L    # 36.3
        0x4049266666666666L    # 50.3
        0x4042cccccccccccdL    # 37.6
        0x40492ccccccccccdL    # 50.35
        0x4043266666666666L    # 38.3
        0x4048f9999999999aL    # 49.95
        0x40440ccccccccccdL    # 40.1
        0x4048cccccccccccdL    # 49.6
        0x404419999999999aL    # 40.2
        0x4048733333333333L    # 48.9
        0x4043e66666666666L    # 39.8
        0x4048266666666666L    # 48.3
        0x4043f9999999999aL    # 39.95
        0x4047eccccccccccdL    # 47.85
        0x4043666666666666L    # 38.8
        0x404799999999999aL    # 47.2
        0x4043266666666666L    # 38.3
        0x40478ccccccccccdL    # 47.1
        0x4042c66666666666L    # 37.55
        0x40476ccccccccccdL    # 46.85
        0x4042666666666666L    # 36.8
        0x40474ccccccccccdL    # 46.6
        0x40418ccccccccccdL    # 35.1
        0x4047200000000000L    # 46.25
        0x40418ccccccccccdL    # 35.1
        0x4046a66666666666L    # 45.3
        0x4042533333333333L    # 36.65
        0x4046b9999999999aL    # 45.45
        0x4042400000000000L    # 36.5
        0x4046866666666666L    # 45.05
        0x4041b33333333333L    # 35.4
        0x404679999999999aL    # 44.95
        0x4041333333333333L    # 34.4
        0x40462ccccccccccdL    # 44.35
        0x4040b33333333333L    # 33.4
        0x404639999999999aL    # 44.45
        0x4040333333333333L    # 32.4
        0x4046accccccccccdL    # 45.35
        0x4040cccccccccccdL    # 33.6
        0x40470ccccccccccdL    # 46.1
        0x40400ccccccccccdL    # 32.1
        0x404719999999999aL    # 46.2
        0x403f333333333333L    # 31.2
        0x4047400000000000L    # 46.5
        0x403e99999999999aL    # 30.6
        0x404719999999999aL    # 46.2
        0x403e333333333333L    # 30.2
        0x4046eccccccccccdL    # 45.85
        0x403d99999999999aL    # 29.6
        0x4046a00000000000L    # 45.25
        0x403c333333333333L    # 28.2
        0x4046b9999999999aL    # 45.45
        0x403ce66666666666L    # 28.9
        0x4047266666666666L    # 46.3
        0x403de66666666666L    # 29.9
        0x4047466666666666L    # 46.55
        0x403d333333333333L    # 29.2
        0x40478ccccccccccdL    # 47.1
        0x403d99999999999aL    # 29.6
        0x4047f33333333333L    # 47.9
        0x403b99999999999aL    # 27.6
        0x404839999999999aL    # 48.45
        0x403a99999999999aL    # 26.6
        0x4048266666666666L    # 48.3
        0x4039333333333333L    # 25.2
        0x4047e00000000000L    # 47.75
        0x403819999999999aL    # 24.1
        0x4047f33333333333L    # 47.9
        0x4036e66666666666L    # 22.9
        0x4048066666666666L    # 48.05
        0x4036266666666666L    # 22.15
        0x4048333333333333L    # 48.4
        0x403699999999999aL    # 22.6
        0x40488ccccccccccdL    # 49.1
        0x403799999999999aL    # 23.6
        0x4049333333333333L    # 50.4
        0x40380ccccccccccdL    # 24.05
        0x40496ccccccccccdL    # 50.85
        0x403799999999999aL    # 23.6
        0x4049cccccccccccdL    # 51.6
    .end array-data
.end method

.method public static a(DD)Z
    .locals 16

    const-wide v0, 0x4046266666666666L    # 44.3

    cmpg-double v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_4

    const-wide v2, 0x404a333333333333L    # 52.4

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_4

    const-wide v2, 0x403619999999999aL    # 22.1

    cmpg-double v0, v2, p2

    if-gtz v0, :cond_4

    const-wide v2, 0x4044266666666666L    # 40.3

    cmpg-double v0, p2, v2

    if-gtz v0, :cond_4

    const/16 v0, 0x32

    move v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    const/16 v4, 0x33

    if-ge v0, v4, :cond_3

    mul-int/lit8 v4, v0, 0x2

    sget-object v5, Ldd/w0;->a:[D

    aget-wide v6, v5, v4

    const/4 v8, 0x1

    add-int/2addr v4, v8

    aget-wide v9, v5, v4

    mul-int/lit8 v2, v2, 0x2

    aget-wide v11, v5, v2

    add-int/2addr v2, v8

    aget-wide v4, v5, v2

    cmpl-double v2, v9, p0

    if-lez v2, :cond_0

    move v2, v8

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    cmpl-double v13, v4, p0

    if-lez v13, :cond_1

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    if-eq v2, v8, :cond_2

    sub-double/2addr v11, v6

    sub-double v13, p0, v9

    mul-double/2addr v13, v11

    sub-double/2addr v4, v9

    div-double/2addr v13, v4

    add-double/2addr v13, v6

    cmpg-double v2, p2, v13

    if-gez v2, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    move v15, v2

    move v2, v0

    move v0, v15

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public static b(DD)Z
    .locals 24

    sget-object v0, Ldd/w0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p3}, Ldd/w0;->a(DD)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_2
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ldd/v0;

    iget-object v5, v4, Ldd/v0;->a:[D

    iget-wide v6, v4, Ldd/v0;->c:D

    cmpg-double v6, p2, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_7

    iget-wide v8, v4, Ldd/v0;->d:D

    cmpl-double v6, p2, v8

    if-gtz v6, :cond_7

    iget-wide v8, v4, Ldd/v0;->e:D

    cmpg-double v6, p0, v8

    if-ltz v6, :cond_7

    iget-wide v8, v4, Ldd/v0;->f:D

    cmpl-double v6, p0, v8

    if-lez v6, :cond_3

    goto :goto_3

    :cond_3
    array-length v6, v5

    sub-int/2addr v6, v7

    array-length v8, v5

    move v10, v2

    move v9, v6

    move v6, v10

    :goto_0
    if-ge v6, v8, :cond_8

    iget-object v11, v4, Ldd/v0;->b:[D

    aget-wide v12, v11, v6

    cmpl-double v14, v12, p0

    if-lez v14, :cond_4

    move v14, v7

    goto :goto_1

    :cond_4
    move v14, v2

    :goto_1
    aget-wide v15, v11, v9

    cmpl-double v11, v15, p0

    if-lez v11, :cond_5

    move v11, v7

    goto :goto_2

    :cond_5
    move v11, v2

    :goto_2
    if-eq v14, v11, :cond_6

    aget-wide v17, v5, v9

    aget-wide v19, v5, v6

    sub-double v17, v17, v19

    sub-double v21, p0, v12

    mul-double v21, v21, v17

    sub-double/2addr v15, v12

    div-double v21, v21, v15

    add-double v21, v21, v19

    cmpg-double v9, p2, v21

    if-gez v9, :cond_6

    xor-int/lit8 v10, v10, 0x1

    :cond_6
    add-int/lit8 v9, v6, 0x1

    move/from16 v23, v9

    move v9, v6

    move/from16 v6, v23

    goto :goto_0

    :cond_7
    :goto_3
    move v10, v2

    :cond_8
    if-eqz v10, :cond_2

    return v7

    :cond_9
    :goto_4
    return v2
.end method

.method public static c(Ldd/l0;Ldd/p;Ldd/y0;)Ljava/util/List;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v0, Ldd/l0;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v3, v0, Ldd/l0;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v8, v0, Ldd/l0;->a:Ldd/o;

    iget-wide v3, v0, Ldd/l0;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v3, v0, Ldd/l0;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-object v11, v0, Ldd/l0;->f:Ljava/lang/Double;

    iget-object v12, v0, Ldd/l0;->g:Ljava/lang/Float;

    iget-object v13, v0, Ldd/l0;->h:Ljava/lang/Float;

    iget-object v14, v0, Ldd/l0;->i:Ljava/lang/Float;

    iget-object v15, v0, Ldd/l0;->j:Ljava/lang/Float;

    iget-object v3, v0, Ldd/l0;->k:Ljava/lang/Float;

    iget-boolean v0, v0, Ldd/l0;->l:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget v4, v1, Ldd/p;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_0

    :cond_0
    move-object/from16 v18, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v4, v1, Ldd/p;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    move-object/from16 v19, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, v1, Ldd/p;->c:Ljava/lang/Float;

    move-object/from16 v20, v4

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v4, v1, Ldd/p;->d:Ljava/lang/Float;

    move-object/from16 v21, v4

    goto :goto_3

    :cond_3
    move-object/from16 v21, v0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v4, v1, Ldd/p;->f:Ljava/lang/Float;

    move-object/from16 v22, v4

    goto :goto_4

    :cond_4
    move-object/from16 v22, v0

    :goto_4
    if-eqz v2, :cond_5

    iget-object v4, v2, Ldd/y0;->a:Ldd/u0;

    move-object/from16 v23, v4

    goto :goto_5

    :cond_5
    move-object/from16 v23, v0

    :goto_5
    if-eqz v2, :cond_6

    iget-object v2, v2, Ldd/y0;->b:Ljava/util/List;

    const/16 v28, 0x0

    const/16 v29, 0x3e

    const-string v25, "|"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v2

    invoke-static/range {v24 .. v29}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    goto :goto_6

    :cond_6
    move-object/from16 v24, v0

    :goto_6
    if-eqz v1, :cond_7

    iget-object v2, v1, Ldd/p;->e:Ljava/lang/Float;

    move-object/from16 v34, v2

    goto :goto_7

    :cond_7
    move-object/from16 v34, v0

    :goto_7
    if-eqz v1, :cond_8

    iget-object v2, v1, Ldd/p;->j:Ljava/lang/String;

    move-object/from16 v35, v2

    goto :goto_8

    :cond_8
    move-object/from16 v35, v0

    :goto_8
    if-eqz v1, :cond_9

    iget v2, v1, Ldd/p;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_9

    :cond_9
    move-object/from16 v36, v0

    :goto_9
    if-eqz v1, :cond_a

    iget v0, v1, Ldd/p;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_a
    move-object/from16 v37, v0

    const-string v7, "FIX"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v16, v3

    filled-new-array/range {v5 .. v37}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(JLdd/p;)Ljava/util/List;
    .locals 34

    move-object/from16 v0, p2

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v0, Ldd/p;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, v0, Ldd/p;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v3, v0, Ldd/p;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v3, v0, Ldd/p;->c:Ljava/lang/Float;

    iget-object v4, v0, Ldd/p;->d:Ljava/lang/Float;

    iget-object v5, v0, Ldd/p;->f:Ljava/lang/Float;

    iget-object v6, v0, Ldd/p;->e:Ljava/lang/Float;

    iget-object v7, v0, Ldd/p;->j:Ljava/lang/String;

    iget v8, v0, Ldd/p;->k:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    iget v0, v0, Ldd/p;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v16, v3

    const-string v3, "GNSS"

    move-object/from16 v17, v4

    const/4 v4, 0x0

    move-object/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v30, v6

    const/4 v6, 0x0

    move-object/from16 v31, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    filled-new-array/range {v1 .. v33}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/app/Application;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "ukraine_border.json"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "open(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p0, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p0}, Lr5/h1;->B(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    invoke-static {v0}, Ldd/w0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p0, v0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lgd/h;->c:Lia/r;

    invoke-virtual {v0, p0}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object p0

    invoke-static {p0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object p0

    const-string v0, "rings"

    invoke-virtual {p0, v0}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p0, Lia/l;

    invoke-static {p0}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lia/e;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lia/l;

    invoke-static {v1}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v1

    iget-object v2, v1, Lia/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_0

    invoke-virtual {v1, v5}, Lia/e;->a(I)Lia/l;

    move-result-object v6

    invoke-static {v6}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v6

    invoke-virtual {v6, v4}, Lia/e;->a(I)Lia/l;

    move-result-object v6

    invoke-static {v6}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v6

    invoke-virtual {v6}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lia/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [D

    :goto_2
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lia/e;->a(I)Lia/l;

    move-result-object v6

    invoke-static {v6}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lia/e;->a(I)Lia/l;

    move-result-object v6

    invoke-static {v6}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v6

    invoke-virtual {v6}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    new-instance v1, Ldd/v0;

    invoke-direct {v1, v3, v5}, Ldd/v0;-><init>([D[D)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sput-object v0, Ldd/w0;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static g(Ljava/util/List;)Z
    .locals 6

    const-string v0, "geometry"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/GeoPoint;

    iget-wide v2, v2, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-wide v4, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v4, v5}, Ldd/w0;->b(DD)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x28

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-wide v0, v0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/GeoPoint;

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v0, v1, v2, v3}, Ldd/w0;->b(DD)Z

    move-result p0

    return p0
.end method

.method public static h(JLdd/m0;)Ljava/util/List;
    .locals 36

    move-object/from16 v0, p2

    iget-object v1, v0, Ldd/m0;->c:[F

    iget-object v2, v0, Ldd/m0;->d:[F

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Ldd/m0;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Ldd/m0;->a:Ljava/lang/Float;

    iget-object v0, v0, Ldd/m0;->b:Ljava/lang/Float;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    aget v8, v1, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v25, v8

    goto :goto_0

    :cond_0
    move-object/from16 v25, v7

    :goto_0
    const/4 v8, 0x1

    if-eqz v1, :cond_1

    aget v9, v1, v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v26, v9

    goto :goto_1

    :cond_1
    move-object/from16 v26, v7

    :goto_1
    const/4 v9, 0x2

    if-eqz v1, :cond_2

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_2

    :cond_2
    move-object/from16 v27, v7

    :goto_2
    if-eqz v2, :cond_3

    aget v1, v2, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_3

    :cond_3
    move-object/from16 v28, v7

    :goto_3
    if-eqz v2, :cond_4

    aget v1, v2, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v29, v1

    goto :goto_4

    :cond_4
    move-object/from16 v29, v7

    :goto_4
    if-eqz v2, :cond_5

    aget v1, v2, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :cond_5
    move-object/from16 v30, v7

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v5

    const-string v5, "SENS"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v24, v0

    filled-new-array/range {v3 .. v35}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
