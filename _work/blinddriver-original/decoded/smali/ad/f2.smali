.class public final Lad/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/c2;

.field public static final k:[D


# instance fields
.field public final a:Lqd/u;

.field public final b:Lu8/k;

.field public final c:Lu8/k;

.field public d:J

.field public e:I

.field public f:I

.field public g:Lad/d2;

.field public h:Lua/nav/Tuning;

.field public i:J

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/c2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/f2;->Companion:Lad/c2;

    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lad/f2;->k:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff2666666666666L    # 1.15
        0x3ff4cccccccccccdL    # 1.3
        0x3ff8000000000000L    # 1.5
        0x3ffc000000000000L    # 1.75
        0x4000000000000000L    # 2.0
        0x4004000000000000L    # 2.5
        0x4008000000000000L    # 3.0
    .end array-data
.end method

.method public constructor <init>(Lqd/u;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/f2;->a:Lqd/u;

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Lad/f2;->b:Lu8/k;

    new-instance v1, Lu8/k;

    invoke-direct {v1}, Lu8/k;-><init>()V

    iput-object v1, p0, Lad/f2;->c:Lu8/k;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lad/f2;->d:J

    const v4, 0x3fffffff    # 1.9999999f

    iput v4, p0, Lad/f2;->f:I

    iget-object p1, p1, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v4, "stop_samples_s"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v0}, Lad/f2;->b(Ljava/lang/String;Lu8/k;)V

    :cond_0
    const-string v0, "stop_samples_m"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Lad/f2;->b(Ljava/lang/String;Lu8/k;)V

    :cond_1
    iput-wide v2, p0, Lad/f2;->i:J

    return-void
.end method

.method public static b(Ljava/lang/String;Lu8/k;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x3b

    aput-char v3, v1, v2

    invoke-static {p0, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v0, [C

    const/16 v4, 0x2c

    aput-char v4, v3, v2

    invoke-static {v1, v3}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lr9/q;->J(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lr9/q;->J(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v5, Lad/e2;

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lr9/q;->J(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_1
    invoke-direct {v5, v3, v4, v1}, Lad/e2;-><init>(FFF)V

    invoke-virtual {p1, v5}, Lu8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_2
    iget p0, p1, Lu8/k;->n:I

    const/16 v0, 0xfa0

    if-le p0, v0, :cond_3

    invoke-virtual {p1}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static e(Ljava/util/Collection;DDDD)D
    .locals 7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/e2;

    iget v3, v1, Lad/e2;->b:F

    iget v4, v1, Lad/e2;->c:F

    iget v1, v1, Lad/e2;->a:F

    float-to-double v5, v3

    cmpg-double v3, v5, p3

    if-gez v3, :cond_3

    float-to-double v5, v1

    cmpg-double v3, v5, p1

    if-ltz v3, :cond_4

    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    float-to-double v3, v4

    cmpg-double v3, v3, p5

    if-gez v3, :cond_2

    float-to-double v3, v1

    cmpg-double v1, v3, p7

    if-gez v1, :cond_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lg5/f;->O()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_1
    int-to-double p1, v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    int-to-double p3, p0

    div-double/2addr p1, p3

    return-wide p1
.end method


# virtual methods
.method public final a(Lua/nav/Tuning;)Lua/nav/Tuning;
    .locals 83

    move-object/from16 v1, p1

    const-string v0, "t"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lua/nav/Tuning;->a:Ljava/lang/String;

    const-string v2, "default"

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lad/f2;->c(Lua/nav/Tuning;)Lad/d2;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-wide v7, v0, Lad/d2;->a:D

    iget-wide v9, v0, Lad/d2;->b:D

    iget-wide v11, v0, Lad/d2;->c:D

    const/16 v81, -0x39

    const/16 v82, 0x3fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lua/nav/Tuning;)Lad/d2;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "t"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v1, Lua/nav/Tuning;->f:D

    iget-wide v4, v1, Lua/nav/Tuning;->e:D

    iget-wide v6, v1, Lua/nav/Tuning;->d:D

    iget-object v8, v0, Lad/f2;->b:Lu8/k;

    iget v8, v8, Lu8/k;->n:I

    const/16 v9, 0xf0

    if-lt v8, v9, :cond_7

    iget-object v8, v0, Lad/f2;->c:Lu8/k;

    iget v8, v8, Lu8/k;->n:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_7

    iget-object v8, v0, Lad/f2;->g:Lad/d2;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lad/f2;->h:Lua/nav/Tuning;

    invoke-static {v8, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v0, Lad/f2;->f:I

    const/16 v9, 0xc8

    if-ge v8, v9, :cond_0

    iget-object v0, v0, Lad/f2;->g:Lad/d2;

    return-object v0

    :cond_0
    const/4 v8, 0x0

    iput v8, v0, Lad/f2;->f:I

    iput-object v1, v0, Lad/f2;->h:Lua/nav/Tuning;

    iget-wide v12, v1, Lua/nav/Tuning;->d:D

    iget-wide v14, v1, Lua/nav/Tuning;->e:D

    iget-wide v8, v1, Lua/nav/Tuning;->f:D

    const/16 v20, 0x0

    iget-wide v10, v1, Lua/nav/Tuning;->g:D

    move-wide/from16 v18, v10

    iget-object v11, v0, Lad/f2;->b:Lu8/k;

    move-wide/from16 v16, v8

    invoke-static/range {v11 .. v19}, Lad/f2;->e(Ljava/util/Collection;DDDD)D

    move-result-wide v32

    iget-wide v9, v1, Lua/nav/Tuning;->d:D

    iget-wide v11, v1, Lua/nav/Tuning;->e:D

    iget-wide v13, v1, Lua/nav/Tuning;->f:D

    move-wide/from16 v17, v2

    iget-wide v2, v1, Lua/nav/Tuning;->g:D

    iget-object v8, v0, Lad/f2;->c:Lu8/k;

    move-wide v15, v2

    invoke-static/range {v8 .. v16}, Lad/f2;->e(Ljava/util/Collection;DDDD)D

    move-result-wide v2

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide/from16 v30, v2

    move-object/from16 v10, v20

    move-wide/from16 v28, v32

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0xe

    if-ge v11, v12, :cond_5

    sget-object v13, Lad/f2;->k:[D

    aget-wide v14, v13, v11

    move-wide/from16 v34, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v12, :cond_4

    aget-wide v20, v13, v2

    mul-double v22, v6, v14

    const-wide v24, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v27}, Lg6/c1;->d(DDD)D

    move-result-wide v37

    mul-double v22, v4, v14

    invoke-static/range {v22 .. v27}, Lg6/c1;->d(DDD)D

    move-result-wide v39

    mul-double v22, v17, v20

    const-wide v24, 0x3f747ae147ae147bL    # 0.005

    const-wide v26, 0x3fc999999999999aL    # 0.2

    invoke-static/range {v22 .. v27}, Lg6/c1;->d(DDD)D

    move-result-wide v41

    iget-object v3, v0, Lad/f2;->c:Lu8/k;

    move-object/from16 v19, v13

    iget-wide v12, v1, Lua/nav/Tuning;->g:D

    move-object/from16 v36, v3

    move-wide/from16 v43, v12

    invoke-static/range {v36 .. v44}, Lad/f2;->e(Ljava/util/Collection;DDDD)D

    move-result-wide v12

    cmpl-double v3, v12, v8

    if-gtz v3, :cond_2

    iget-object v3, v0, Lad/f2;->b:Lu8/k;

    move/from16 v20, v2

    move-object/from16 v36, v3

    iget-wide v2, v1, Lua/nav/Tuning;->g:D

    move-wide/from16 v43, v2

    invoke-static/range {v36 .. v44}, Lad/f2;->e(Ljava/util/Collection;DDDD)D

    move-result-wide v2

    const-wide v21, 0x3e112e0be826d695L    # 1.0E-9

    add-double v23, v28, v21

    cmpl-double v23, v2, v23

    if-gtz v23, :cond_1

    sub-double v21, v28, v21

    cmpl-double v21, v2, v21

    if-ltz v21, :cond_3

    cmpg-double v21, v12, v30

    if-gez v21, :cond_3

    :cond_1
    new-instance v10, Lt8/p;

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-wide/from16 v21, v2

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {v41 .. v42}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v10, v1, v2, v3}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v30, v12

    move-wide/from16 v28, v21

    goto :goto_2

    :cond_2
    move/from16 v20, v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v13, v19

    const/16 v12, 0xe

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v2, v34

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v34, v2

    if-nez v10, :cond_6

    new-instance v10, Lt8/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v10, v1, v2, v3}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    iget-object v1, v10, Lt8/p;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    iget-object v1, v10, Lt8/p;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    iget-object v1, v10, Lt8/p;->n:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v26

    new-instance v21, Lad/d2;

    invoke-direct/range {v21 .. v35}, Lad/d2;-><init>(DDDDDDD)V

    move-object/from16 v1, v21

    iput-object v1, v0, Lad/f2;->g:Lad/d2;

    return-object v1

    :cond_7
    const/16 v20, 0x0

    return-object v20
.end method

.method public final d(JLjava/lang/Boolean;DDD)V
    .locals 4

    if-eqz p3, :cond_7

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v0, p0, Lad/f2;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lad/f2;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-wide p1, p0, Lad/f2;->i:J

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lad/f2;->j:Z

    :cond_2
    iget-wide v0, p0, Lad/f2;->i:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xbb8

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lad/f2;->c:Lu8/k;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lad/f2;->b:Lu8/k;

    :goto_0
    new-instance p2, Lad/e2;

    double-to-float p3, p4

    double-to-float p4, p6

    double-to-float p5, p8

    invoke-direct {p2, p3, p4, p5}, Lad/e2;-><init>(FFF)V

    invoke-virtual {p1, p2}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lu8/k;->a()I

    move-result p2

    const/16 p3, 0xfa0

    if-le p2, p3, :cond_5

    invoke-virtual {p1}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget p1, p0, Lad/f2;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lad/f2;->f:I

    iget p1, p0, Lad/f2;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lad/f2;->e:I

    const/16 p2, 0x258

    if-lt p1, p2, :cond_6

    invoke-virtual {p0}, Lad/f2;->f()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lad/f2;->i:J

    return-void
.end method

.method public final f()V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lad/f2;->e:I

    new-instance v5, Lad/b2;

    invoke-direct {v5, p0}, Lad/b2;-><init>(Lad/f2;)V

    const/16 v6, 0x1e

    iget-object v1, p0, Lad/f2;->b:Lu8/k;

    const-string v2, ";"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lad/f2;->a:Lqd/u;

    iget-object v1, v1, Lqd/u;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "stop_samples_s"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v6, Lad/b2;

    invoke-direct {v6, p0}, Lad/b2;-><init>(Lad/f2;)V

    const/16 v7, 0x1e

    iget-object v2, p0, Lad/f2;->c:Lu8/k;

    const-string v3, ";"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stop_samples_m"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
