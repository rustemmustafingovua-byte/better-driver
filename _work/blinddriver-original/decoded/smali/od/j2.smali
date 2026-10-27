.class public final Lod/j2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(ILr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput p1, p0, Lod/j2;->l:I

    iput-object p2, p0, Lod/j2;->o:Lr0/u0;

    iput-object p3, p0, Lod/j2;->p:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lod/j2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lod/j2;

    iget-object v1, p0, Lod/j2;->p:Lr0/u0;

    const/4 v2, 0x2

    iget-object p0, p0, Lod/j2;->o:Lr0/u0;

    invoke-direct {v0, v2, p0, v1, p2}, Lod/j2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    iput-object p1, v0, Lod/j2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lod/j2;

    iget-object v1, p0, Lod/j2;->p:Lr0/u0;

    const/4 v2, 0x1

    iget-object p0, p0, Lod/j2;->o:Lr0/u0;

    invoke-direct {v0, v2, p0, v1, p2}, Lod/j2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    iput-object p1, v0, Lod/j2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lod/j2;

    iget-object v1, p0, Lod/j2;->p:Lr0/u0;

    const/4 v2, 0x0

    iget-object p0, p0, Lod/j2;->o:Lr0/u0;

    invoke-direct {v0, v2, p0, v1, p2}, Lod/j2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    iput-object p1, v0, Lod/j2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/j2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/j2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/j2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/j2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/j2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/j2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/j2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lod/j2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/j2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/j2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lod/j2;->l:I

    const-string v2, "ts"

    const-string v3, "kind"

    const-string v4, "bd"

    const-string v5, "app"

    const/4 v6, 0x0

    sget-object v7, Lt8/z;->a:Lt8/z;

    iget-object v8, v0, Lod/j2;->p:Lr0/u0;

    iget-object v9, v0, Lod/j2;->o:Lr0/u0;

    const-string v10, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lod/j2;->m:I

    if-eqz v3, :cond_1

    if-ne v3, v11, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v3

    iput-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    iput v11, v0, Lod/j2;->m:I

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lba/d;->n:Lba/d;

    new-instance v4, Lua/nav/net/i;

    invoke-direct {v4, v3, v6}, Lua/nav/net/i;-><init>(Lgd/d;Ly8/c;)V

    invoke-static {v1, v4, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_2

    move-object v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    check-cast v0, Lua/nav/net/TransferCodeDto;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lua/nav/net/TransferCodeDto;->a:Ljava/lang/String;

    invoke-interface {v9, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-object v7

    :pswitch_0
    iget-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v12, Lz8/a;->l:Lz8/a;

    iget v13, v0, Lod/j2;->m:I

    if-eqz v13, :cond_5

    if-ne v13, v11, :cond_4

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object v6, v12

    move-object v12, v2

    goto/16 :goto_c

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v10, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Lfd/o;->g()Lorg/maplibre/android/offline/OfflineManager;

    move-result-object v1

    new-instance v2, Lfd/j;

    invoke-direct {v2, v0}, Lfd/j;-><init>(Lfd/o;)V

    invoke-virtual {v1, v2}, Lorg/maplibre/android/offline/OfflineManager;->listOfflineRegions(Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto/16 :goto_d

    :cond_6
    :goto_2
    invoke-static {v1}, Lu9/v;->r(Lu9/t;)Z

    move-result v9

    if-eqz v9, :cond_17

    sget-object v9, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    if-eqz v9, :cond_15

    sget-object v10, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v13, v9, Lua/nav/routing/GeoPoint;->b:D

    move-object v15, v7

    iget-wide v6, v9, Lua/nav/routing/GeoPoint;->a:D

    iget-object v11, v10, Lfd/o;->b:Lua/nav/a;

    move-object/from16 v17, v8

    iget-object v8, v11, Lua/nav/a;->s:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v10}, Lfd/o;->h()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move-object/from16 v23, v1

    move-object/from16 v25, v12

    move-object/from16 v18, v15

    goto/16 :goto_7

    :cond_8
    iget-object v8, v11, Lua/nav/a;->w:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v10, Lfd/o;->a:Landroid/content/Context;

    move-object/from16 v18, v15

    const-class v15, Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v8

    goto :goto_3

    :cond_9
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_b

    move-object/from16 v23, v1

    move-object/from16 v25, v12

    goto/16 :goto_7

    :cond_a
    move-object/from16 v18, v15

    :cond_b
    sget-object v8, Lfd/q;->a:Ljava/util/List;

    iget-object v8, v11, Lua/nav/a;->u:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    sget-object v11, Lfd/q;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v15, 0x0

    goto :goto_5

    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v19, v15

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v19

    sub-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 p1, v8

    move/from16 v8, v19

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v20

    sub-int v20, v20, p1

    move-object/from16 v21, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v8, v11, :cond_e

    move v8, v11

    move-object/from16 v15, v19

    :cond_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_14

    :goto_5
    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_6

    :cond_f
    const/16 v8, 0x32

    :goto_6
    sget-object v11, Lfd/q;->a:Ljava/util/List;

    iget-object v11, v10, Lfd/o;->g:Lua/nav/routing/GeoPoint;

    iget v15, v10, Lfd/o;->h:I

    const-wide v19, 0x408f400000000000L    # 1000.0

    if-eqz v11, :cond_10

    if-eq v15, v8, :cond_11

    :cond_10
    move-object/from16 v25, v12

    goto :goto_8

    :cond_11
    invoke-static {v11, v9}, Lfd/q;->b(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v21

    const-wide v23, 0x3fd999999999999aL    # 0.4

    move-object/from16 v25, v12

    int-to-double v11, v8

    mul-double v11, v11, v23

    mul-double v11, v11, v19

    cmpl-double v9, v21, v11

    if-lez v9, :cond_12

    goto :goto_8

    :cond_12
    iget-object v6, v10, Lfd/o;->c:Lx9/l0;

    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfd/a;

    iget-boolean v6, v6, Lfd/a;->d:Z

    if-nez v6, :cond_13

    iget-boolean v6, v10, Lfd/o;->e:Z

    if-nez v6, :cond_13

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lfd/o;->j(Z)V

    :cond_13
    move-object/from16 v23, v1

    :goto_7
    move-object v12, v2

    goto/16 :goto_9

    :goto_8
    int-to-double v11, v8

    mul-double v11, v11, v19

    const-wide v19, 0x40fafcc000000000L    # 110540.0

    div-double v19, v11, v19

    const-wide v21, 0x400921fb54442d18L    # Math.PI

    mul-double v21, v21, v6

    const-wide v23, 0x4066800000000000L    # 180.0

    div-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    const-wide v23, 0x40fb2d8000000000L    # 111320.0

    mul-double v21, v21, v23

    div-double v11, v11, v21

    move-wide/from16 v21, v11

    sub-double v11, v6, v19

    move-object/from16 v23, v1

    sub-double v0, v13, v21

    move-object/from16 v24, v10

    add-double v9, v6, v19

    move-wide/from16 v19, v13

    add-double v13, v19, v21

    new-instance v15, Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    invoke-direct {v15}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;-><init>()V

    move-object/from16 v22, v2

    new-instance v2, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v2, v11, v12, v0, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v15, v2}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v1, v9, v10, v13, v14}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "area"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "lat"

    invoke-virtual {v1, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "lon"

    move-wide/from16 v10, v19

    invoke-virtual {v1, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "km"

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v12, v22

    invoke-virtual {v1, v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v6, Lb0/a;

    const/4 v7, 0x6

    invoke-direct {v6, v7, v0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v1, v6}, Lfd/o;->k(Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V

    goto :goto_9

    :cond_14
    move-object v0, v10

    move-object/from16 v25, v12

    move-object/from16 v11, v21

    move-object/from16 v0, p0

    goto/16 :goto_4

    :goto_9
    move-object/from16 v1, v23

    :goto_a
    move-object/from16 v0, p0

    goto :goto_b

    :cond_15
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v25, v12

    move-object v12, v2

    goto :goto_a

    :goto_b
    iput-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lod/j2;->m:I

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v6, v25

    if-ne v2, v6, :cond_16

    move-object v7, v6

    goto :goto_d

    :cond_16
    :goto_c
    move-object v2, v12

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    const/4 v11, 0x1

    move-object v12, v6

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_17
    move-object/from16 v18, v7

    :goto_d
    return-object v7

    :pswitch_1
    move-object v12, v2

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    iget-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v6, v0, Lod/j2;->m:I

    if-eqz v6, :cond_19

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v6, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1a

    goto/16 :goto_14

    :cond_1a
    :goto_e
    invoke-static {v1}, Lu9/v;->r(Lu9/t;)Z

    move-result v6

    if-eqz v6, :cond_24

    sget-object v6, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface/range {v17 .. v17}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/Route;

    if-nez v6, :cond_1b

    goto/16 :goto_14

    :cond_1b
    sget-object v7, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v7

    invoke-virtual {v7}, Lfd/o;->h()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v0

    iget-object v1, v6, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "points"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lfd/o;->b:Lua/nav/a;

    iget-object v2, v2, Lua/nav/a;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Lfd/o;->h()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_14

    :cond_1c
    sget-object v2, Lfd/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_1d

    sget-object v1, Lu8/r;->l:Lu8/r;

    goto/16 :goto_12

    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    :goto_f
    if-ge v9, v2, :cond_1e

    add-int/lit8 v13, v9, -0x1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lua/nav/routing/GeoPoint;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lua/nav/routing/GeoPoint;

    invoke-static {v13, v14}, Lfd/q;->b(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v13

    add-double/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1e
    const/16 v2, 0xa0

    int-to-double v13, v2

    div-double/2addr v10, v13

    const-wide v13, 0x40a3880000000000L    # 2500.0

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    move-object v14, v11

    const/4 v11, 0x1

    const-wide/16 v15, 0x0

    :goto_10
    if-ge v11, v13, :cond_20

    add-int/lit8 v7, v11, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/GeoPoint;

    invoke-static {v7, v8}, Lfd/q;->b(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v7

    add-double/2addr v7, v15

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-double v15, v7, v9

    if-ltz v15, :cond_1f

    invoke-static {v14}, Lfd/q;->a(Ljava/util/ArrayList;)Lfd/p;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v7

    const-wide/16 v15, 0x0

    goto :goto_11

    :cond_1f
    move-wide v15, v7

    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v6, :cond_21

    invoke-static {v14}, Lfd/q;->a(Ljava/util/ArrayList;)Lfd/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v1, v2

    :goto_12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_14

    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfd/p;

    iget-wide v7, v6, Lfd/p;->b:D

    iget-wide v9, v6, Lfd/p;->c:D

    iget-wide v13, v6, Lfd/p;->d:D

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    iget-wide v0, v6, Lfd/p;->a:D

    invoke-static {v7, v8, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v6

    invoke-static {v13, v14, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v11

    invoke-static {v13, v14, v9, v10}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v13

    invoke-static {v7, v8, v9, v10}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v9

    invoke-static {v7, v8, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v0

    filled-new-array {v6, v11, v13, v9, v0}, [Lorg/maplibre/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/Polygon;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_13

    :cond_23
    move-object/from16 p0, v0

    invoke-static {v2}, Lorg/maplibre/geojson/MultiPolygon;->fromPolygons(Ljava/util/List;)Lorg/maplibre/geojson/MultiPolygon;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "route"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v3, Lb0/a;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v3}, Lfd/o;->k(Ljava/lang/String;Lorg/json/JSONObject;Li9/c;)V

    :cond_24
    :goto_14
    move-object/from16 v7, v18

    goto :goto_15

    :cond_25
    iput-object v1, v0, Lod/j2;->n:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lod/j2;->m:I

    const-wide/16 v7, 0x7530

    invoke-static {v7, v8, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1a

    move-object v7, v2

    :goto_15
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
