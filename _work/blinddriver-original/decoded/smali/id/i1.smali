.class public abstract Lid/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lua/nav/routing/GeoPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lua/nav/routing/GeoPoint;

    const-wide v1, 0x40493941205bc01aL    # 50.4473

    const-wide v3, 0x403e85a1cac08312L    # 30.522

    invoke-direct {v0, v1, v2, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    sput-object v0, Lid/i1;->a:Lua/nav/routing/GeoPoint;

    return-void
.end method

.method public static a(DI)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    double-to-int p0, p0

    add-int/lit8 p2, p2, -0x1

    const-string p1, ";"

    invoke-static {p2, p1}, Lr9/r;->O(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lua/nav/routing/GeoPoint;Li9/c;Lid/h1;)Lt8/j;
    .locals 11

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lid/h1;->a:Lua/nav/routing/GeoPoint;

    iget-wide v1, p2, Lid/h1;->b:D

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/high16 p1, 0x4044000000000000L    # 40.0

    cmpl-double p1, v1, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v3, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, p0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v3 .. v10}, Ldd/s0;->a(DDDD)D

    move-result-wide p0

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v3

    const/4 p2, 0x2

    int-to-double v3, p2

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpg-double p0, p0, v3

    if-gtz p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v1, v2}, Ll9/a;->y(D)I

    move-result p0

    const/4 p1, 0x1

    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    const-string p1, "\u041f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0437\u0430 \u0432\u0438\u0448\u043a\u043e\u044e \u0437\u0432\'\u044f\u0437\u043a\u0443 (\u00b1"

    const-string p2, " \u043a\u043c)"

    invoke-static {p0, p1, p2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lt8/j;

    invoke-direct {p1, v0, p0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static c(Lua/nav/routing/GeoPoint;DLjava/lang/Double;DLjava/util/List;Ljava/lang/Long;Lid/a0;)Lid/n0;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    const-string v2, "pos"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "roads"

    move-object/from16 v3, p6

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double v4, v4, p4

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lid/a0;

    if-eqz v2, :cond_2

    iget-object v10, v15, Lid/a0;->b:Lid/f0;

    iget-boolean v10, v10, Lid/f0;->m:Z

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v24, v2

    move-object/from16 v18, v3

    move-wide/from16 v40, v7

    move-object v0, v9

    goto/16 :goto_9

    :cond_2
    :goto_2
    iget-object v10, v15, Lid/a0;->c:Ljava/util/List;

    iget-object v11, v15, Lid/a0;->e:Ljava/lang/String;

    iget-object v12, v15, Lid/a0;->b:Lid/f0;

    iget v13, v12, Lid/f0;->l:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    const/4 v4, 0x2

    const-wide v16, 0x4076800000000000L    # 360.0

    if-ge v14, v4, :cond_3

    move/from16 v24, v2

    move-object/from16 v18, v3

    const/4 v2, 0x0

    :goto_3
    move-wide/from16 v40, v7

    move-object v0, v9

    goto/16 :goto_6

    :cond_3
    iget-wide v5, v0, Lua/nav/routing/GeoPoint;->a:D

    move v4, v2

    move-object/from16 v18, v3

    iget-wide v2, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v5, v6}, Lsc/c;->c(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    const-wide v21, 0x40fb2d8000000000L    # 111320.0

    mul-double v19, v19, v21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    move-wide/from16 v21, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v0, v14, :cond_7

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v4

    move-object/from16 v4, v23

    check-cast v4, Lua/nav/routing/GeoPoint;

    move-wide/from16 v25, v5

    iget-wide v4, v4, Lua/nav/routing/GeoPoint;->b:D

    sub-double v4, v4, v21

    mul-double v4, v4, v19

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    move-wide/from16 v27, v4

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->a:D

    sub-double v3, v3, v25

    const-wide v5, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v3, v5

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-wide/from16 v29, v5

    move-object/from16 v5, v23

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-wide v5, v5, Lua/nav/routing/GeoPoint;->b:D

    sub-double v5, v5, v21

    mul-double v5, v5, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v31, v0

    move-object/from16 v0, v23

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-wide/from16 v32, v3

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    sub-double v3, v3, v25

    mul-double v3, v3, v29

    sub-double v5, v5, v27

    sub-double v3, v3, v32

    mul-double v34, v5, v5

    mul-double v36, v3, v3

    add-double v36, v36, v34

    const-wide v34, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v36, v34

    if-ltz v0, :cond_5

    mul-double v34, v27, v5

    mul-double v38, v32, v3

    move-wide/from16 v40, v7

    add-double v7, v38, v34

    neg-double v7, v7

    div-double v42, v7, v36

    const-wide/16 v44, 0x0

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v42 .. v47}, Lg6/c1;->d(DDD)D

    move-result-wide v7

    mul-double v34, v7, v5

    move-wide/from16 v36, v7

    add-double v7, v34, v27

    mul-double v27, v36, v3

    move-object v0, v9

    move-object/from16 v23, v10

    add-double v9, v27, v32

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v34

    move-wide/from16 v27, v7

    if-eqz v2, :cond_4

    iget-wide v7, v2, Lid/m0;->b:D

    cmpg-double v7, v34, v7

    if-gez v7, :cond_6

    :cond_4
    new-instance v32, Lid/m0;

    new-instance v2, Lua/nav/routing/GeoPoint;

    div-double v9, v9, v29

    add-double v9, v9, v25

    div-double v7, v27, v19

    add-double v7, v7, v21

    invoke-direct {v2, v9, v10, v7, v8}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Lsc/c;->b(D)D

    move-result-wide v3

    add-double v3, v3, v16

    rem-double v36, v3, v16

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v37}, Lid/m0;-><init>(Lua/nav/routing/GeoPoint;DD)V

    move-object/from16 v2, v32

    goto :goto_5

    :cond_5
    move-wide/from16 v40, v7

    move-object v0, v9

    move-object/from16 v23, v10

    :cond_6
    :goto_5
    add-int/lit8 v3, v31, 0x1

    move-object v9, v0

    move v0, v3

    move-object/from16 v10, v23

    move/from16 v4, v24

    move-wide/from16 v5, v25

    move-wide/from16 v7, v40

    goto/16 :goto_4

    :cond_7
    move/from16 v24, v4

    goto/16 :goto_3

    :goto_6
    if-nez v2, :cond_8

    goto/16 :goto_9

    :cond_8
    iget-wide v3, v2, Lid/m0;->b:D

    cmpl-double v5, v3, p1

    if-gtz v5, :cond_11

    iget-wide v5, v2, Lid/m0;->c:D

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    sub-double v9, v5, v9

    rem-double v9, v9, v16

    const-wide v19, 0x4080e00000000000L    # 540.0

    add-double v9, v9, v19

    rem-double v9, v9, v16

    const-wide v21, 0x4066800000000000L    # 180.0

    sub-double v9, v9, v21

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double v25, v5, v21

    rem-double v25, v25, v16

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    sub-double v27, v25, v27

    rem-double v27, v27, v16

    add-double v27, v27, v19

    rem-double v27, v27, v16

    sub-double v27, v27, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    iget-boolean v14, v15, Lid/a0;->d:Z

    if-nez v14, :cond_9

    cmpg-double v14, v16, v9

    if-gez v14, :cond_9

    move-wide/from16 v9, v16

    move-wide/from16 v5, v25

    :cond_9
    cmpl-double v14, v9, v7

    if-gtz v14, :cond_11

    goto :goto_7

    :cond_a
    const-wide/16 v9, 0x0

    :goto_7
    div-double v3, v3, p1

    const-wide v16, 0x3fe3333333333333L    # 0.6

    mul-double v9, v9, v16

    div-double/2addr v9, v7

    add-double/2addr v9, v3

    if-eqz v24, :cond_b

    const-wide v3, 0x3fb47ae147ae147bL    # 0.08

    int-to-double v7, v13

    mul-double/2addr v7, v3

    sub-double/2addr v9, v7

    :cond_b
    iget-boolean v3, v12, Lid/f0;->m:Z

    if-eqz v3, :cond_c

    if-nez v13, :cond_c

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    add-double/2addr v9, v3

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, v1, Lid/a0;->e:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lid/a0;->b:Lid/f0;

    if-ne v12, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-eqz p7, :cond_e

    iget-wide v7, v15, Lid/a0;->a:J

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v4, v7, v11

    if-eqz v4, :cond_f

    :cond_e
    if-eqz v3, :cond_10

    :cond_f
    const-wide v3, 0x3fd6666666666666L    # 0.35

    sub-double/2addr v9, v3

    :cond_10
    move-wide v7, v9

    cmpg-double v3, v7, v40

    if-gez v3, :cond_11

    new-instance v11, Lid/n0;

    iget-object v12, v2, Lid/m0;->a:Lua/nav/routing/GeoPoint;

    iget-wide v2, v2, Lid/m0;->b:D

    move-wide/from16 v16, v2

    move-wide v13, v5

    invoke-direct/range {v11 .. v17}, Lid/n0;-><init>(Lua/nav/routing/GeoPoint;DLid/a0;D)V

    move-object/from16 v0, p0

    move-object v9, v11

    move-object/from16 v3, v18

    move/from16 v2, v24

    goto/16 :goto_1

    :cond_11
    :goto_9
    move-object v9, v0

    move-object/from16 v3, v18

    move/from16 v2, v24

    move-wide/from16 v7, v40

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_12
    move-object v0, v9

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13

    const-string v0, "encoded"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const/4 v2, 0x6

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    move v7, v3

    move v8, v7

    :goto_1
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x3f

    and-int/lit8 v10, v4, 0x1f

    shl-int/2addr v10, v8

    or-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x5

    const/16 v10, 0x20

    if-ge v4, v10, :cond_3

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_0

    shr-int/lit8 v4, v7, 0x1

    not-int v4, v4

    goto :goto_2

    :cond_0
    shr-int/lit8 v4, v7, 0x1

    :goto_2
    add-int/2addr v4, v5

    move v5, v3

    move v7, v5

    :goto_3
    add-int/lit8 v8, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x3f

    and-int/lit8 v11, v9, 0x1f

    shl-int/2addr v11, v7

    or-int/2addr v5, v11

    add-int/lit8 v7, v7, 0x5

    if-ge v9, v10, :cond_2

    and-int/lit8 v7, v5, 0x1

    shr-int/lit8 v5, v5, 0x1

    if-eqz v7, :cond_1

    not-int v5, v5

    :cond_1
    add-int/2addr v6, v5

    new-instance v5, Lua/nav/routing/GeoPoint;

    int-to-double v9, v4

    div-double/2addr v9, v0

    int-to-double v11, v6

    div-double/2addr v11, v0

    invoke-direct {v5, v9, v10, v11, v12}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v4

    move v4, v8

    goto :goto_0

    :cond_2
    move v9, v8

    goto :goto_3

    :cond_3
    move v4, v9

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, " \u043d\u0430 "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " onto "

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lua/nav/routing/GeoPoint;Li9/c;Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)Lt8/j;
    .locals 1

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lt8/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lt8/j;

    const-string p1, "\u041e\u0441\u0442\u0430\u043d\u043d\u0454 \u0432\u0456\u0434\u043e\u043c\u0435 \u043c\u0456\u0441\u0446\u0435 (GPS \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438)"

    invoke-direct {p0, p2, p1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p1, p3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lt8/j;

    const-string p1, "\u041e\u0441\u0442\u0430\u043d\u043d\u0454 \u043c\u0456\u0441\u0446\u0435 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f (GPS \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438)"

    invoke-direct {p0, p3, p1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lt8/j;

    sget-object p1, Lid/i1;->a:Lua/nav/routing/GeoPoint;

    const-string p2, "\u0425\u0440\u0435\u0449\u0430\u0442\u0438\u043a, \u041a\u0438\u0457\u0432 (GPS \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438)"

    invoke-direct {p0, p1, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "type"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v2

    const-string v4, "exit rotary"

    const-string v5, "arrive"

    const-string v6, "on ramp"

    const-string v7, "depart"

    const-string v11, "roundabout turn"

    const-string v12, "rotary"

    const-string v13, "off ramp"

    const-string v8, "continue"

    const-string v9, "roundabout"

    const-string v10, "fork"

    const-string v14, "turn"

    const-string v15, "merge"

    move/from16 v16, v2

    const-string v2, "notification"

    const-string v3, "exit roundabout"

    move-object/from16 v17, v4

    const-string v4, "end of road"

    move-object/from16 v18, v5

    const-string v5, "new name"

    move-object/from16 v19, v6

    const-string v6, "sharp right"

    move-object/from16 v20, v7

    const-string v7, "sharp left"

    move-object/from16 v21, v11

    const-string v11, "slight left"

    move-object/from16 v22, v12

    const-string v12, "slight right"

    move-object/from16 v23, v13

    const-string v13, " "

    move-object/from16 v24, v13

    const-string v13, "straight"

    move-object/from16 v25, v8

    const-string v8, "right"

    move-object/from16 v26, v9

    const-string v9, "left"

    move-object/from16 v27, v10

    const-string v10, "uturn"

    move-object/from16 v28, v14

    const-string v14, ""

    if-eqz v16, :cond_23

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v13

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "around"

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, v8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v9

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const-string v6, "slightly left"

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const-string v6, "slightly right"

    goto :goto_1

    :cond_7
    :goto_0
    move-object v6, v14

    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    move/from16 v16, v7

    const-string v7, "Turn "

    move-object/from16 v29, v8

    const-string v8, "Continue"

    sparse-switch v16, :sswitch_data_1

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :sswitch_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_5

    :sswitch_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Merge "

    invoke-static {v1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_d
    move-object/from16 v2, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :sswitch_e
    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keep "

    const-string v2, " at the fork"

    invoke-static {v1, v6, v2, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_f
    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_5

    :sswitch_10
    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :cond_c
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x782f53c1

    if-eq v0, v2, :cond_12

    const v2, -0x2d2d9a7c

    if-eq v0, v2, :cond_11

    if-eqz v0, :cond_10

    const v2, 0x6a73e72

    if-eq v0, v2, :cond_e

    const v2, 0x6a8aaafa

    if-eq v0, v2, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2

    :cond_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Make a U-turn"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2

    :cond_11
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2

    :cond_12
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_2
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bear "

    invoke-static {v1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue straight"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_11
    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_5

    :sswitch_12
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_5

    :sswitch_13
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz p3, :cond_1a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "th"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_16
    const-string v0, "3rd"

    goto :goto_3

    :cond_17
    const-string v0, "2nd"

    goto :goto_3

    :cond_18
    const-string v0, "1st"

    :goto_3
    const-string v1, " and take the "

    const-string v2, " exit"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_4

    :cond_19
    move-object v14, v0

    :cond_1a
    :goto_4
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter the roundabout"

    invoke-static {v1, v14, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_14
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object/from16 v8, v24

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_1c
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Head out"

    invoke-static {v1, v14, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_15
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_5

    :cond_1d
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Take the ramp "

    invoke-static {v1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_16
    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_5

    :cond_1e
    invoke-static {v1, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "You have arrived, your destination is on the left"

    return-object v0

    :cond_1f
    move-object/from16 v0, v29

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "You have arrived, your destination is on the right"

    return-object v0

    :cond_20
    const-string v0, "You have arrived at your destination"

    return-object v0

    :sswitch_17
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_21
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-static/range {p2 .. p2}, Lid/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit the roundabout"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    move-object/from16 v16, v14

    move-object/from16 v30, v17

    move-object/from16 v31, v18

    move-object/from16 v32, v19

    move-object/from16 v33, v20

    const-string v14, "\u043f\u0440\u044f\u043c\u043e"

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_2

    goto :goto_6

    :sswitch_18
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_6

    :cond_24
    move-object v6, v14

    goto :goto_7

    :sswitch_19
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_6

    :cond_25
    const-string v6, "\u0440\u043e\u0437\u0432\u043e\u0440\u043e\u0442"

    goto :goto_7

    :sswitch_1a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_6

    :cond_26
    const-string v6, "\u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :sswitch_1b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_6

    :cond_27
    const-string v6, "\u043b\u0456\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :sswitch_1c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_6

    :cond_28
    const-string v6, "\u0440\u0456\u0437\u043a\u043e \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :sswitch_1d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_6

    :cond_29
    const-string v6, "\u0442\u0440\u043e\u0445\u0438 \u043b\u0456\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :sswitch_1e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_6

    :cond_2a
    const-string v6, "\u0440\u0456\u0437\u043a\u043e \u043b\u0456\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :sswitch_1f
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_6

    :cond_2b
    const-string v6, "\u0442\u0440\u043e\u0445\u0438 \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447"

    goto :goto_7

    :cond_2c
    :goto_6
    move-object/from16 v6, v16

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v11, "\u0417\'\u0457\u0437\u0434 "

    const-string v12, "\u041f\u043e\u0432\u0435\u0440\u043d\u0456\u0442\u044c "

    move/from16 v17, v7

    const-string v7, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0439\u0442\u0435"

    sparse-switch v17, :sswitch_data_3

    goto/16 :goto_e

    :sswitch_20
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_e

    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_e

    :sswitch_22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_e

    :sswitch_23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_e

    :cond_2d
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_24
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_e

    :cond_2e
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0435\u0440\u0435\u0441\u0442\u0440\u043e\u0439\u0442\u0435\u0441\u044c "

    invoke-static {v1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_25
    move-object/from16 v2, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_e

    :sswitch_26
    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_e

    :cond_2f
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041d\u0430 \u0440\u043e\u0437\u0432\u0438\u043b\u0446\u0456 \u0442\u0440\u0438\u043c\u0430\u0439\u0442\u0435\u0441\u044c "

    invoke-static {v1, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_27
    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_e

    :cond_30
    move-object/from16 v2, v16

    goto/16 :goto_9

    :sswitch_28
    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_e

    :cond_31
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eqz v0, :cond_34

    const v2, 0x6a73e72

    if-eq v0, v2, :cond_33

    const v2, 0x6a8aaafa

    if-eq v0, v2, :cond_32

    goto :goto_8

    :cond_32
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_8

    :cond_33
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0420\u043e\u0437\u0432\u0435\u0440\u043d\u0456\u0442\u044c\u0441\u044f"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_35
    :goto_8
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0439\u0442\u0435 \u043f\u0440\u044f\u043c\u043e"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_29
    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_e

    :cond_37
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2a
    move-object/from16 v2, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_e

    :sswitch_2b
    move-object/from16 v2, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_e

    :cond_38
    :goto_9
    if-eqz p3, :cond_3f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-\u0439"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_39
    const-string v0, "\u043f\'\u044f\u0442\u0438\u0439"

    goto :goto_a

    :cond_3a
    const-string v0, "\u0447\u0435\u0442\u0432\u0435\u0440\u0442\u0438\u0439"

    goto :goto_a

    :cond_3b
    const-string v0, "\u0442\u0440\u0435\u0442\u0456\u0439"

    goto :goto_a

    :cond_3c
    const-string v0, "\u0434\u0440\u0443\u0433\u0438\u0439"

    goto :goto_a

    :cond_3d
    const-string v0, "\u043f\u0435\u0440\u0448\u0438\u0439"

    :goto_a
    const-string v1, " \u0437\'\u0457\u0437\u0434"

    move-object/from16 v8, v24

    invoke-static {v8, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_b

    :cond_3e
    move-object v14, v0

    goto :goto_c

    :cond_3f
    :goto_b
    move-object v14, v2

    :goto_c
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041d\u0430 \u043a\u0456\u043b\u044c\u0446\u0456"

    invoke-static {v1, v14, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2c
    move-object/from16 v2, v16

    move-object/from16 v8, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_e

    :cond_40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {v6, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    :cond_41
    move-object v14, v2

    :goto_d
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0420\u0443\u0448\u0430\u0439\u0442\u0435"

    invoke-static {v1, v14, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2d
    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_e

    :cond_42
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2e
    move-object/from16 v2, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_e

    :cond_43
    invoke-static {v1, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438, \u043f\u0443\u043d\u043a\u0442 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043b\u0456\u0432\u043e\u0440\u0443\u0447"

    return-object v0

    :cond_44
    invoke-static {v1, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438, \u043f\u0443\u043d\u043a\u0442 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447"

    return-object v0

    :cond_45
    const-string v0, "\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438 \u0434\u043e \u043f\u0443\u043d\u043a\u0442\u0443 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f"

    return-object v0

    :sswitch_2f
    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    :goto_e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_46

    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_46
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_47
    invoke-static/range {p2 .. p2}, Lid/i1;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0412\u0438\u0457\u0436\u0434\u0436\u0430\u0439\u0442\u0435 \u0437 \u043a\u0456\u043b\u044c\u0446\u044f"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x782f53c1 -> :sswitch_7
        -0x5b485d83 -> :sswitch_6
        -0x2d2d9a7c -> :sswitch_5
        -0xd6cf19a -> :sswitch_4
        0x32a007 -> :sswitch_3
        0x677c21c -> :sswitch_2
        0x6a73e72 -> :sswitch_1
        0x6a8aaafa -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x779c518d -> :sswitch_17
        -0x53fe0929 -> :sswitch_16
        -0x527efe4d -> :sswitch_15
        -0x4f97b80c -> :sswitch_14
        -0x41c5eac2 -> :sswitch_13
        -0x372522cf -> :sswitch_12
        -0x319b63dd -> :sswitch_11
        -0x21ced359 -> :sswitch_10
        -0x89ec541 -> :sswitch_f
        0x300cc2 -> :sswitch_e
        0x36807d -> :sswitch_d
        0x62fa438 -> :sswitch_c
        0x237a88eb -> :sswitch_b
        0x37bb9b01 -> :sswitch_a
        0x3c848984 -> :sswitch_9
        0x4e9dc50b -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x782f53c1 -> :sswitch_1f
        -0x5b485d83 -> :sswitch_1e
        -0x2d2d9a7c -> :sswitch_1d
        -0xd6cf19a -> :sswitch_1c
        0x32a007 -> :sswitch_1b
        0x677c21c -> :sswitch_1a
        0x6a73e72 -> :sswitch_19
        0x6a8aaafa -> :sswitch_18
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x779c518d -> :sswitch_2f
        -0x53fe0929 -> :sswitch_2e
        -0x527efe4d -> :sswitch_2d
        -0x4f97b80c -> :sswitch_2c
        -0x41c5eac2 -> :sswitch_2b
        -0x372522cf -> :sswitch_2a
        -0x319b63dd -> :sswitch_29
        -0x21ced359 -> :sswitch_28
        -0x89ec541 -> :sswitch_27
        0x300cc2 -> :sswitch_26
        0x36807d -> :sswitch_25
        0x62fa438 -> :sswitch_24
        0x237a88eb -> :sswitch_23
        0x37bb9b01 -> :sswitch_22
        0x3c848984 -> :sswitch_21
        0x4e9dc50b -> :sswitch_20
    .end sparse-switch
.end method

.method public static final i(Ljava/util/Map;Ljava/lang/String;D)Ljava/util/ArrayList;
    .locals 3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v1}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Number;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    cmpg-double v1, v1, p2

    if-gez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p1
.end method
