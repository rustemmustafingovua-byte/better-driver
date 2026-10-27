.class public final synthetic Lod/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lua/nav/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lod/f1;->l:I

    iput-object p1, p0, Lod/f1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/f1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lod/f1;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/f1;->p:Ljava/lang/Object;

    iput-object p5, p0, Lod/f1;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lod/f1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/f1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lod/f1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/f1;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/f1;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/f1;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lod/f1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/f1;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod/f1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lod/f1;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/f1;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/f1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lod/f1;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/f1;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v0, Lod/f1;->o:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lr0/u0;

    iget-object v2, v0, Lod/f1;->p:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lr0/u0;

    iget-object v2, v0, Lod/f1;->q:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lod/f1;->m:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lr0/u0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v3, Landroidx/lifecycle/j0;

    const/4 v8, 0x0

    const/16 v9, 0xe

    invoke-direct/range {v3 .. v9}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x3

    invoke-static {v1, v0, v0, v3, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/f1;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v2, v0, Lod/f1;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Lod/f1;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v4, v0, Lod/f1;->q:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lod/f1;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lua/nav/c;->x:Lx9/l0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v1, Lua/nav/c;->z:Lx9/l0;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-object v2, v2, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-eqz v2, :cond_0

    new-instance v6, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v3, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v1, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v6, v3, v4, v1, v2}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lua/nav/c;->i()Lad/p1;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lad/p1;->a:Ldd/l0;

    if-nez v1, :cond_2

    :cond_1
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->c:Ldd/l0;

    if-nez v1, :cond_2

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->d:Ldd/l0;

    :cond_2
    if-eqz v1, :cond_3

    new-instance v6, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v2, v1, Ldd/l0;->d:D

    iget-wide v4, v1, Ldd/l0;->e:D

    invoke-direct {v6, v2, v3, v4, v5}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    :cond_3
    :goto_0
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    invoke-virtual {v1, v6}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/maplibre/android/camera/CameraPosition$Builder;->padding(DDDD)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/f1;->n:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, v0, Lod/f1;->m:Ljava/lang/Object;

    check-cast v2, Lua/nav/c;

    iget-object v3, v0, Lod/f1;->o:Ljava/lang/Object;

    check-cast v3, Lf2/k2;

    iget-object v4, v0, Lod/f1;->p:Ljava/lang/Object;

    check-cast v4, Li9/f;

    iget-object v0, v0, Lod/f1;->q:Ljava/lang/Object;

    check-cast v0, Li9/c;

    const-string v5, "clipboard"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/content/ClipboardManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    check-cast v5, Landroid/content/ClipboardManager;

    goto :goto_1

    :cond_5
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-lez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v7

    :goto_2
    if-eqz v5, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_8

    invoke-static {v1}, Lzc/p;->h(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v1

    move-object v11, v1

    goto :goto_4

    :cond_8
    move-object v11, v7

    :goto_4
    if-nez v11, :cond_a

    iget-object v1, v2, Lua/nav/c;->q:Lx9/l0;

    :cond_9
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lsc/q0;

    const-string v24, "\u0423 \u0431\u0443\u0444\u0435\u0440\u0456 \u043d\u0435\u043c\u0430\u0454 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442"

    const/16 v25, 0x7fff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v8 .. v25}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_a
    iget-object v1, v2, Lua/nav/c;->c:Ldd/k0;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v6, v11, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v11, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "paste_coords %.5f %.5f"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ldd/k0;->n(Ljava/lang/String;)V

    new-instance v8, Lua/nav/geocoding/Place;

    invoke-static {v11}, Lzc/g;->b(Lua/nav/routing/GeoPoint;)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v15, 0x78

    const-string v10, "\u041a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V

    invoke-virtual {v2, v8}, Lua/nav/c;->H(Lua/nav/geocoding/Place;)Lsc/d;

    move-result-object v1

    new-instance v7, Lt8/j;

    invoke-direct {v7, v1, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    if-eqz v7, :cond_d

    iget-object v1, v7, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lsc/d;

    iget-object v2, v7, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/GeoPoint;

    if-eqz v3, :cond_b

    check-cast v3, Lf2/n1;

    invoke-virtual {v3}, Lf2/n1;->a()V

    :cond_b
    if-eqz v1, :cond_c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1, v2, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-interface {v0, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lod/f1;->n:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, v0, Lod/f1;->m:Ljava/lang/Object;

    check-cast v2, Lua/nav/c;

    iget-object v3, v0, Lod/f1;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v4, v0, Lod/f1;->p:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lod/f1;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "show3d"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v2, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v1, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    if-nez v1, :cond_f

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v2, Lua/nav/c;->r:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->g:Lsc/d;

    if-nez v1, :cond_f

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_f

    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    goto :goto_7

    :cond_e
    const-wide/16 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
