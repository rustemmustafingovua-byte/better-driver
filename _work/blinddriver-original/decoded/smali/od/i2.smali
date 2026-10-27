.class public final Lod/i2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:D

.field public m:D

.field public n:I

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;


# direct methods
.method public constructor <init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/i2;->o:Lr0/u0;

    iput-object p2, p0, Lod/i2;->p:Lr0/u0;

    iput-object p3, p0, Lod/i2;->q:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance p1, Lod/i2;

    iget-object v0, p0, Lod/i2;->p:Lr0/u0;

    iget-object v1, p0, Lod/i2;->q:Lr0/u0;

    iget-object p0, p0, Lod/i2;->o:Lr0/u0;

    invoke-direct {p1, p0, v0, v1, p2}, Lod/i2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/i2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/i2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/i2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v0, v1, Lod/i2;->n:I

    iget-object v3, v1, Lod/i2;->p:Lr0/u0;

    iget-object v4, v1, Lod/i2;->o:Lr0/u0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v5, :cond_1

    iget-wide v7, v1, Lod/i2;->m:D

    iget-wide v9, v1, Lod/i2;->l:D

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_0
    move-wide/from16 v21, v9

    move-wide v9, v7

    move-wide/from16 v7, v21

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_3

    invoke-interface {v3, v6}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_3
    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    sget-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-object v0, v0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    iget-object v11, v1, Lod/i2;->q:Lr0/u0;

    invoke-interface {v11}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_11

    if-eqz v11, :cond_11

    iget-wide v12, v0, Lua/nav/routing/GeoPoint;->a:D

    sub-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_4

    iget-wide v12, v0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v14

    if-lez v12, :cond_11

    :cond_4
    iget-wide v14, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v7, v0, Lua/nav/routing/GeoPoint;->b:D

    const-string v0, "name"

    const-string v9, "name:uk"

    :try_start_0
    invoke-virtual {v11}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v11, "openmaptiles"

    invoke-virtual {v10, v11}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v10

    check-cast v10, Lorg/maplibre/android/style/sources/VectorSource;

    if-nez v10, :cond_6

    :cond_5
    move-wide/from16 v16, v7

    goto/16 :goto_8

    :cond_6
    const-string v11, "transportation_name"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v6}, Lorg/maplibre/android/style/sources/VectorSource;->querySourceFeatures([Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;

    move-result-object v10

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/high16 v11, 0x4036000000000000L    # 22.0

    move-object v13, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lorg/maplibre/geojson/Feature;

    invoke-virtual {v6, v9}, Lorg/maplibre/geojson/Feature;->hasNonNullValueForProperty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v6, v9}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v7

    goto/16 :goto_9

    :cond_7
    const/16 v16, 0x0

    :goto_2
    if-nez v16, :cond_a

    invoke-virtual {v6, v0}, Lorg/maplibre/geojson/Feature;->hasNonNullValueForProperty(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v6, v0}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    :goto_3
    if-nez v16, :cond_a

    :cond_9
    move-wide/from16 v16, v7

    goto :goto_7

    :cond_a
    move-object/from16 v20, v16

    invoke-static/range {v20 .. v20}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual {v6}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v6

    instance-of v5, v6, Lorg/maplibre/geojson/LineString;

    if-eqz v5, :cond_b

    invoke-static {v6}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_b
    instance-of v5, v6, Lorg/maplibre/geojson/MultiLineString;

    if-eqz v5, :cond_c

    check-cast v6, Lorg/maplibre/geojson/MultiLineString;

    invoke-virtual {v6}, Lorg/maplibre/geojson/MultiLineString;->lineStrings()Ljava/util/List;

    move-result-object v5

    const-string v6, "lineStrings(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    sget-object v5, Lu8/r;->l:Lu8/r;

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v13

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/maplibre/geojson/LineString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v7

    :try_start_1
    invoke-static/range {v13 .. v19}, Lod/m;->H(Lorg/maplibre/geojson/LineString;DDD)D

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmpg-double v13, v7, v11

    if-gez v13, :cond_d

    move-wide v11, v7

    move-wide/from16 v7, v16

    move-object/from16 v6, v20

    goto :goto_5

    :cond_d
    move-wide/from16 v7, v16

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_e
    move-object v13, v6

    :goto_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :goto_7
    move-wide/from16 v7, v16

    goto :goto_6

    :cond_f
    move-wide/from16 v16, v7

    goto :goto_a

    :goto_8
    const/4 v13, 0x0

    goto :goto_b

    :goto_9
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v13

    :goto_a
    instance-of v0, v13, Lt8/l;

    if-eqz v0, :cond_10

    const/4 v13, 0x0

    :cond_10
    check-cast v13, Ljava/lang/String;

    :goto_b
    invoke-interface {v3, v13}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    move-wide v9, v14

    move-wide/from16 v7, v16

    goto :goto_c

    :cond_11
    move-wide/from16 v21, v9

    move-wide v9, v7

    move-wide/from16 v7, v21

    :goto_c
    iput-wide v9, v1, Lod/i2;->l:D

    iput-wide v7, v1, Lod/i2;->m:D

    const/4 v5, 0x1

    iput v5, v1, Lod/i2;->n:I

    const-wide/16 v11, 0x7d0

    invoke-static {v11, v12, v1}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_0

    return-object v2

    :goto_d
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
