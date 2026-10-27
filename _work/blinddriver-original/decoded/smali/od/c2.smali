.class public final Lod/c2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V
    .locals 0

    iput p7, p0, Lod/c2;->l:I

    iput-object p1, p0, Lod/c2;->m:Lr0/u0;

    iput-object p2, p0, Lod/c2;->n:Lr0/u0;

    iput-object p3, p0, Lod/c2;->o:Lr0/u0;

    iput-object p4, p0, Lod/c2;->p:Lr0/u0;

    iput-object p5, p0, Lod/c2;->q:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget p1, p0, Lod/c2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lod/c2;

    iget-object v5, p0, Lod/c2;->q:Lr0/u0;

    const/4 v7, 0x1

    iget-object v1, p0, Lod/c2;->m:Lr0/u0;

    iget-object v2, p0, Lod/c2;->n:Lr0/u0;

    iget-object v3, p0, Lod/c2;->o:Lr0/u0;

    iget-object v4, p0, Lod/c2;->p:Lr0/u0;

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lod/c2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    return-object v0

    :pswitch_0
    move-object v6, p2

    new-instance v1, Lod/c2;

    move-object v7, v6

    iget-object v6, p0, Lod/c2;->q:Lr0/u0;

    const/4 v8, 0x0

    iget-object v2, p0, Lod/c2;->m:Lr0/u0;

    iget-object v3, p0, Lod/c2;->n:Lr0/u0;

    iget-object v4, p0, Lod/c2;->o:Lr0/u0;

    iget-object v5, p0, Lod/c2;->p:Lr0/u0;

    invoke-direct/range {v1 .. v8}, Lod/c2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/c2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/c2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/c2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/c2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/c2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/c2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/c2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lod/c2;->l:I

    sget-object v2, Lu8/r;->l:Lu8/r;

    const-string v3, "fromFeatures(...)"

    iget-object v4, v0, Lod/c2;->m:Lr0/u0;

    iget-object v5, v0, Lod/c2;->p:Lr0/u0;

    iget-object v6, v0, Lod/c2;->n:Lr0/u0;

    sget-object v7, Lt8/z;->a:Lt8/z;

    const/4 v8, 0x0

    iget-object v9, v0, Lod/c2;->o:Lr0/u0;

    const/4 v10, 0x0

    iget-object v0, v0, Lod/c2;->q:Lr0/u0;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-object v1, v1, Lad/a0;->s:Ljava/util/List;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-object v4, v4, Lad/a0;->b:Lua/nav/routing/Route;

    if-eqz v4, :cond_1

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/a0;

    iget-boolean v6, v6, Lad/a0;->a:Z

    if-eqz v6, :cond_1

    move-object v8, v4

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4, v1}, Lod/g3;->a0(ILjava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {v8}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v4}, Lod/g3;->a0(ILjava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    iget-object v4, v4, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsc/q0;

    iget v6, v6, Lsc/q0;->l:I

    invoke-static {v6, v4}, Lod/g3;->a0(ILjava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v4

    :goto_0
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v11, "routes-src"

    invoke-virtual {v6, v11}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v6

    check-cast v6, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4, v1}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lua/nav/routing/Route;

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    iget v4, v4, Lsc/q0;->l:I

    invoke-static {v4, v1}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lua/nav/routing/Route;

    :cond_6
    :goto_1
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "route-names-src"

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v0, :cond_e

    if-eqz v8, :cond_d

    iget-object v1, v8, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v2, v8, Lua/nav/routing/Route;->f:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v10

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/Step;

    iget-object v6, v6, Lua/nav/routing/Step;->e:Ljava/lang/String;

    invoke-static {v6}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/Step;

    iget v8, v8, Lua/nav/routing/Step;->h:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v8, v10, v9}, Lg6/c1;->f(III)I

    move-result v8

    :goto_3
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/Step;

    iget-object v9, v9, Lua/nav/routing/Step;->e:Ljava/lang/String;

    invoke-static {v9}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/Step;

    iget-object v9, v9, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v12, "arrive"

    invoke-static {v9, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v5, v2}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/Step;

    if-eqz v9, :cond_a

    iget v9, v9, Lua/nav/routing/Step;->h:I

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v11

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-static {v9, v10, v12}, Lg6/c1;->f(III)I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    if-le v9, v8, :cond_8

    new-instance v12, Lo9/d;

    invoke-direct {v12, v8, v9, v11}, Lo9/b;-><init>(III)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v12, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    move-object v11, v9

    check-cast v11, Lo9/c;

    iget-boolean v12, v11, Lo9/c;->n:Z

    if-eqz v12, :cond_b

    invoke-virtual {v11}, Lo9/c;->nextInt()I

    move-result v11

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/routing/GeoPoint;

    iget-wide v12, v12, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    iget-wide v14, v11, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v12, v13, v14, v15}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v8

    const-string v9, "name"

    invoke-static {v6}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    invoke-static {v4}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    :goto_6
    invoke-static {v2}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_e
    :goto_8
    return-object v7

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_e

    :cond_f
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v4, "places-src"

    invoke-virtual {v1, v4}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v1, :cond_1a

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/Favorites;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-eqz v0, :cond_10

    invoke-static {v2}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    iget-object v2, v4, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    goto :goto_9

    :cond_11
    move-object v0, v8

    :goto_9
    if-eqz v2, :cond_12

    iget-object v8, v2, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    :cond_12
    filled-new-array {v0, v8}, [Lua/nav/routing/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/SavedAddress;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_13
    move-object/from16 p0, v11

    goto :goto_c

    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v10

    :goto_b
    if-ge v9, v8, :cond_13

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Lua/nav/routing/GeoPoint;

    iget-wide v13, v12, Lua/nav/routing/GeoPoint;->a:D

    iget-object v15, v6, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    move-object/from16 p0, v11

    iget-wide v10, v15, Lua/nav/routing/GeoPoint;->a:D

    cmpg-double v10, v13, v10

    if-nez v10, :cond_15

    iget-wide v10, v12, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v12, v15, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v10, v10, v12

    if-nez v10, :cond_15

    const/4 v10, 0x0

    move-object/from16 v11, p0

    goto :goto_a

    :cond_15
    const/4 v10, 0x0

    move-object/from16 v11, p0

    goto :goto_b

    :goto_c
    iget-object v12, v6, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    iget-object v8, v6, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    invoke-static {v8}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v8, v6, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    :cond_16
    const/16 v9, 0x18

    invoke-static {v9, v8}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-wide v8, v6, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "saved"

    const-string v14, "place-saved"

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lod/g3;->p0(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v10, 0x0

    goto :goto_a

    :cond_17
    if-eqz v2, :cond_18

    iget-object v12, v2, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    sget-object v0, Lcd/d;->B0:Lcd/c;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v13, "work"

    const-string v14, "place-work"

    invoke-static/range {v11 .. v16}, Lod/g3;->p0(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_18
    iget-object v0, v4, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    if-eqz v0, :cond_19

    iget-object v9, v0, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    sget-object v0, Lcd/d;->A0:Lcd/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v10, "home"

    move-object v8, v11

    const-string v11, "place-home"

    invoke-static/range {v8 .. v13}, Lod/g3;->p0(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object v11, v8

    :cond_19
    invoke-static {v11}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_1a
    :goto_e
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
