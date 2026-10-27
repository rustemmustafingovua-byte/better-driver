.class public final Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/sources/CustomGeometrySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeometryTileRequest"
.end annotation


# instance fields
.field private final awaiting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

.field private final inProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lorg/maplibre/android/style/sources/GeometryTileProvider;

.field private final sourceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/android/style/sources/GeometryTileProvider;Ljava/util/Map;Ljava/util/Map;Lorg/maplibre/android/style/sources/CustomGeometrySource;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Lorg/maplibre/android/style/sources/GeometryTileProvider;",
            "Ljava/util/Map<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    iput-object p2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->provider:Lorg/maplibre/android/style/sources/GeometryTileProvider;

    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iput-object p4, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->sourceRef:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    iget-object p1, p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :try_start_3
    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    iget-object v4, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    invoke-direct {p0}, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->provider:Lorg/maplibre/android/style/sources/GeometryTileProvider;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v1, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-virtual {v2}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getZ()I

    move-result v2

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-virtual {v3}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getX()I

    move-result v3

    iget-object v4, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-virtual {v4}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getY()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->from(III)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v1

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-virtual {v2}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getZ()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/maplibre/android/style/sources/GeometryTileProvider;->getFeaturesForBounds(Lorg/maplibre/android/geometry/LatLngBounds;I)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/CustomGeometrySource;

    invoke-direct {p0}, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-static {v1, v2, v0}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->access$setTileData(Lorg/maplibre/android/style/sources/CustomGeometrySource;Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->inProgress:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/style/sources/CustomGeometrySource;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v3}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->access$getExecutor$p(Lorg/maplibre/android/style/sources/CustomGeometrySource;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->awaiting:Ljava/util/Map;

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;->id:Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_8
    monitor-exit v1

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_3
    monitor-exit v0

    throw p0

    :goto_4
    :try_start_9
    monitor-exit v1

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    monitor-exit v0

    throw p0
.end method
