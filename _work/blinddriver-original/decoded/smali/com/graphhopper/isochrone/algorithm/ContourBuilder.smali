.class public Lcom/graphhopper/isochrone/algorithm/ContourBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EPSILON:D = 1.0E-6


# instance fields
.field private final geometryFactory:Lpb/m;

.field private final triangulation:Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;


# direct methods
.method public constructor <init>(Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpb/m;

    new-instance v1, Lpb/a0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lpb/a0;->o:Lpb/z;

    iput-object v2, v1, Lpb/a0;->l:Lpb/z;

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iput-wide v2, v1, Lpb/a0;->m:D

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lpb/a0;->n:D

    invoke-direct {v0, v1}, Lpb/m;-><init>(Lpb/a0;)V

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->geometryFactory:Lpb/m;

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->triangulation:Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;

    return-void
.end method

.method public static synthetic a(DLic/c;Lic/c;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->lambda$computeIsoline$0(DLic/c;Lic/c;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lrb/d;Lrb/d;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->lambda$punchHoles$1(Lrb/d;Lrb/d;)I

    move-result p0

    return p0
.end method

.method private isFrameVertex(Lic/c;)Z
    .locals 2

    iget-object p0, p1, Lic/c;->a:Lpb/a;

    iget-wide p0, p0, Lpb/a;->n:D

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static lambda$computeIsoline$0(DLic/c;Lic/c;)I
    .locals 3

    iget-object p2, p2, Lic/c;->a:Lpb/a;

    iget-wide v0, p2, Lpb/a;->n:D

    iget-object p2, p3, Lic/c;->a:Lpb/a;

    iget-wide p2, p2, Lpb/a;->n:D

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    cmpl-double v2, p2, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpl-double v0, v0, p0

    if-lez v0, :cond_1

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static lambda$punchHoles$1(Lrb/d;Lrb/d;)I
    .locals 0

    iget-object p1, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast p1, Lpb/i;

    invoke-virtual {p1}, Lpb/i;->F()I

    move-result p1

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0}, Lpb/i;->F()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private moveEpsilonTowards(Lpb/a;Lpb/a;)Lpb/a;
    .locals 12

    new-instance p0, Lpb/a;

    iget-wide v2, p1, Lpb/a;->l:D

    iget-wide v0, p2, Lpb/a;->l:D

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v6, v2

    invoke-static/range {v0 .. v7}, Lm/a;->b(DDDD)D

    move-result-wide v0

    iget-wide v6, p1, Lpb/a;->m:D

    iget-wide p1, p2, Lpb/a;->m:D

    move-wide v10, v6

    move-wide v8, v4

    move-wide v4, p1

    invoke-static/range {v4 .. v11}, Lm/a;->b(DDDD)D

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lpb/a;-><init>(DD)V

    return-object p0
.end method

.method private punchHoles(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpb/s;",
            ">;)",
            "Ljava/util/List<",
            "Lpb/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpb/s;

    iget-object v3, v2, Lpb/q;->o:Lpb/d;

    invoke-static {v3}, Lr5/h1;->u(Lpb/d;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lrb/d;

    iget-object v4, p0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->geometryFactory:Lpb/m;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lpb/x;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v4}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    invoke-direct {v3, v5}, Lrb/d;-><init>(Lpb/x;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lrb/d;

    iget-object v4, v4, Lg5/c;->m:Ljava/lang/Object;

    check-cast v4, Lpb/i;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lpb/i;->n:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v2

    :goto_2
    if-ge v3, p1, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lpb/s;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_3
    if-ge v6, v5, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lrb/d;

    invoke-virtual {v7, v4}, Lrb/d;->d(Lpb/i;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v5, v7, Lg5/c;->m:Ljava/lang/Object;

    check-cast v5, Lpb/i;

    iget-object v5, v5, Lpb/i;->n:Ljava/util/ArrayList;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Found a hole without a shell."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lrb/d;

    iget-object v3, v3, Lg5/c;->m:Ljava/lang/Object;

    check-cast v3, Lpb/i;

    iget-object v4, v3, Lpb/i;->n:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->geometryFactory:Lpb/m;

    check-cast v3, Lpb/x;

    iget-object v3, v3, Lpb/x;->o:Lpb/s;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lpb/s;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lpb/s;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lpb/x;

    invoke-direct {v6, v3, v4, v5}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p1
.end method


# virtual methods
.method public computeIsoline(DLjava/util/Collection;)Lpb/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;)",
            "Lpb/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/isochrone/algorithm/a;

    invoke-direct {v0, p1, p2}, Lcom/graphhopper/isochrone/algorithm/a;-><init>(D)V

    .line 2
    invoke-virtual {p0, v0, p3}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->computeIsoline(Ljava/util/function/ToIntBiFunction;Ljava/util/Collection;)Lpb/v;

    move-result-object p0

    return-object p0
.end method

.method public computeIsoline(Ljava/util/function/ToIntBiFunction;Ljava/util/Collection;)Lpb/v;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntBiFunction<",
            "Lic/c;",
            "Lic/c;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;)",
            "Lpb/v;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    .line 6
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->getPrimary()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v6

    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v6, :cond_3

    :goto_1
    move v6, v8

    goto :goto_2

    :cond_3
    move v6, v9

    .line 11
    :goto_2
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->isFrameVertex(Lic/c;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 12
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v10

    .line 13
    iget-object v10, v10, Lic/c;->a:Lpb/a;

    .line 14
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v11

    .line 15
    iget-object v11, v11, Lic/c;->a:Lpb/a;

    .line 16
    invoke-direct {v0, v10, v11}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->moveEpsilonTowards(Lpb/a;Lpb/a;)Lpb/a;

    move-result-object v10

    goto :goto_3

    .line 17
    :cond_4
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->isFrameVertex(Lic/c;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 18
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v10

    .line 19
    iget-object v10, v10, Lic/c;->a:Lpb/a;

    .line 20
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v11

    .line 21
    iget-object v11, v11, Lic/c;->a:Lpb/a;

    .line 22
    invoke-direct {v0, v10, v11}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->moveEpsilonTowards(Lpb/a;Lpb/a;)Lpb/a;

    move-result-object v10

    goto :goto_3

    .line 23
    :cond_5
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v10

    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v11

    .line 24
    iget-object v10, v10, Lic/c;->a:Lpb/a;

    .line 25
    iget-wide v12, v10, Lpb/a;->l:D

    .line 26
    iget-object v11, v11, Lic/c;->a:Lpb/a;

    .line 27
    iget-wide v14, v11, Lpb/a;->l:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v17, v12, v14

    .line 28
    iget-wide v12, v10, Lpb/a;->m:D

    move-wide/from16 v19, v14

    .line 29
    iget-wide v14, v11, Lpb/a;->m:D

    add-double/2addr v12, v14

    div-double v12, v12, v19

    .line 30
    iget-wide v14, v10, Lpb/a;->n:D

    .line 31
    iget-wide v10, v11, Lpb/a;->n:D

    add-double/2addr v10, v14

    div-double v21, v10, v19

    .line 32
    new-instance v16, Lpb/a;

    move-wide/from16 v19, v12

    invoke-direct/range {v16 .. v22}, Lpb/a;-><init>(DDD)V

    move-object/from16 v10, v16

    .line 33
    :goto_3
    new-instance v11, Lpb/a;

    iget-wide v12, v10, Lpb/a;->l:D

    iget-wide v14, v10, Lpb/a;->m:D

    invoke-direct {v11, v12, v13, v14, v15}, Lpb/a;-><init>(DD)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_6

    .line 35
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->oNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->getPrimary()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v10

    goto :goto_5

    :cond_6
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->oPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v10

    goto :goto_4

    :goto_5
    if-eqz v6, :cond_7

    .line 36
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->getPrimary()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v5

    goto :goto_7

    :cond_7
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;

    move-result-object v5

    goto :goto_6

    :goto_7
    if-nez v10, :cond_8

    move v6, v9

    goto :goto_8

    .line 37
    :cond_8
    invoke-interface {v10}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v6

    invoke-interface {v10}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    :goto_8
    if-nez v5, :cond_9

    move v11, v9

    goto :goto_9

    .line 38
    :cond_9
    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->orig()Lic/c;

    move-result-object v11

    invoke-interface {v5}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->dest()Lic/c;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    :goto_9
    if-eqz v6, :cond_a

    .line 39
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    move v12, v8

    goto :goto_a

    :cond_a
    move v12, v9

    :goto_a
    if-eqz v11, :cond_b

    .line 40
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    move v13, v8

    goto :goto_b

    :cond_b
    move v13, v9

    :goto_b
    if-eqz v12, :cond_d

    if-lez v6, :cond_c

    move v5, v8

    goto :goto_c

    :cond_c
    move v5, v9

    :goto_c
    move v6, v5

    move-object v5, v10

    goto/16 :goto_2

    :cond_d
    if-eqz v13, :cond_e

    if-lez v11, :cond_3

    goto/16 :goto_1

    .line 41
    :cond_e
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpb/a;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 43
    iget-object v5, v0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->geometryFactory:Lpb/m;

    .line 44
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lpb/a;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lpb/a;

    .line 45
    invoke-virtual {v5, v6}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object v5

    .line 46
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :cond_f
    invoke-direct {v0, v3}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->punchHoles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 48
    iget-object v0, v0, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->geometryFactory:Lpb/m;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lpb/x;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lpb/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Lpb/v;

    .line 50
    invoke-direct {v2, v1, v0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v2
.end method
