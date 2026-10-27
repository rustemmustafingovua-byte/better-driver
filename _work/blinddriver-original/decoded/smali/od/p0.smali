.class public final synthetic Lod/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/Style$OnStyleLoaded;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lr0/u0;

.field public final synthetic e:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZZLr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/p0;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lod/p0;->b:Z

    iput-boolean p3, p0, Lod/p0;->c:Z

    iput-object p4, p0, Lod/p0;->d:Lr0/u0;

    iput-object p5, p0, Lod/p0;->e:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lorg/maplibre/android/maps/Style;)V
    .locals 3

    const-string v0, "style"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "building-3d"

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_0
    iget-object v0, p0, Lod/p0;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lod/p0;->b:Z

    invoke-static {p1, v0, v1}, Lod/g3;->r0(Lorg/maplibre/android/maps/Style;Landroid/content/Context;Z)V

    :try_start_0
    invoke-static {p1}, Lod/w6;->b(Lorg/maplibre/android/maps/Style;)V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    iget-wide v0, v0, Lua/nav/Tuning;->R:D

    invoke-static {p1, v0, v1}, Lod/w6;->a(Lorg/maplibre/android/maps/Style;D)V

    sget-object p1, Lt8/z;->a:Lt8/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "labels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MapScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lod/p0;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lod/p0;->d:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lod/p0;->e:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method
