.class public final Lad/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/u1;


# instance fields
.field public final a:Lua/nav/routing/Route;

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/u1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/x1;->Companion:Lad/u1;

    return-void
.end method

.method public constructor <init>(Lua/nav/routing/Route;)V
    .locals 1

    const-string v0, "route"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/x1;->a:Lua/nav/routing/Route;

    return-void
.end method

.method public static e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_0

    const-wide v2, 0x406f400000000000L    # 250.0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    :goto_0
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_1

    const-wide v4, 0x40a3880000000000L    # 2500.0

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p4

    :goto_1
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_2

    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p6

    :goto_2
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p8

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "p"

    invoke-static {v1, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v11, v10, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_6

    new-instance v0, Lad/w1;

    sget-object v2, Lad/x1;->Companion:Lad/u1;

    invoke-static {v11}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_4

    move-object v3, v1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v4, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v8, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v12, v3, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v12

    invoke-static/range {p2 .. p9}, Ldd/s0;->a(DDDD)D

    move-result-wide v2

    invoke-static {v11}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_4
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 p0, v0

    move-object/from16 p6, v1

    move-wide/from16 p3, v2

    move-wide/from16 p1, v4

    move/from16 p5, v6

    invoke-direct/range {p0 .. p6}, Lad/w1;-><init>(DDILua/nav/routing/GeoPoint;)V

    return-object v0

    :cond_6
    invoke-virtual {v10}, Lua/nav/routing/Route;->b()[D

    move-result-object v10

    iget-wide v14, v0, Lad/x1;->b:D

    sub-double/2addr v14, v2

    invoke-virtual {v0, v14, v15}, Lad/x1;->c(D)I

    move-result v12

    iget-wide v14, v0, Lad/x1;->b:D

    add-double/2addr v14, v4

    invoke-virtual {v0, v14, v15}, Lad/x1;->c(D)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p5, v4

    move-object/from16 p7, v5

    move-object/from16 p6, v10

    move/from16 p4, v12

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v0

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v1, p6

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    if-eqz v8, :cond_7

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p6, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p7, v8

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v1

    move-object/from16 v4, p2

    move-object/from16 v8, p6

    move-object/from16 v5, p7

    iget-wide v9, v1, Lad/w1;->b:D

    cmpg-double v9, v9, v14

    if-gtz v9, :cond_8

    const/4 v0, 0x1

    move-object/from16 v20, v1

    move v1, v0

    move-object/from16 v0, v20

    goto :goto_5

    :cond_7
    move/from16 p4, v4

    move-object v5, v8

    move-object/from16 v4, p0

    move-object v8, v1

    :cond_8
    const/4 v1, 0x0

    :goto_5
    iget-wide v9, v0, Lad/w1;->a:D

    move/from16 p8, v13

    move-wide/from16 v16, v14

    iget-wide v13, v4, Lad/x1;->b:D

    const-wide v18, 0x4072c00000000000L    # 300.0

    add-double v13, v13, v18

    cmpl-double v9, v9, v13

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    if-lez v9, :cond_c

    invoke-virtual {v4, v13, v14}, Lad/x1;->c(D)I

    move-result v9

    if-eqz v5, :cond_9

    move-object/from16 p3, p1

    move-object/from16 p2, v4

    move-object/from16 p7, v5

    move-object/from16 p6, v8

    move/from16 p5, v9

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v9

    move/from16 v10, p5

    :goto_6
    move/from16 v4, p4

    goto :goto_7

    :cond_9
    move v10, v9

    const/4 v9, 0x0

    goto :goto_6

    :goto_7
    if-eqz v9, :cond_b

    iget-wide v12, v9, Lad/w1;->b:D

    cmpl-double v12, v12, v16

    if-lez v12, :cond_a

    goto :goto_8

    :cond_a
    move v10, v4

    move-object/from16 v4, p0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v9, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v4

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p5, v10

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v9

    move-object/from16 v4, p2

    move/from16 v10, p4

    :goto_9
    iget-wide v12, v9, Lad/w1;->b:D

    iget-wide v14, v0, Lad/w1;->b:D

    add-double v14, v14, v18

    cmpg-double v14, v12, v14

    if-gtz v14, :cond_d

    cmpg-double v12, v12, v6

    if-gtz v12, :cond_d

    move-object v0, v9

    goto :goto_a

    :cond_c
    move/from16 v10, p4

    :cond_d
    :goto_a
    if-eqz v5, :cond_e

    if-nez v1, :cond_e

    iget-wide v12, v4, Lad/x1;->b:D

    cmpl-double v1, v12, v2

    if-lez v1, :cond_e

    const-wide v1, 0x4092c00000000000L    # 1200.0

    sub-double/2addr v12, v1

    invoke-virtual {v4, v12, v13}, Lad/x1;->c(D)I

    move-result v1

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p2, v4

    move-object/from16 p7, v5

    move-object/from16 p6, v8

    move/from16 p5, v10

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v1

    iget-wide v2, v1, Lad/w1;->b:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_e

    iget-wide v4, v0, Lad/w1;->b:D

    add-double v4, v4, v18

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_e

    move-object v0, v1

    :cond_e
    iget-wide v1, v0, Lad/w1;->b:D

    cmpl-double v3, v1, v6

    if-lez v3, :cond_f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p5, v3

    move-object/from16 p7, v4

    move/from16 p4, v5

    move-object/from16 p6, v8

    invoke-virtual/range {p2 .. p7}, Lad/x1;->f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;

    move-result-object v3

    iget-wide v4, v3, Lad/w1;->b:D

    cmpg-double v1, v4, v1

    if-gez v1, :cond_f

    return-object v3

    :cond_f
    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    iget-wide v0, p0, Lad/x1;->b:D

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lad/x1;->g(D)V

    return-void
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lad/x1;->b:D

    return-wide v0
.end method

.method public final c(D)I
    .locals 5

    iget-object p0, p0, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {p0}, Lua/nav/routing/Route;->b()[D

    move-result-object v0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lua/nav/routing/Route;->c()D

    move-result-wide v3

    cmpl-double p0, p1, v3

    if-ltz p0, :cond_2

    array-length p0, v0

    add-int/lit8 p0, p0, -0x2

    if-gez p0, :cond_1

    return v2

    :cond_1
    return p0

    :cond_2
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    add-int/lit8 v1, p0, -0x1

    if-ge v2, v1, :cond_4

    add-int v1, v2, p0

    div-int/lit8 v1, v1, 0x2

    aget-wide v3, v0, v1

    cmpg-double v3, v3, p1

    if-gtz v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move p0, v1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final d(D)Lad/v1;
    .locals 14

    iget-object v0, p0, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v1, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {v0}, Lua/nav/routing/Route;->b()[D

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_1

    new-instance p0, Lad/v1;

    invoke-static {v1}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    if-nez v0, :cond_0

    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-direct {v0, v4, v5, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lad/v1;-><init>(Lua/nav/routing/GeoPoint;FI)V

    return-object p0

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lad/x1;->c(D)I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/GeoPoint;

    add-int/lit8 v3, p0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    aget-wide v6, v0, v3

    aget-wide v8, v0, p0

    sub-double/2addr v6, v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v6, v10

    if-gez v0, :cond_2

    :goto_0
    move-wide v10, v4

    goto :goto_1

    :cond_2
    sub-double v3, p1, v8

    div-double v8, v3, v6

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v8 .. v13}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    goto :goto_0

    :goto_1
    new-instance v0, Lua/nav/routing/GeoPoint;

    iget-wide v8, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    move-wide v12, v8

    invoke-static/range {v6 .. v13}, Lm/a;->b(DDDD)D

    move-result-wide v3

    iget-wide v8, v2, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->b:D

    move-wide v12, v8

    invoke-static/range {v6 .. v13}, Lm/a;->b(DDDD)D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    new-instance v3, Lad/v1;

    sget-object v4, Lad/x1;->Companion:Lad/u1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lad/u1;->a(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)F

    move-result v1

    invoke-direct {v3, v0, v1, p0}, Lad/v1;-><init>(Lua/nav/routing/GeoPoint;FI)V

    return-object v3
.end method

.method public final f(Lua/nav/routing/GeoPoint;II[DLjava/lang/Double;)Lad/w1;
    .locals 38

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v2, v2, Lua/nav/routing/Route;->e:Ljava/util/List;

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v3, v4}, Lsc/c;->c(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide v5, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    iget-wide v7, v7, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v5, v7

    mul-double/2addr v5, v3

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-wide v9, v0, Lua/nav/routing/GeoPoint;->a:D

    sub-double/2addr v7, v9

    const-wide v9, 0x40fafcc000000000L    # 110540.0

    mul-double/2addr v7, v9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    move/from16 v12, p3

    if-le v12, v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-gt v1, v11, :cond_5

    move-wide/from16 p0, v9

    const-wide/16 v16, 0x0

    move v9, v1

    move v10, v9

    :goto_1
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Lua/nav/routing/GeoPoint;

    iget-wide v14, v14, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p3, v0

    move-object/from16 v0, v18

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v14, v3

    mul-double v14, v14, v19

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    sub-double v3, v21, v3

    mul-double v3, v3, p0

    add-int/lit8 v0, v9, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v21, v3

    move-object/from16 v3, v18

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v23, v3

    move-object/from16 v3, v18

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v3, v3, Lua/nav/routing/GeoPoint;->b:D

    sub-double v3, v23, v3

    mul-double v3, v3, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-wide/from16 v24, v3

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;

    move-wide/from16 v26, v3

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->a:D

    sub-double v3, v26, v3

    mul-double v3, v3, p0

    move-wide/from16 v26, v3

    sub-double v3, v24, v14

    move-wide/from16 v24, v5

    sub-double v5, v26, v21

    mul-double v26, v3, v3

    mul-double v28, v5, v5

    add-double v28, v28, v26

    if-eqz p5, :cond_1

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v28, v26

    if-lez v0, :cond_1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lsc/c;->b(D)D

    move-result-wide v26

    const-wide v30, 0x4076800000000000L    # 360.0

    add-double v26, v26, v30

    rem-double v26, v26, v30

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    sub-double v26, v26, v32

    rem-double v26, v26, v30

    const-wide v32, 0x4080e00000000000L    # 540.0

    add-double v26, v26, v32

    rem-double v26, v26, v30

    const-wide v30, 0x4066800000000000L    # 180.0

    sub-double v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    cmpl-double v0, v26, v30

    if-gtz v0, :cond_3

    :cond_1
    const-wide v26, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v28, v26

    if-gez v0, :cond_2

    const-wide/16 v32, 0x0

    goto :goto_2

    :cond_2
    sub-double v26, v24, v14

    mul-double v26, v26, v3

    sub-double v30, v7, v21

    mul-double v30, v30, v5

    add-double v30, v30, v26

    div-double v32, v30, v28

    const-wide/16 v34, 0x0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v32 .. v37}, Lg6/c1;->d(DDD)D

    move-result-wide v26

    move-wide/from16 v32, v26

    :goto_2
    mul-double v3, v3, v32

    add-double/2addr v3, v14

    mul-double v5, v5, v32

    add-double v5, v5, v21

    sub-double v14, v24, v3

    mul-double/2addr v14, v14

    sub-double v21, v7, v5

    mul-double v21, v21, v21

    add-double v21, v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    cmpg-double v0, v14, v12

    if-gez v0, :cond_3

    aget-wide v30, p4, v9

    aget-wide v28, p4, v23

    move-wide/from16 v34, v30

    invoke-static/range {v28 .. v35}, Lm/a;->b(DDDD)D

    move-result-wide v16

    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/GeoPoint;

    iget-wide v12, v10, Lua/nav/routing/GeoPoint;->a:D

    div-double v5, v5, p0

    add-double/2addr v5, v12

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/GeoPoint;

    iget-wide v12, v10, Lua/nav/routing/GeoPoint;->b:D

    div-double v3, v3, v19

    add-double/2addr v3, v12

    invoke-direct {v0, v5, v6, v3, v4}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move v10, v9

    move-wide v12, v14

    goto :goto_3

    :cond_3
    move-object/from16 v0, p3

    :goto_3
    if-eq v9, v11, :cond_4

    move-wide/from16 v3, v19

    move/from16 v9, v23

    move-wide/from16 v5, v24

    goto/16 :goto_1

    :cond_4
    move/from16 v31, v10

    move-wide/from16 v27, v16

    :goto_4
    move-object/from16 v32, v0

    move-wide/from16 v29, v12

    goto :goto_5

    :cond_5
    move/from16 v31, v1

    const-wide/16 v27, 0x0

    goto :goto_4

    :goto_5
    new-instance v26, Lad/w1;

    invoke-direct/range {v26 .. v32}, Lad/w1;-><init>(DDILua/nav/routing/GeoPoint;)V

    return-object v26
.end method

.method public final g(D)V
    .locals 7

    iget-object v0, p0, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lg6/c1;->d(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lad/x1;->b:D

    return-void
.end method

.method public final h(I)D
    .locals 2

    iget-object p0, p0, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {p0}, Lua/nav/routing/Route;->b()[D

    move-result-object v0

    iget-object v1, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/routing/Step;

    iget p1, p1, Lua/nav/routing/Step;->h:I

    iget-object p0, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lg6/c1;->f(III)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method
