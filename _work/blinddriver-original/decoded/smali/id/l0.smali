.class public final Lid/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/h0;


# instance fields
.field public final A:Lia/n;

.field public final a:Lcom/graphhopper/storage/BaseGraph;

.field public final b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field public final c:Lcom/graphhopper/routing/ev/EnumEncodedValue;

.field public final d:Ljava/util/HashMap;

.field public final e:Lcom/graphhopper/util/EdgeExplorer;

.field public final f:Lcom/graphhopper/storage/index/LocationIndex;

.field public final g:Ljava/util/Random;

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/util/ArrayList;

.field public j:I

.field public final k:[D

.field public l:D

.field public m:D

.field public n:Z

.field public o:D

.field public p:D

.field public q:J

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:Lua/nav/routing/Route;

.field public w:Lad/x1;

.field public final x:Ljava/util/HashMap;

.field public final y:Ljava/util/HashMap;

.field public z:Lad/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/h0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/l0;->Companion:Lid/h0;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/GraphHopper;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopper;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v0

    iput-object v0, p0, Lid/l0;->a:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopper;->getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v1

    const-string v2, "car_access"

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v1

    const-string v2, "getBooleanEncodedValue(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lid/l0;->b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopper;->getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v2

    const-string v3, "road_class"

    const-class v4, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v2

    iput-object v2, p0, Lid/l0;->c:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lid/l0;->d:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/graphhopper/routing/util/AccessFilter;->outEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    const-string v1, "createEdgeExplorer(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lid/l0;->e:Lcom/graphhopper/util/EdgeExplorer;

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopper;->getLocationIndex()Lcom/graphhopper/storage/index/LocationIndex;

    move-result-object p1

    iput-object p1, p0, Lid/l0;->f:Lcom/graphhopper/storage/index/LocationIndex;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lid/l0;->g:Ljava/util/Random;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lid/l0;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lid/l0;->i:Ljava/util/ArrayList;

    const/16 p1, 0x29

    new-array p1, p1, [D

    iput-object p1, p0, Lid/l0;->k:[D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lid/l0;->l:D

    iput-wide p1, p0, Lid/l0;->m:D

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lid/l0;->q:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lid/l0;->x:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lid/l0;->y:Ljava/util/HashMap;

    new-instance p1, Lia/n;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lia/n;-><init>(I)V

    iput-object p1, p0, Lid/l0;->A:Lia/n;

    return-void
.end method

.method public static g(Lid/j0;)V
    .locals 6

    iget-object v0, p0, Lid/j0;->g:Lid/i0;

    iget-wide v1, p0, Lid/j0;->c:D

    invoke-static {v0, v1, v2}, Lid/l0;->h(Lid/i0;D)Lt8/j;

    move-result-object v0

    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-wide v4, v1, Lua/nav/routing/GeoPoint;->a:D

    iput-wide v4, p0, Lid/j0;->h:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    iput-wide v0, p0, Lid/j0;->i:D

    iput-wide v2, p0, Lid/j0;->j:D

    return-void
.end method

.method public static h(Lid/i0;D)Lt8/j;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lid/i0;->c:[D

    iget-object v2, v0, Lid/i0;->b:[D

    iget-object v0, v0, Lid/i0;->a:[D

    array-length v3, v1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_0

    new-instance v1, Lua/nav/routing/GeoPoint;

    const/4 v3, 0x0

    aget-wide v7, v0, v3

    aget-wide v2, v2, v3

    invoke-direct {v1, v7, v8, v2, v3}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v2, Lt8/j;

    invoke-direct {v2, v1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    :goto_0
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_1

    aget-wide v8, v1, v7

    cmpg-double v8, v8, p1

    if-gez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    aget-wide v3, v1, v7

    add-int/lit8 v8, v7, -0x1

    aget-wide v9, v1, v8

    sub-double/2addr v3, v9

    const-wide v11, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v3, v11

    if-gez v1, :cond_2

    :goto_1
    move-wide v13, v5

    goto :goto_2

    :cond_2
    sub-double v5, p1, v9

    div-double v9, v5, v3

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v9 .. v14}, Lg6/c1;->d(DDD)D

    move-result-wide v5

    goto :goto_1

    :goto_2
    aget-wide v11, v0, v8

    aget-wide v9, v0, v7

    move-wide v15, v11

    invoke-static/range {v9 .. v16}, Lm/a;->b(DDDD)D

    move-result-wide v3

    aget-wide v11, v2, v8

    aget-wide v9, v2, v7

    move-wide v15, v11

    invoke-static/range {v9 .. v16}, Lm/a;->b(DDDD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    aget-wide v11, v2, v7

    aget-wide v1, v2, v8

    sub-double/2addr v11, v1

    mul-double/2addr v11, v9

    aget-wide v1, v0, v7

    aget-wide v7, v0, v8

    sub-double/2addr v1, v7

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v7, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v7

    rem-double/2addr v0, v7

    new-instance v2, Lua/nav/routing/GeoPoint;

    invoke-direct {v2, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lt8/j;

    invoke-direct {v1, v2, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final k(I[D[DLid/l0;DDZ)[D
    .locals 23

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    move-object v5, v3

    check-cast v5, Lo9/c;

    iget-boolean v6, v5, Lo9/c;->n:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lo9/c;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz p8, :cond_1

    aget-wide v7, p1, v6

    sub-double v7, v7, p4

    mul-double/2addr v7, v7

    aget-wide v9, p2, v6

    sub-double v9, v9, p6

    mul-double/2addr v9, v9

    add-double/2addr v9, v7

    const-wide v6, 0x40d5f90000000000L    # 22500.0

    cmpl-double v6, v9, v6

    if-lez v6, :cond_0

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Lad/m0;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v1}, Lad/m0;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v3}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v3, v4}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-wide/16 v6, 0x0

    move/from16 v16, v2

    move-wide v8, v6

    move-wide v10, v8

    move-wide v12, v10

    move-wide v14, v12

    :goto_2
    if-ge v2, v0, :cond_4

    aget-wide v17, p1, v2

    aget-wide v19, p1, v5

    sub-double v17, v17, v19

    aget-wide v19, p2, v2

    aget-wide v21, p2, v5

    sub-double v19, v19, v21

    mul-double v17, v17, v17

    mul-double v19, v19, v19

    add-double v19, v19, v17

    const-wide v17, 0x40ac200000000000L    # 3600.0

    cmpg-double v17, v19, v17

    if-gez v17, :cond_3

    iget-object v0, v1, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lid/j0;

    move/from16 v17, v2

    iget-wide v1, v0, Lid/j0;->e:D

    add-double/2addr v6, v1

    aget-wide v18, p1, v17

    mul-double v18, v18, v1

    add-double v18, v18, v8

    aget-wide v8, p2, v17

    mul-double/2addr v1, v8

    add-double/2addr v1, v10

    iget-wide v8, v0, Lid/j0;->j:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    iget-wide v10, v0, Lid/j0;->e:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v10

    add-double v20, v20, v12

    iget-wide v10, v0, Lid/j0;->e:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v8, v14

    move-wide v10, v1

    move-wide v14, v8

    move-wide/from16 v8, v18

    move-wide/from16 v12, v20

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    :goto_3
    add-int/lit8 v2, v17, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    if-eqz v4, :cond_6

    aget-wide v1, v4, v0

    cmpl-double v1, v6, v1

    if-lez v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_6
    :goto_5
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    div-double/2addr v1, v6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v4

    if-lez v1, :cond_7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v4, 0x168

    int-to-double v4, v4

    add-double/2addr v1, v4

    rem-double/2addr v1, v4

    goto :goto_6

    :cond_7
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    :goto_6
    const/4 v4, 0x4

    new-array v4, v4, [D

    div-double/2addr v8, v6

    aput-wide v8, v4, v16

    div-double/2addr v10, v6

    const/4 v5, 0x1

    aput-wide v10, v4, v5

    aput-wide v6, v4, v0

    const/4 v0, 0x3

    aput-wide v1, v4, v0

    goto :goto_4

    :cond_8
    return-object v4
.end method

.method public static l(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    const/16 v1, 0x168

    if-lez v0, :cond_0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_1

    int-to-double v0, v1

    add-double/2addr p0, v0

    :cond_1
    return-wide p0
.end method


# virtual methods
.method public final a(II)Lid/i0;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lid/l0;->d(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Lid/l0;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v0, v0, Lid/l0;->a:Lcom/graphhopper/storage/BaseGraph;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v0, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    new-array v4, v3, [D

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {v0, v6}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v3, [D

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v3, [D

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v3, :cond_2

    add-int/lit8 v7, v5, -0x1

    aget-wide v8, v0, v7

    sget-object v10, Ldd/t0;->Companion:Ldd/s0;

    aget-wide v11, v4, v7

    aget-wide v13, v6, v7

    aget-wide v15, v4, v5

    aget-wide v17, v6, v5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v11 .. v18}, Ldd/s0;->a(DDDD)D

    move-result-wide v10

    add-double/2addr v8, v10

    aput-wide v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    const v5, 0xc350

    if-le v3, v5, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_3
    new-instance v3, Lid/i0;

    invoke-direct {v3, v4, v6, v0}, Lid/i0;-><init>([D[D[D)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v3, Lid/i0;

    return-object v3
.end method

.method public final b(Lua/nav/routing/GeoPoint;DLjava/lang/Double;Ljava/lang/Double;Z)V
    .locals 27

    move-object/from16 v3, p1

    const/4 v0, 0x2

    int-to-double v0, v0

    mul-double v4, v0, p2

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    const-wide/high16 v8, 0x4079000000000000L    # 400.0

    invoke-static/range {v4 .. v9}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    const-wide v0, 0x40fafcc000000000L    # 110540.0

    div-double v0, v4, v0

    iget-wide v6, v3, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v8, v10

    div-double v8, v4, v8

    move-wide v10, v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-wide v12, v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Lcom/graphhopper/util/shapes/BBox;

    move-object v2, v1

    iget-wide v0, v3, Lua/nav/routing/GeoPoint;->b:D

    sub-double v15, v0, v10

    add-double v17, v0, v10

    sub-double v19, v6, v12

    add-double v21, v6, v12

    invoke-direct/range {v14 .. v22}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    new-instance v0, Lid/g0;

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object v1, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v9}, Lid/g0;-><init>(Ljava/util/HashSet;Lid/l0;Lua/nav/routing/GeoPoint;DDLjava/lang/Double;Ljava/util/ArrayList;)V

    iget-object v1, v2, Lid/l0;->f:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-interface {v1, v14, v0}, Lcom/graphhopper/storage/index/LocationIndex;->query(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lid/k0;

    iget-wide v10, v8, Lid/k0;->d:D

    add-double/2addr v5, v10

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    iget-boolean v0, v2, Lid/l0;->t:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto :goto_1

    :cond_2
    const/16 v0, 0x190

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_7

    iget-object v10, v2, Lid/l0;->g:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    mul-double/2addr v11, v5

    invoke-static {v9}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lid/k0;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-string v15, "iterator(...)"

    invoke-static {v14, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    const-wide/16 p1, 0x0

    const-string v3, "next(...)"

    invoke-static {v15, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lid/k0;

    iget-wide v3, v15, Lid/k0;->d:D

    sub-double/2addr v11, v3

    cmpg-double v3, v11, p1

    if-gtz v3, :cond_3

    move-object v13, v15

    goto :goto_3

    :cond_4
    const-wide/16 p1, 0x0

    :goto_3
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v10}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v11

    add-double v14, v11, v3

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4044000000000000L    # 40.0

    invoke-static/range {v14 .. v19}, Lg6/c1;->d(DDD)D

    move-result-wide v3

    :goto_4
    move-wide/from16 v19, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    mul-double/2addr v3, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    add-double/2addr v3, v11

    goto :goto_4

    :goto_5
    iget v3, v13, Lid/k0;->a:I

    iget-wide v11, v13, Lid/k0;->c:D

    iget v4, v13, Lid/k0;->b:I

    invoke-virtual {v2, v3, v4}, Lid/l0;->a(II)Lid/i0;

    move-result-object v3

    invoke-static {v3, v11, v12}, Lid/l0;->h(Lid/i0;D)Lt8/j;

    move-result-object v4

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    move-wide/from16 v16, v14

    iget v15, v13, Lid/k0;->a:I

    iget v4, v13, Lid/k0;->b:I

    invoke-virtual {v10}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v13

    const/4 v10, 0x5

    int-to-double v1, v10

    mul-double/2addr v13, v1

    add-double v21, v13, v11

    iget-object v1, v3, Lid/i0;->c:[D

    invoke-static {v1}, Lu8/l;->z0([D)D

    move-result-wide v25

    const-wide/16 v23, 0x0

    invoke-static/range {v21 .. v26}, Lg6/c1;->d(DDD)D

    move-result-wide v1

    const/16 v10, 0x29

    new-array v11, v10, [D

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_6

    aput-wide v16, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    new-instance v14, Lid/j0;

    move-wide/from16 v17, v1

    move-object/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v21, v11

    invoke-direct/range {v14 .. v22}, Lid/j0;-><init>(IIDD[DLid/i0;)V

    invoke-static {v14}, Lid/l0;->g(Lid/j0;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x1

    move-object/from16 v2, p0

    if-eqz p6, :cond_a

    iget-boolean v1, v2, Lid/l0;->t:Z

    if-eqz v1, :cond_a

    iget-object v1, v2, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_8

    new-instance v0, Lbd/d;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Lbd/d;-><init>(I)V

    invoke-static {v1, v0}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_9

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lid/j0;

    const-wide v4, 0x3f647ae147ae147bL    # 0.0025

    iput-wide v4, v3, Lid/j0;->e:D

    iget-object v3, v2, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Lid/l0;->e()V

    return-void

    :cond_a
    iput-object v7, v2, Lid/l0;->i:Ljava/util/ArrayList;

    iput-boolean v0, v2, Lid/l0;->t:Z

    const/4 v0, 0x0

    iput v0, v2, Lid/l0;->s:I

    invoke-virtual {v2}, Lid/l0;->j()V

    return-void
.end method

.method public final c(I)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lid/l0;->d:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const v3, 0x30d40

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v2, p0, Lid/l0;->a:Lcom/graphhopper/storage/BaseGraph;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, p1, v3}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p1

    iget-object p0, p0, Lid/l0;->c:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->SERVICE:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d(II)J
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lid/l0;->y:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lid/l0;->a:Lcom/graphhopper/storage/BaseGraph;

    const/high16 v2, -0x80000000

    invoke-virtual {p0, p1, v2}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    const v2, 0x30d40

    if-le v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    int-to-long v0, p1

    const/4 p1, 0x2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final e()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    move v8, v5

    :goto_0
    if-ge v8, v2, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lid/j0;

    iget-wide v9, v9, Lid/j0;->e:D

    add-double/2addr v6, v9

    goto :goto_0

    :cond_0
    cmpg-double v1, v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v5

    :goto_1
    if-ge v10, v2, :cond_2

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lid/j0;

    iget-wide v12, v11, Lid/j0;->e:D

    div-double/2addr v12, v6

    iput-wide v12, v11, Lid/j0;->e:D

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v5

    :goto_2
    if-ge v6, v2, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lid/j0;

    iget-wide v10, v7, Lid/j0;->e:D

    mul-double/2addr v10, v10

    add-double/2addr v3, v10

    goto :goto_2

    :cond_3
    div-double/2addr v8, v3

    const-wide v1, 0x4060aaaaaaaaaaabL    # 133.33333333333334

    cmpl-double v1, v8, v1

    if-lez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lid/l0;->g:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide v6, 0x3f647ae147ae147bL    # 0.0025

    mul-double/2addr v3, v6

    iget-object v8, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lid/j0;

    iget-wide v8, v8, Lid/j0;->e:D

    move-wide v9, v8

    move v8, v5

    :goto_3
    if-ge v5, v2, :cond_6

    :goto_4
    cmpl-double v11, v3, v9

    if-lez v11, :cond_5

    iget-object v11, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    iget-object v11, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lid/j0;

    iget-wide v11, v11, Lid/j0;->e:D

    add-double/2addr v9, v11

    goto :goto_4

    :cond_5
    iget-object v11, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "get(...)"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lid/j0;

    new-instance v12, Lid/j0;

    iget v13, v11, Lid/j0;->a:I

    iget v14, v11, Lid/j0;->b:I

    move-wide/from16 v21, v3

    iget-wide v2, v11, Lid/j0;->c:D

    move-wide/from16 v23, v6

    iget-wide v6, v11, Lid/j0;->d:D

    iget-object v4, v11, Lid/j0;->f:[D

    array-length v15, v4

    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    const-string v15, "copyOf(...)"

    invoke-static {v4, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v15, v11, Lid/j0;->g:Lid/i0;

    move-object/from16 v19, v4

    move-wide/from16 v17, v6

    move-object/from16 v20, v15

    move-wide v15, v2

    invoke-direct/range {v12 .. v20}, Lid/j0;-><init>(IIDD[DLid/i0;)V

    iget-wide v2, v11, Lid/j0;->h:D

    iput-wide v2, v12, Lid/j0;->h:D

    iget-wide v2, v11, Lid/j0;->i:D

    iput-wide v2, v12, Lid/j0;->i:D

    iget-wide v2, v11, Lid/j0;->j:D

    iput-wide v2, v12, Lid/j0;->j:D

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double v3, v21, v23

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v6, v23

    const/16 v2, 0x190

    goto :goto_3

    :cond_6
    iput-object v1, v0, Lid/l0;->i:Ljava/util/ArrayList;

    return-void

    :cond_7
    :goto_5
    iget-object v1, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v5, v2, :cond_8

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lid/j0;

    iget-object v4, v0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v6, v4

    div-double v6, v8, v6

    iput-wide v6, v3, Lid/j0;->e:D

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method public final f(II)Z
    .locals 13

    iget-object v0, p0, Lid/l0;->w:Lad/x1;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return v10

    :cond_0
    iget-object v1, v0, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {p0, p1, p2}, Lid/l0;->d(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Lid/l0;->x:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lid/l0;->a(II)Lid/i0;

    move-result-object p0

    iget-object p1, p0, Lid/i0;->c:[D

    invoke-static {p1}, Lu8/l;->z0([D)D

    move-result-wide p1

    const/4 v2, 0x2

    int-to-double v2, v2

    div-double/2addr p1, v2

    invoke-static {p0, p1, p2}, Lid/l0;->h(Lid/i0;D)Lt8/j;

    move-result-object p0

    iget-object p1, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Lua/nav/routing/GeoPoint;

    invoke-virtual {v1}, Lua/nav/routing/Route;->c()D

    move-result-wide v2

    invoke-virtual {v1}, Lua/nav/routing/Route;->c()D

    move-result-wide v4

    const/4 v8, 0x0

    const/16 v9, 0x10

    const-wide/16 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object p1

    iget-wide v1, p1, Lad/w1;->b:D

    const-wide/high16 v3, 0x4039000000000000L    # 25.0

    cmpg-double p2, v1, v3

    if-gez p2, :cond_1

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-wide p0, p1, Lad/w1;->a:D

    invoke-virtual {v0, p0, p1}, Lad/x1;->d(D)Lad/v1;

    move-result-object p0

    iget p0, p0, Lad/v1;->b:F

    float-to-double p0, p0

    sub-double/2addr v1, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    rem-double/2addr v1, p0

    const-wide v3, 0x4080e00000000000L    # 540.0

    add-double/2addr v1, v3

    rem-double/2addr v1, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    sub-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 v10, 0x1

    :cond_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final i(Lua/nav/routing/Route;)V
    .locals 1

    iget-object v0, p0, Lid/l0;->v:Lua/nav/routing/Route;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lid/l0;->v:Lua/nav/routing/Route;

    if-eqz p1, :cond_1

    new-instance v0, Lad/x1;

    invoke-direct {v0, p1}, Lad/x1;-><init>(Lua/nav/routing/Route;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lid/l0;->w:Lad/x1;

    iget-object p0, p0, Lid/l0;->x:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final j()V
    .locals 45

    move-object/from16 v3, p0

    iget-boolean v0, v3, Lid/l0;->t:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v9

    goto/16 :goto_d

    :cond_1
    iget-object v0, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v3, Lid/l0;->i:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lid/j0;

    iget-wide v11, v1, Lid/j0;->h:D

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide v4, 0x40fb2d8000000000L    # 111320.0

    mul-double v13, v1, v4

    new-array v1, v0, [D

    move v2, v10

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lid/j0;

    iget-wide v4, v4, Lid/j0;->i:D

    iget-object v6, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lid/j0;

    iget-wide v6, v6, Lid/j0;->i:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v13

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v2, v0, [D

    move v4, v10

    :goto_1
    const-wide v15, 0x40fafcc000000000L    # 110540.0

    if-ge v4, v0, :cond_3

    iget-object v5, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lid/j0;

    iget-wide v5, v5, Lid/j0;->h:D

    sub-double/2addr v5, v11

    mul-double/2addr v5, v15

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lid/l0;->k(I[D[DLid/l0;DDZ)[D

    move-result-object v17

    if-nez v17, :cond_4

    iput-object v9, v3, Lid/l0;->z:Lad/q1;

    return-void

    :cond_4
    invoke-static {v10, v0}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    move-object v6, v4

    check-cast v6, Lo9/c;

    iget-boolean v7, v6, Lo9/c;->n:Z

    const/16 v18, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lo9/c;->nextInt()I

    move-result v6

    aget-wide v7, v1, v6

    aget-wide v19, v17, v10

    sub-double v7, v7, v19

    aget-wide v19, v2, v6

    aget-wide v21, v17, v18

    move/from16 v23, v10

    sub-double v9, v19, v21

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-object v8, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lid/j0;

    iget-wide v8, v6, Lid/j0;->e:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-instance v8, Lt8/j;

    invoke-direct {v8, v7, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v23

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move/from16 v23, v10

    new-instance v4, Lbd/d;

    const/4 v6, 0x6

    invoke-direct {v4, v6}, Lbd/d;-><init>(I)V

    invoke-static {v5, v4}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt8/j;

    iget-object v5, v5, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v7, 0x0

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Lt8/j;

    iget-object v10, v9, Lt8/j;->l:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    iget-object v9, v9, Lt8/j;->m:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide v9, 0x3fe999999999999aL    # 0.8

    cmpl-double v9, v7, v9

    if-ltz v9, :cond_6

    goto :goto_3

    :cond_7
    move-wide/from16 v24, v5

    :goto_3
    aget-wide v4, v17, v23

    aget-wide v6, v17, v18

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lid/l0;->k(I[D[DLid/l0;DDZ)[D

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    aget-wide v4, v0, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget-object v2, v3, Lid/l0;->w:Lad/x1;

    if-nez v2, :cond_9

    const-wide/16 v33, 0x0

    goto :goto_7

    :cond_9
    iget-object v2, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v23

    const-wide/16 v6, 0x0

    :goto_5
    if-ge v5, v4, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lid/j0;

    iget v9, v8, Lid/j0;->a:I

    iget v10, v8, Lid/j0;->b:I

    invoke-virtual {v3, v9, v10}, Lid/l0;->f(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-wide v8, v8, Lid/j0;->e:D

    goto :goto_6

    :cond_a
    const-wide/16 v8, 0x0

    :goto_6
    add-double/2addr v6, v8

    goto :goto_5

    :cond_b
    move-wide/from16 v33, v6

    :goto_7
    aget-wide v4, v17, v23

    aget-wide v6, v17, v18

    new-instance v2, Lua/nav/routing/GeoPoint;

    div-double/2addr v6, v15

    add-double/2addr v6, v11

    iget-object v8, v3, Lid/l0;->i:Ljava/util/ArrayList;

    move/from16 v9, v23

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lid/j0;

    iget-wide v8, v8, Lid/j0;->i:D

    div-double/2addr v4, v13

    add-double/2addr v4, v8

    invoke-direct {v2, v6, v7, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v4, 0x3

    aget-wide v4, v17, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v28, v6

    goto :goto_8

    :cond_c
    const/16 v28, 0x0

    :goto_8
    aget-wide v29, v17, v1

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpg-double v6, v24, v4

    if-gez v6, :cond_d

    move-wide/from16 v31, v4

    goto :goto_9

    :cond_d
    move-wide/from16 v31, v24

    :goto_9
    const/4 v9, 0x0

    if-eqz v0, :cond_e

    aget-wide v4, v0, v9

    aget-wide v6, v0, v18

    new-instance v8, Lua/nav/routing/GeoPoint;

    div-double/2addr v6, v15

    add-double/2addr v6, v11

    iget-object v10, v3, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lid/j0;

    iget-wide v10, v10, Lid/j0;->i:D

    div-double/2addr v4, v13

    add-double/2addr v4, v10

    invoke-direct {v8, v6, v7, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-object/from16 v35, v8

    goto :goto_a

    :cond_e
    const/16 v35, 0x0

    :goto_a
    if-eqz v0, :cond_f

    aget-wide v0, v0, v1

    move-wide/from16 v36, v0

    goto :goto_b

    :cond_f
    const-wide/16 v36, 0x0

    :goto_b
    iget-object v0, v3, Lid/l0;->A:Lia/n;

    invoke-virtual {v0}, Lia/n;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v38

    iget-wide v4, v3, Lid/l0;->o:D

    iget-wide v6, v3, Lid/l0;->p:D

    iget-wide v10, v3, Lid/l0;->q:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Lia/n;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v10, v3, Lid/l0;->q:J

    sub-long/2addr v0, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v0, v10

    if-gtz v0, :cond_10

    move/from16 v44, v18

    goto :goto_c

    :cond_10
    move/from16 v44, v9

    :goto_c
    new-instance v26, Lad/q1;

    move-object/from16 v27, v2

    move-wide/from16 v40, v4

    move-wide/from16 v42, v6

    invoke-direct/range {v26 .. v44}, Lad/q1;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/Double;DDDLua/nav/routing/GeoPoint;DJDDZ)V

    move-object/from16 v0, v26

    iput-object v0, v3, Lid/l0;->z:Lad/q1;

    return-void

    :goto_d
    iput-object v0, v3, Lid/l0;->z:Lad/q1;

    return-void
.end method
