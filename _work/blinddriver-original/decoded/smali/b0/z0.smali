.class public final Lb0/z0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p6, p0, Lb0/z0;->l:I

    iput-object p1, p0, Lb0/z0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/z0;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/z0;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/z0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p5, p0, Lb0/z0;->l:I

    iput-object p1, p0, Lb0/z0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/z0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lb0/z0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public static final f(Ljava/util/List;Lid/l1;Z)Lcom/graphhopper/GHRequest;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/GeoPoint;

    new-instance v2, Lcom/graphhopper/util/shapes/GHPoint;

    iget-wide v3, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/graphhopper/GHRequest;

    invoke-direct {p0, v0}, Lcom/graphhopper/GHRequest;-><init>(Ljava/util/List;)V

    const-string v0, "truck"

    invoke-virtual {p0, v0}, Lcom/graphhopper/GHRequest;->setProfile(Ljava/lang/String;)Lcom/graphhopper/GHRequest;

    move-result-object p0

    const-string v0, "max_height"

    const-string v1, "max_width"

    const-string v2, "max_speed"

    const-string v3, "max_weight"

    const-string v4, "max_weight_except"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GHRequest;->setPathDetails(Ljava/util/List;)Lcom/graphhopper/GHRequest;

    const-string v0, "bridge"

    const-string v1, "ferry"

    const-string v2, "tunnel"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GHRequest;->setSnapPreventions(Ljava/util/List;)Lcom/graphhopper/GHRequest;

    if-eqz p2, :cond_1

    const-string p2, "ch.disable"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Lcom/graphhopper/GHRequest;->putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;

    const p2, 0x16e360

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "max_visited_nodes"

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/GHRequest;->putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lid/l1;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "truck.weight"

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/GHRequest;->putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;

    iget-wide v0, p1, Lid/l1;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "truck.height"

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/GHRequest;->putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;

    iget-wide p1, p1, Lid/l1;->c:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "truck.width"

    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/GHRequest;->putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget v0, p0, Lb0/z0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lb0/z0;

    iget-object v0, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lua/nav/c;

    const/4 v6, 0x5

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v1, Lb0/z0;->m:Ljava/lang/Object;

    return-object v1

    :pswitch_0
    move-object v7, p2

    new-instance v2, Lb0/z0;

    iget-object p1, p0, Lb0/z0;->m:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p1, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Li9/e;

    iget-object p1, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    const/4 v8, 0x4

    invoke-direct/range {v2 .. v8}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_1
    move-object v7, p2

    new-instance v2, Lb0/z0;

    iget-object p2, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lid/e;

    iget-object p2, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Lid/l1;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/util/List;

    move-object v6, v7

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Lb0/z0;->m:Ljava/lang/Object;

    return-object v2

    :pswitch_2
    move-object v7, p2

    new-instance v2, Lb0/z0;

    iget-object p1, p0, Lb0/z0;->m:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Led/f;

    iget-object p1, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/io/File;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lb0/y;

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_3
    move-object v7, p2

    new-instance v2, Lb0/z0;

    iget-object p1, p0, Lb0/z0;->m:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lua/nav/hazards/RoadObjectsPackInfo;

    iget-object p1, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/io/File;

    iget-object p1, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/io/File;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lbd/i;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_4
    move-object v7, p2

    new-instance v2, Lb0/z0;

    iget-object p2, p0, Lb0/z0;->n:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ly1/x;

    iget-object p2, p0, Lb0/z0;->o:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Lb0/c2;

    iget-object p0, p0, Lb0/z0;->p:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lm0/v1;

    move-object v6, v7

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v2, Lb0/z0;->m:Ljava/lang/Object;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/z0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lb0/z0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lb0/z0;->l:I

    const/4 v2, 0x5

    const/16 v3, 0x3e8

    sget-object v4, Lu8/r;->l:Lu8/r;

    sget-object v5, Lt8/z;->a:Lt8/z;

    iget-object v7, v0, Lb0/z0;->p:Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lb0/z0;->o:Ljava/lang/Object;

    iget-object v11, v0, Lb0/z0;->n:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v11, Ljava/lang/String;

    check-cast v9, Lua/nav/routing/GeoPoint;

    :try_start_0
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->j()Lua/nav/geo/c;

    move-result-object v0

    invoke-static {v0, v11, v9}, Lua/nav/geo/c;->h(Lua/nav/geo/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/a;

    iget-object v3, v2, Lyc/a;->a:Lyc/b;

    sget-object v5, Lyc/b;->l:Lyc/b;

    if-eq v3, v5, :cond_1

    sget-object v5, Lyc/b;->o:Lyc/b;

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move v15, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v15, 0x1

    :goto_2
    new-instance v11, Lua/nav/geocoding/Place;

    iget-object v12, v2, Lyc/a;->b:Ljava/lang/String;

    iget-object v13, v2, Lyc/a;->c:Ljava/lang/String;

    new-instance v14, Lua/nav/routing/GeoPoint;

    iget-wide v5, v2, Lyc/a;->d:D

    iget-wide v2, v2, Lyc/a;->e:D

    invoke-direct {v14, v5, v6, v2, v3}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/16 v17, 0x0

    const/16 v18, 0x70

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v4, v1

    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lua/nav/geocoding/Place;

    iget-object v3, v3, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v4, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, v3, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v4, v5, v6, v7}, Ldd/w0;->b(DD)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v0

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v9, Lr0/u0;

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style;->getUri()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    check-cast v7, Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    check-cast v11, Li9/e;

    invoke-interface {v11, v1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object v5

    :pswitch_1
    check-cast v7, Ljava/util/List;

    check-cast v9, Lid/l1;

    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v11, Lid/e;

    iget-boolean v0, v11, Lid/e;->a:Z

    if-eqz v0, :cond_17

    invoke-virtual {v11}, Lid/e;->d()Lcom/graphhopper/GraphHopper;

    move-result-object v0

    invoke-static {v7, v9, v8}, Lb0/z0;->f(Ljava/util/List;Lid/l1;Z)Lcom/graphhopper/GHRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/GraphHopper;->route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/GHResponse;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/graphhopper/GHResponse;->getErrors()Ljava/util/List;

    move-result-object v1

    const-string v2, "getErrors(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "\u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    :cond_9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v1}, Lcom/graphhopper/GHResponse;->getBest()Lcom/graphhopper/ResponsePath;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "dims"

    invoke-static {v9, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/ResponsePath;->getPathDetails()Ljava/util/Map;

    move-result-object v2

    const-string v3, "max_width"

    iget-wide v12, v9, Lid/l1;->c:D

    invoke-static {v2, v3, v12, v13}, Lid/i1;->i(Ljava/util/Map;Ljava/lang/String;D)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v5, "max_height"

    iget-wide v12, v9, Lid/l1;->b:D

    invoke-static {v2, v5, v12, v13}, Lid/i1;->i(Ljava/util/Map;Ljava/lang/String;D)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v3

    const-string v3, "max_weight_except"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    move-object v4, v3

    :goto_7
    const-string v3, "max_weight"

    iget-wide v12, v9, Lid/l1;->a:D

    invoke-static {v2, v3, v12, v13}, Lid/i1;->i(Ljava/util/Map;Ljava/lang/String;D)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v12, v8

    :cond_c
    :goto_8
    if-ge v12, v3, :cond_11

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/graphhopper/util/details/PathDetail;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v13}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v10

    if-lt v6, v10, :cond_d

    invoke-virtual {v13}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/graphhopper/util/details/PathDetail;->getLast()I

    move-result v10

    if-gt v6, v10, :cond_d

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    :goto_9
    check-cast v15, Lcom/graphhopper/util/details/PathDetail;

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/graphhopper/util/details/PathDetail;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_10

    const-string v10, "MISSING"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_11
    const-string v2, "\u0412\u0430\u043d\u0442\u0430\u0436"

    if-nez v5, :cond_12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v8}, Lid/e;->e(Lcom/graphhopper/ResponsePath;Ljava/lang/String;Z)Lua/nav/routing/Route;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_12
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v7, v9, v3}, Lb0/z0;->f(Ljava/util/List;Lid/l1;Z)Lcom/graphhopper/GHRequest;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/graphhopper/GraphHopper;->route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_b
    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_13

    const/4 v0, 0x0

    :cond_13
    check-cast v0, Lcom/graphhopper/GHResponse;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->hasErrors()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getBest()Lcom/graphhopper/ResponsePath;

    move-result-object v6

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_16

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2, v8}, Lid/e;->e(Lcom/graphhopper/ResponsePath;Ljava/lang/String;Z)Lua/nav/routing/Route;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_16
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lid/e;->e(Lcom/graphhopper/ResponsePath;Ljava/lang/String;Z)Lua/nav/routing/Route;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0433\u0440\u0430\u0444 \u043d\u0435 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v1, "log_secret"

    sget-object v4, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Led/f;

    iget-object v4, v0, Led/f;->d:Lgd/d;

    iget-object v5, v0, Led/f;->a:Ljava/lang/String;

    invoke-static {v5}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v0, Led/q;

    const-string v1, "not_configured"

    invoke-direct {v0, v1}, Led/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_18
    :try_start_2
    iget-object v6, v4, Lgd/d;->b:Ljd/b;

    invoke-virtual {v6, v1}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    invoke-static {v4}, Lgd/d;->c(Lgd/d;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_19
    const-string v10, "register"

    if-nez v6, :cond_1a

    :try_start_3
    new-instance v0, Led/q;

    invoke-direct {v0, v10}, Led/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_1a
    move-object/from16 v19, v6

    move v6, v8

    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    int-to-long v14, v3

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Led/l;->a()Ljava/lang/String;

    move-result-object v23

    const-string v20, "POST"

    const-string v21, "/v1/logs"

    move-object/from16 v24, v11

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v19 .. v24}, Led/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    new-instance v15, Led/e;

    move-object v3, v9

    check-cast v3, Ljava/io/File;

    move/from16 v19, v8

    move-object v8, v7

    check-cast v8, Lb0/y;

    invoke-direct {v15, v3, v8}, Led/e;-><init>(Ljava/io/File;Lb0/y;)V

    new-instance v3, Landroidx/lifecycle/a1;

    invoke-direct {v3, v2}, Landroidx/lifecycle/a1;-><init>(I)V

    const-string v8, "/v1/logs"

    move-object/from16 v21, v4

    const/4 v2, 0x1

    new-array v4, v2, [C

    const/16 v2, 0x2f

    aput-char v2, v4, v19

    invoke-static {v5, v4}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    const-string v2, "X-BD-Install"

    iget-object v4, v0, Led/f;->c:Lod/a5;

    iget-object v4, v4, Lod/a5;->m:Lua/nav/a;

    invoke-virtual {v4}, Lua/nav/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-BD-Ts"

    invoke-virtual {v3, v2, v13}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-BD-Nonce"

    invoke-virtual {v3, v2, v14}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-BD-Sha256"

    move-object v4, v11

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-BD-Sig"

    invoke-virtual {v3, v2, v12}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    invoke-virtual {v3, v2, v15}, Landroidx/lifecycle/a1;->B(Ljava/lang/String;Lla/a0;)V

    new-instance v2, Lg7/c;

    invoke-direct {v2, v3}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    iget-object v3, v0, Led/f;->e:Lla/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lpa/p;

    invoke-direct {v4, v3, v2}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v4}, Lpa/p;->i()Lla/c0;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v3, v2, Lla/c0;->r:Lla/e0;

    invoke-virtual {v3}, Lla/e0;->e()Lbb/i;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v12, 0x1000

    :try_start_5
    invoke-interface {v3, v12, v13}, Lbb/i;->A(J)Z

    invoke-interface {v3}, Lbb/i;->a()Lbb/g;

    move-result-object v4

    invoke-interface {v3}, Lbb/i;->a()Lbb/g;

    move-result-object v8

    iget-wide v14, v8, Lbb/g;->m:J

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v12, v13, v8}, Lbb/g;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    iget v3, v2, Lla/c0;->o:I

    const/16 v8, 0xc8

    if-ne v3, v8, :cond_1c

    new-instance v0, Led/r;

    const-string v1, "\"log_id\"\\s*:\\s*\"([0-9a-f]{12})\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v3, "compile(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, "matcher(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, v19

    invoke-static {v1, v3, v4}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_15

    :cond_1b
    const/4 v6, 0x0

    :goto_10
    invoke-direct {v0, v6}, Led/r;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_1c
    const/16 v8, 0x191

    if-ne v3, v8, :cond_1e

    if-nez v6, :cond_1e

    iget-object v3, v0, Led/f;->b:Ljd/b;

    invoke-virtual {v3, v1}, Ljd/b;->f(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lgd/d;->c(Lgd/d;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    new-instance v0, Led/q;

    invoke-direct {v0, v10}, Led/q;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_11
    :try_start_7
    invoke-virtual {v2}, Lla/c0;->close()V

    goto :goto_16

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Lla/c0;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v19, v3

    move-object/from16 v4, v21

    const/4 v2, 0x5

    const/16 v3, 0x3e8

    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_1e
    :try_start_8
    new-instance v1, Led/q;

    if-ne v3, v8, :cond_1f

    const-string v0, "auth"

    goto :goto_12

    :cond_1f
    invoke-static {v0, v4}, Led/f;->a(Led/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-direct {v1, v0}, Led/q;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v2}, Lla/c0;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-object v0, v1

    goto :goto_16

    :goto_13
    move-object v1, v0

    goto :goto_14

    :catchall_3
    move-exception v0

    goto :goto_13

    :goto_14
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_15
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    new-instance v0, Led/q;

    const-string v1, "network"

    invoke-direct {v0, v1}, Led/q;-><init>(Ljava/lang/String;)V

    :goto_16
    return-object v0

    :pswitch_3
    check-cast v7, Lbd/i;

    iget-object v1, v7, Lbd/i;->c:Ljava/io/File;

    check-cast v9, Ljava/io/File;

    const-string v2, "HTTP "

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v3, Lgd/h;->b:Lla/v;

    new-instance v4, Landroidx/lifecycle/a1;

    const/4 v6, 0x5

    invoke-direct {v4, v6}, Landroidx/lifecycle/a1;-><init>(I)V

    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/hazards/RoadObjectsPackInfo;

    iget-object v6, v0, Lua/nav/hazards/RoadObjectsPackInfo;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    new-instance v6, Lg7/c;

    invoke-direct {v6, v4}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lpa/p;

    invoke-direct {v4, v3, v6}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v4}, Lpa/p;->i()Lla/c0;

    move-result-object v3

    check-cast v11, Ljava/io/File;

    :try_start_e
    iget-boolean v4, v3, Lla/c0;->z:Z

    if-eqz v4, :cond_2e

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    :try_start_f
    iget-object v4, v3, Lla/c0;->r:Lla/e0;

    invoke-virtual {v4}, Lla/e0;->e()Lbb/i;

    move-result-object v4

    invoke-interface {v4}, Lbb/i;->Q()Ljava/io/InputStream;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    const/high16 v6, 0x10000

    :try_start_10
    new-array v7, v6, [B

    const-wide/16 v14, 0x0

    :goto_17
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_21

    int-to-long v12, v8

    add-long/2addr v14, v12

    const-wide/32 v12, 0x1400000

    cmp-long v10, v14, v12

    if-gtz v10, :cond_20

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1f

    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0444\u0430\u0439\u043b \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_21
    :try_start_11
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    invoke-virtual {v3}, Lla/c0;->close()V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v7, v0, Lua/nav/hazards/RoadObjectsPackInfo;->d:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_2d

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_13
    new-array v4, v6, [B

    :goto_18
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_22

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v10, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_18

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1e

    :cond_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "digest(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v7, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_19
    if-ge v8, v7, :cond_24

    aget-byte v12, v2, v8

    const/4 v13, 0x1

    add-int/2addr v10, v13

    if-le v10, v13, :cond_23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_23
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const-string v13, "%02x"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lua/nav/hazards/RoadObjectsPackInfo;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lr9/r;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v4, v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_14
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    new-array v4, v6, [B

    const-wide/16 v12, 0x0

    :goto_1a
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_26

    int-to-long v7, v6

    add-long/2addr v12, v7

    const-wide/32 v7, 0x3c00000

    cmp-long v7, v12, v7

    if-gtz v7, :cond_25

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1a

    :catchall_8
    move-exception v0

    move-object v1, v0

    goto :goto_1c

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0431\u0430\u0437\u0430 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0430"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_26
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v9, v2}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbd/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lua/nav/hazards/RoadObjectsPackInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {v2}, Lbd/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1b

    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u043c\u0456\u043d\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0443 \u0431\u0430\u0437\u0443"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_1b
    invoke-virtual {v9, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-object v5

    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u0431\u0430\u0437\u0443"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0443 \u0431\u0430\u0437\u0456 \u0437\u0430\u043c\u0430\u043b\u043e \u043e\u0431\'\u0454\u043a\u0442\u0456\u0432"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0432\u0435\u0440\u0441\u0456\u044f \u0443 \u0444\u0430\u0439\u043b\u0456 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0456 \u0441\u043f\u0438\u0441\u043a\u043e\u043c"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    move-object v1, v0

    goto :goto_1d

    :goto_1c
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :catchall_a
    move-exception v0

    :try_start_18
    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :goto_1d
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1e
    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :catchall_c
    move-exception v0

    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0444\u0430\u0439\u043b \u043d\u0435\u043f\u043e\u0432\u043d\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d
    move-exception v0

    move-object v1, v0

    goto :goto_21

    :catchall_e
    move-exception v0

    move-object v1, v0

    goto :goto_20

    :goto_1f
    :try_start_1b
    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    :catchall_f
    move-exception v0

    :try_start_1c
    invoke-static {v4, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :goto_20
    :try_start_1d
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    :catchall_10
    move-exception v0

    :try_start_1e
    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    iget v1, v3, Lla/c0;->o:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :goto_21
    :try_start_1f
    throw v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    :catchall_11
    move-exception v0

    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_4
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v0, Lb0/z0;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v1, Lu9/u;->o:Lu9/u;

    new-instance v2, Lb0/y0;

    check-cast v11, Ly1/x;

    check-cast v9, Lb0/c2;

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v11, v9, v3, v10}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    const/4 v13, 0x1

    invoke-static {v0, v3, v1, v2, v13}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v2, Landroidx/lifecycle/i0;

    check-cast v7, Lm0/v1;

    invoke-direct {v2, v11, v7, v3, v13}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v3, v1, v2, v13}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
