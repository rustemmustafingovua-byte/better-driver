.class public final Lod/f2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Lorg/maplibre/android/maps/MapView;

.field public final synthetic n:Z

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/f2;->m:Lorg/maplibre/android/maps/MapView;

    iput-boolean p2, p0, Lod/f2;->n:Z

    iput-object p3, p0, Lod/f2;->o:Lr0/u0;

    iput-object p4, p0, Lod/f2;->p:Lr0/u0;

    iput-object p5, p0, Lod/f2;->q:Lr0/u0;

    iput-object p6, p0, Lod/f2;->r:Lr0/u0;

    iput-object p7, p0, Lod/f2;->s:Lr0/u0;

    iput-object p8, p0, Lod/f2;->t:Lr0/u0;

    iput-object p9, p0, Lod/f2;->u:Lr0/u0;

    iput-object p10, p0, Lod/f2;->v:Lr0/u0;

    iput-object p11, p0, Lod/f2;->w:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 13

    new-instance v0, Lod/f2;

    iget-object v10, p0, Lod/f2;->v:Lr0/u0;

    iget-object v11, p0, Lod/f2;->w:Lr0/u0;

    iget-object v1, p0, Lod/f2;->m:Lorg/maplibre/android/maps/MapView;

    iget-boolean v2, p0, Lod/f2;->n:Z

    iget-object v3, p0, Lod/f2;->o:Lr0/u0;

    iget-object v4, p0, Lod/f2;->p:Lr0/u0;

    iget-object v5, p0, Lod/f2;->q:Lr0/u0;

    iget-object v6, p0, Lod/f2;->r:Lr0/u0;

    iget-object v7, p0, Lod/f2;->s:Lr0/u0;

    iget-object v8, p0, Lod/f2;->t:Lr0/u0;

    iget-object v9, p0, Lod/f2;->u:Lr0/u0;

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lod/f2;-><init>(Lorg/maplibre/android/maps/MapView;ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/f2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/f2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/f2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/f2;->l:I

    const/4 v3, 0x1

    iget-object v4, v0, Lod/f2;->s:Lr0/u0;

    sget-object v5, Lt8/z;->a:Lt8/z;

    iget-object v6, v0, Lod/f2;->r:Lr0/u0;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v2, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    iget-object v2, v0, Lod/f2;->o:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lod/f2;->p:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lod/f2;->q:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    iget-object v0, v0, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v5

    :cond_3
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :cond_4
    iput v3, v0, Lod/f2;->l:I

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_0
    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->k:Ljava/util/List;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v2, v1, Lsc/q0;->k:Ljava/util/List;

    iget v1, v1, Lsc/q0;->l:I

    invoke-static {v1, v2}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/Route;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget-object v1, Lu8/r;->l:Lu8/r;

    goto :goto_1

    :cond_7
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->k:Ljava/util/List;

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_7

    :cond_8
    new-instance v2, Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    invoke-direct {v2}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/Route;

    iget-object v3, v3, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    new-instance v6, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v7, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v2, v6}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    goto :goto_2

    :cond_a
    iget-object v1, v0, Lod/f2;->m:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, v0, Lod/f2;->t:Lr0/u0;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lod/g3;->A(Lr0/u0;Z)V

    iget-boolean v4, v0, Lod/f2;->n:Z

    const/16 v6, 0x258

    iget-object v7, v0, Lod/f2;->u:Lr0/u0;

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v15, v0, 0x28

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v8

    const/16 v14, 0x28

    const/16 v16, 0x28

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0x28

    invoke-static/range {v8 .. v16}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DDIIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    return-object v5

    :cond_b
    iget-object v1, v0, Lod/f2;->v:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_c

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    :goto_3
    move v14, v1

    goto :goto_4

    :cond_c
    const/16 v1, 0x1cc

    goto :goto_3

    :goto_4
    iget-object v0, v0, Lod/f2;->w:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_d

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v3, v1, :cond_d

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x20

    :goto_5
    move/from16 v16, v3

    goto :goto_6

    :cond_d
    const/16 v3, 0x230

    goto :goto_5

    :goto_6
    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v8

    const/16 v13, 0x40

    const/16 v15, 0x40

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v16}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DDIIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_e
    :goto_7
    return-object v5
.end method
