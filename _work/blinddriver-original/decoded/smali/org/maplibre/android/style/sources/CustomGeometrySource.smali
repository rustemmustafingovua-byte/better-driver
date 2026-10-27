.class public final Lorg/maplibre/android/style/sources/CustomGeometrySource;
.super Lorg/maplibre/android/style/sources/Source;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/style/sources/CustomGeometrySource$Companion;,
        Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;,
        Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/style/sources/CustomGeometrySource$Companion;

.field public static final THREAD_POOL_LIMIT:I = 0x4

.field public static final THREAD_PREFIX:Ljava/lang/String; = "CustomGeom"

.field private static final poolCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final awaitingTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;",
            "Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final executorLock:Ljava/util/concurrent/locks/Lock;

.field private final inProgressTasksMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/sources/CustomGeometrySource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/style/sources/CustomGeometrySource$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->Companion:Lorg/maplibre/android/style/sources/CustomGeometrySource$Companion;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->poolCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/CustomGeometrySourceOptions;Lorg/maplibre/android/style/sources/GeometryTileProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->provider:Lorg/maplibre/android/style/sources/GeometryTileProvider;

    .line 2
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    .line 3
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/GeometryTileProvider;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/maplibre/android/style/sources/CustomGeometrySourceOptions;

    invoke-direct {v0}, Lorg/maplibre/android/style/sources/CustomGeometrySourceOptions;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/maplibre/android/style/sources/CustomGeometrySource;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/CustomGeometrySourceOptions;Lorg/maplibre/android/style/sources/GeometryTileProvider;)V

    return-void
.end method

.method public static final synthetic access$getExecutor$p(Lorg/maplibre/android/style/sources/CustomGeometrySource;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static final synthetic access$getPoolCount$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->poolCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$setTileData(Lorg/maplibre/android/style/sources/CustomGeometrySource;Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/geojson/FeatureCollection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->setTileData(Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method private final cancelTile(III)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-direct {v1, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;-><init>(III)V

    iget-object p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;-><init>(Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/android/style/sources/GeometryTileProvider;Ljava/util/Map;Ljava/util/Map;Lorg/maplibre/android/style/sources/CustomGeometrySource;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p1

    throw p0
.end method

.method private final executeRequest(Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final fetchTile(III)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-direct {v1, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;-><init>(III)V

    new-instance v0, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;

    iget-object v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->provider:Lorg/maplibre/android/style/sources/GeometryTileProvider;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;-><init>(Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/android/style/sources/GeometryTileProvider;Ljava/util/Map;Ljava/util/Map;Lorg/maplibre/android/style/sources/CustomGeometrySource;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object p0, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    iget-object p1, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    invoke-direct {v5, v0}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executeRequest(Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_0
    iget-object p2, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v5, Lorg/maplibre/android/style/sources/CustomGeometrySource;->awaitingTasksMap:Ljava/util/Map;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {v5, v0}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executeRequest(Lorg/maplibre/android/style/sources/CustomGeometrySource$GeometryTileRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p1

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private final native initialize(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final isCancelled(III)Z
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->inProgressTasksMap:Ljava/util/Map;

    new-instance v0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-direct {v0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private final native nativeInvalidateBounds(Lorg/maplibre/android/geometry/LatLngBounds;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeInvalidateTile(III)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetTileData(IIILorg/maplibre/geojson/FeatureCollection;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native querySourceFeatures([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final releaseThreads()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final setTileData(Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;Lorg/maplibre/geojson/FeatureCollection;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getZ()I

    move-result v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getX()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->getY()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->nativeSetTileData(IIILorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method private final startThreads()V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;

    invoke-direct {v8}, Lorg/maplibre/android/style/sources/CustomGeometrySource$startThreads$1;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-object v1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    :goto_1
    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource;->executorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final invalidateRegion(Lorg/maplibre/android/geometry/LatLngBounds;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->nativeInvalidateBounds(Lorg/maplibre/android/geometry/LatLngBounds;)V

    return-void
.end method

.method public final invalidateTile(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->nativeInvalidateTile(III)V

    return-void
.end method

.method public final querySourceFeatures(Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->querySourceFeatures([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;

    move-result-object p0

    .line 3
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setTileData(IIILorg/maplibre/geojson/FeatureCollection;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/maplibre/android/style/sources/CustomGeometrySource;->nativeSetTileData(IIILorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method
