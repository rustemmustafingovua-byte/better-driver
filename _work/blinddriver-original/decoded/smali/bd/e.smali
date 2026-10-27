.class public final Lbd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Companion:Lbd/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbd/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbd/e;->Companion:Lbd/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/e;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbd/j;

    sget-object v4, Lbd/e;->Companion:Lbd/b;

    iget-wide v5, v3, Lbd/j;->a:D

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lbd/b;->a(D)I

    move-result v4

    iget-wide v5, v3, Lbd/j;->b:D

    invoke-static {v5, v6}, Lbd/b;->a(D)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    xor-long v3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lbd/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lbd/e;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Lbd/e;DDDD)Ljava/util/ArrayList;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lbd/e;->Companion:Lbd/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lbd/b;->a(D)I

    move-result v1

    invoke-static/range {p5 .. p6}, Lbd/b;->a(D)I

    move-result v2

    if-gt v1, v2, :cond_4

    :goto_0
    sget-object v3, Lbd/e;->Companion:Lbd/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p3 .. p4}, Lbd/b;->a(D)I

    move-result v3

    invoke-static/range {p7 .. p8}, Lbd/b;->a(D)I

    move-result v4

    if-gt v3, v4, :cond_3

    :goto_1
    iget-object v5, p0, Lbd/e;->b:Ljava/util/HashMap;

    sget-object v6, Lbd/e;->Companion:Lbd/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v6, v1

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    iget-object v9, p0, Lbd/e;->a:Ljava/lang/Object;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbd/j;

    iget-wide v9, v8, Lbd/j;->a:D

    cmpg-double v11, p1, v9

    if-gtz v11, :cond_1

    cmpg-double v9, v9, p5

    if-gtz v9, :cond_1

    iget-wide v9, v8, Lbd/j;->b:D

    cmpg-double v11, p3, v9

    if-gtz v11, :cond_1

    cmpg-double v9, v9, p7

    if-gtz v9, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0xfa0

    if-lt v8, v9, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eq v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static b(Lbd/e;Ljava/util/List;[D)Ljava/util/List;
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "geometry"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lbd/e;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_c

    array-length v4, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_a

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/GeoPoint;

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/routing/GeoPoint;

    iget-wide v13, v10, Lua/nav/routing/GeoPoint;->a:D

    move/from16 v16, v9

    iget-wide v8, v10, Lua/nav/routing/GeoPoint;->b:D

    move-object/from16 v17, v6

    iget-wide v5, v12, Lua/nav/routing/GeoPoint;->a:D

    move/from16 v18, v11

    iget-wide v10, v12, Lua/nav/routing/GeoPoint;->b:D

    add-double v20, v13, v5

    const/4 v12, 0x2

    int-to-double v1, v12

    div-double v20, v20, v1

    invoke-static/range {v20 .. v21}, Lsc/c;->c(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide v19, 0x40fb2d8000000000L    # 111320.0

    mul-double v1, v1, v19

    const-wide/high16 v19, 0x4034000000000000L    # 20.0

    div-double v21, v19, v1

    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    mul-double v21, v21, v23

    sget-object v23, Lbd/e;->Companion:Lbd/b;

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    const-wide v26, 0x3f31c940856563e8L    # 2.7139497014655326E-4

    sub-double v24, v24, v26

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v24 .. v25}, Lbd/b;->a(D)I

    move-result v12

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Lbd/b;->a(D)I

    move-result v15

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    sub-double v24, v24, v21

    move-wide/from16 v27, v1

    invoke-static/range {v24 .. v25}, Lbd/b;->a(D)I

    move-result v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    add-double v24, v24, v21

    invoke-static/range {v24 .. v25}, Lbd/b;->a(D)I

    move-result v2

    aget-wide v21, p2, v18

    aget-wide v24, p2, v16

    sub-double v21, v21, v24

    if-gt v12, v15, :cond_8

    :goto_1
    move/from16 v24, v1

    move-wide/from16 v29, v5

    if-gt v1, v2, :cond_6

    :goto_2
    iget-object v5, v0, Lbd/e;->b:Ljava/util/HashMap;

    sget-object v6, Lbd/e;->Companion:Lbd/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v25, v7

    int-to-long v6, v12

    const/16 v31, 0x20

    shl-long v6, v6, v31

    move-wide/from16 v31, v6

    int-to-long v6, v1

    const-wide v33, 0xffffffffL

    and-long v6, v6, v33

    xor-long v6, v31, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-nez v5, :cond_2

    :cond_1
    move-wide/from16 v34, v8

    move-object/from16 v6, v17

    goto/16 :goto_7

    :cond_2
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_1

    aget v0, v5, v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    move/from16 v32, v0

    move-object/from16 v0, v31

    check-cast v0, Lbd/j;

    move-object/from16 v31, v5

    move/from16 v33, v6

    iget-wide v5, v0, Lbd/j;->b:D

    sub-double v34, v8, v5

    move-wide/from16 v36, v5

    mul-double v5, v34, v27

    move-wide/from16 v34, v8

    move v9, v7

    iget-wide v7, v0, Lbd/j;->a:D

    sub-double v38, v13, v7

    const-wide v40, 0x40fafcc000000000L    # 110540.0

    mul-double v38, v38, v40

    sub-double v36, v10, v36

    mul-double v36, v36, v27

    sub-double v7, v29, v7

    mul-double v7, v7, v40

    sub-double v36, v36, v5

    sub-double v7, v7, v38

    mul-double v40, v36, v36

    mul-double v42, v7, v7

    add-double v42, v42, v40

    const-wide v40, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v42, v40

    if-gez v0, :cond_3

    const-wide/16 v40, 0x0

    move-wide/from16 v50, v40

    move-wide/from16 v40, v7

    move-wide/from16 v7, v50

    goto :goto_4

    :cond_3
    move-wide/from16 v40, v7

    neg-double v7, v5

    mul-double v7, v7, v36

    mul-double v44, v38, v40

    sub-double v7, v7, v44

    div-double v44, v7, v42

    const-wide/16 v46, 0x0

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v44 .. v49}, Lg6/c1;->d(DDD)D

    move-result-wide v7

    :goto_4
    mul-double v36, v36, v7

    add-double v36, v36, v5

    mul-double v5, v7, v40

    add-double v5, v5, v38

    mul-double v36, v36, v36

    mul-double/2addr v5, v5

    add-double v5, v5, v36

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    cmpg-double v0, v5, v19

    if-gtz v0, :cond_5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v36

    goto :goto_5

    :cond_4
    const-wide v36, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_5
    cmpg-double v0, v5, v36

    if-gez v0, :cond_5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-wide v5, p2, v16

    mul-double v7, v7, v21

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v6, v17

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object/from16 v6, v17

    :goto_6
    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move-object/from16 v5, v31

    move/from16 v6, v33

    move-wide/from16 v8, v34

    goto/16 :goto_3

    :goto_7
    if-eq v1, v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move/from16 v7, v25

    move-wide/from16 v8, v34

    goto/16 :goto_2

    :cond_6
    move/from16 v25, v7

    move-wide/from16 v34, v8

    move-object/from16 v6, v17

    :cond_7
    if-eq v12, v15, :cond_9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move/from16 v1, v24

    move/from16 v7, v25

    move-wide/from16 v5, v29

    move-wide/from16 v8, v34

    goto/16 :goto_1

    :cond_8
    move/from16 v25, v7

    move-object/from16 v6, v17

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, v18

    move/from16 v7, v25

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v4, Lbd/c;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbd/j;

    invoke-static {v2, v6}, Lu8/v;->I(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v7, v8}, Lbd/c;-><init>(Lbd/j;D)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    new-instance v0, Lbd/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lbd/d;-><init>(I)V

    invoke-static {v1, v0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_9
    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0
.end method
