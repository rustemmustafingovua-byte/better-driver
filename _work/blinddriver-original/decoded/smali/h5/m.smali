.class public final synthetic Lh5/m;
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


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lh5/m;->l:I

    iput-object p1, p0, Lh5/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Lh5/m;->n:Ljava/lang/Object;

    iput-object p3, p0, Lh5/m;->o:Ljava/lang/Object;

    iput-object p4, p0, Lh5/m;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 86

    move-object/from16 v0, p0

    iget v1, v0, Lh5/m;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lsc/v0;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/Tuning;

    iget-object v3, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v3, Li9/c;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object v4, v1, Lsc/v0;->j:Li9/e;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6, v1}, Lod/v6;->J(DLsc/v0;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lua/nav/Tuning;

    iget-object v0, v1, Lsc/v0;->b:Lsc/w0;

    sget-object v1, Lsc/w0;->l:Lsc/w0;

    if-ne v0, v1, :cond_0

    const-string v5, "custom"

    const/16 v84, -0x2

    const/16 v85, 0x3fff

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const-wide/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    const-wide/16 v73, 0x0

    const-wide/16 v75, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const-wide/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    invoke-static/range {v4 .. v85}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v4

    :cond_0
    invoke-interface {v3, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Ljd/b;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v4, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    const-string v5, "mapbox_token"

    invoke-virtual {v1, v5}, Ljd/b;->f(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-string v1, "\u041a\u043b\u044e\u0447 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e."

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lhd/e;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Lc/i;

    iget-object v3, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-virtual {v1}, Lhd/e;->c()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v2, v0}, Lc/i;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lhd/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lhd/e;

    iget-object v3, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v3, Lhd/a;

    iget-object v4, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    const-string v5, "d"

    invoke-static {v3, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "address"

    iget-object v7, v3, Lhd/a;->b:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "name"

    iget-object v7, v3, Lhd/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v2, v1, Lhd/e;->i:Z

    iget-object v5, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v6, "enabled"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lhd/e;->d()V

    :cond_2
    iget-object v1, v3, Lhd/a;->a:Ljava/lang/String;

    invoke-interface {v4, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v3, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v5, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v5, Lc/i;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    sget-object v7, Lt8/z;->a:Lt8/z;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lod/i3;

    sget-object v1, Lod/h4;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    aput-object v1, v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    :goto_2
    :try_start_0
    invoke-virtual {v5, v0}, Lc/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Lod/m;->Q(Landroid/content/Context;)V

    :cond_4
    return-object v7

    :pswitch_4
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/maps/MapView;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v4, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v4, Lua/nav/c;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-static {v1, v2}, Lod/g3;->f(Lorg/maplibre/android/maps/MapView;Lr0/u0;)Lua/nav/routing/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v4, Lua/nav/c;->z:Lx9/l0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v2, v4, Lua/nav/c;->d:Lad/j0;

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lua/nav/c;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v3, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v1, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_6

    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v3, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v3, Li9/a;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v5, v1, :cond_7

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/lang/Float;

    iget-object v1, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v1, Ln/c0;

    iget-object v3, v0, Lh5/m;->o:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ljava/lang/Float;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ln/b0;

    iget-object v0, v1, Ln/c0;->l:Ljava/lang/Float;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Ln/c0;->m:Ljava/lang/Float;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iput-object v8, v1, Ln/c0;->l:Ljava/lang/Float;

    iput-object v9, v1, Ln/c0;->m:Ljava/lang/Float;

    new-instance v5, Ln/y0;

    sget-object v7, Ln/d;->j:Ln/o1;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    iput-object v5, v1, Ln/c0;->o:Ln/y0;

    iget-object v0, v1, Ln/c0;->s:Ln/e0;

    iget-object v0, v0, Ln/e0;->b:Lr0/e1;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iput-boolean v2, v1, Ln/c0;->p:Z

    iput-boolean v4, v1, Ln/c0;->q:Z

    :cond_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    iget-object v1, v0, Lh5/m;->m:Ljava/lang/Object;

    check-cast v1, Lh5/n;

    iget-object v2, v0, Lh5/m;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    iget-object v4, v0, Lh5/m;->o:Ljava/lang/Object;

    check-cast v4, Lx4/l;

    iget-object v0, v0, Lh5/m;->p:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lh5/n;->c:Lg5/q;

    invoke-virtual {v5, v2}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object v5

    if-eqz v5, :cond_c

    iget v6, v5, Lg5/o;->b:I

    invoke-static {v6}, Lr0/i;->c(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v1, v1, Lh5/n;->b:Ly4/e;

    const-string v6, "Moving WorkSpec ("

    iget-object v7, v1, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v8

    sget-object v9, Ly4/e;->l:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") to the foreground"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Ly4/e;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly4/c0;

    if-eqz v6, :cond_b

    iget-object v8, v1, Ly4/e;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_a

    iget-object v8, v1, Ly4/e;->b:Landroid/content/Context;

    const-string v9, "ProcessorForegroundLck"

    invoke-static {v8, v9}, Lh5/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v1, Ly4/e;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v8, v1, Ly4/e;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Ly4/e;->b:Landroid/content/Context;

    iget-object v6, v6, Ly4/c0;->a:Lg5/o;

    invoke-static {v6}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lf5/b;->a(Landroid/content/Context;Lg5/j;Lx4/l;)Landroid/content/Intent;

    move-result-object v2

    iget-object v1, v1, Ly4/e;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v1

    sget-object v2, Lf5/b;->u:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v5, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ACTION_NOTIFY"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "KEY_NOTIFICATION_ID"

    iget v6, v4, Lx4/l;->a:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "KEY_FOREGROUND_SERVICE_TYPE"

    iget v6, v4, Lx4/l;->b:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "KEY_NOTIFICATION"

    iget-object v4, v4, Lx4/l;->c:Landroid/app/Notification;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "KEY_WORKSPEC_ID"

    iget-object v5, v1, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "KEY_GENERATION"

    iget v1, v1, Lg5/j;->b:I

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v3

    :goto_6
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_c
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
