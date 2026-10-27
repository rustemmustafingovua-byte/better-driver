.class public final Lorg/maplibre/android/style/sources/CustomVectorSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;
    }
.end annotation


# instance fields
.field private final activeJobs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;",
            "Lu9/v0;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lorg/maplibre/android/style/sources/CustomVectorTileProvider;

.field private final scope:Lu9/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/CustomVectorTileProvider;Lu9/t;II)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->provider:Lorg/maplibre/android/style/sources/CustomVectorTileProvider;

    .line 4
    iput-object p3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->scope:Lu9/t;

    .line 5
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {p0, p1, p4, p5}, Lorg/maplibre/android/style/sources/CustomVectorSource;->initialize(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/CustomVectorTileProvider;Lu9/t;IIILj9/g;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/16 p5, 0x12

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/maplibre/android/style/sources/CustomVectorSource;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/CustomVectorTileProvider;Lu9/t;II)V

    return-void
.end method

.method public static final synthetic access$getActiveJobs$p(Lorg/maplibre/android/style/sources/CustomVectorSource;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lorg/maplibre/android/style/sources/CustomVectorSource;)Lorg/maplibre/android/style/sources/CustomVectorTileProvider;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->provider:Lorg/maplibre/android/style/sources/CustomVectorTileProvider;

    return-object p0
.end method

.method public static final synthetic access$nativeSetTileData(Lorg/maplibre/android/style/sources/CustomVectorSource;III[BI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/maplibre/android/style/sources/CustomVectorSource;->nativeSetTileData(III[BI)V

    return-void
.end method

.method public static final synthetic access$nativeSetTileError(Lorg/maplibre/android/style/sources/CustomVectorSource;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/maplibre/android/style/sources/CustomVectorSource;->nativeSetTileError(IIILjava/lang/String;)V

    return-void
.end method

.method private final cancelTile(III)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    invoke-direct {v0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;-><init>(III)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu9/v0;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method private final fetchTile(III)V
    .locals 10
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v5, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    invoke-direct {v5, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;-><init>(III)V

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu9/v0;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v7}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v8, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->scope:Lu9/t;

    sget-object v9, Lu9/u;->m:Lu9/u;

    new-instance v0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;-><init>(Lorg/maplibre/android/style/sources/CustomVectorSource;IIILorg/maplibre/android/style/sources/CustomVectorSource$TileID;Ly8/c;)V

    const/4 p0, 0x1

    invoke-static {v8, v7, v9, v0, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    iget-object p1, v1, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu9/c1;->start()Z

    return-void
.end method

.method private final native initialize(Ljava/lang/String;II)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeInvalidateTile(III)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetTileData(III[BI)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetTileError(IIILjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final onAddedToMap()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method private final onRemovedFromMap()V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/v0;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource;->activeJobs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final invalidateTile(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomVectorSource;->nativeInvalidateTile(III)V

    return-void
.end method

.method public final setTileData(IIILorg/maplibre/android/style/sources/TileData;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/maplibre/android/style/sources/TileData;->getBytes$MapLibreAndroid()[B

    move-result-object v5

    invoke-virtual {p4}, Lorg/maplibre/android/style/sources/TileData;->getFormatId$MapLibreAndroid()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/maplibre/android/style/sources/CustomVectorSource;->nativeSetTileData(III[BI)V

    return-void
.end method
