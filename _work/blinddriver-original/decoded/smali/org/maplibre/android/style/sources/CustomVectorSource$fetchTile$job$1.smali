.class final Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# annotations
.annotation runtime La9/e;
    c = "org.maplibre.android.style.sources.CustomVectorSource$fetchTile$job$1"
    f = "CustomVectorSource.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/style/sources/CustomVectorSource;->fetchTile(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La9/i;",
        "Li9/e;"
    }
.end annotation


# instance fields
.field final synthetic $tileId:Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

.field final synthetic $x:I

.field final synthetic $y:I

.field final synthetic $z:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/style/sources/CustomVectorSource;IIILorg/maplibre/android/style/sources/CustomVectorSource$TileID;Ly8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/sources/CustomVectorSource;",
            "III",
            "Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;",
            "Ly8/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    iput p2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$z:I

    iput p3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$x:I

    iput p4, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$y:I

    iput-object p5, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$tileId:Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ly8/c;",
            ")",
            "Ly8/c;"
        }
    .end annotation

    new-instance v0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;

    iget-object v1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    iget v2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$z:I

    iget v3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$x:I

    iget v4, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$y:I

    iget-object v5, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$tileId:Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;-><init>(Lorg/maplibre/android/style/sources/CustomVectorSource;IIILorg/maplibre/android/style/sources/CustomVectorSource$TileID;Ly8/c;)V

    iput-object p1, v0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->invoke(Lu9/t;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lu9/t;Ly8/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu9/t;",
            "Ly8/c;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v1, Lu9/q;->m:Lu9/q;

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    invoke-static {p1}, Lorg/maplibre/android/style/sources/CustomVectorSource;->access$getProvider$p(Lorg/maplibre/android/style/sources/CustomVectorSource;)Lorg/maplibre/android/style/sources/CustomVectorTileProvider;

    move-result-object p1

    iget v3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$z:I

    iget v5, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$x:I

    iget v6, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$y:I

    iput-object v2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->label:I

    invoke-interface {p1, v3, v5, v6, p0}, Lorg/maplibre/android/style/sources/CustomVectorTileProvider;->fetchTile(IIILy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lorg/maplibre/android/style/sources/TileData;

    iget-object v3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    iget v4, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$z:I

    iget v5, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$x:I

    iget v6, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$y:I

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/TileData;->getBytes$MapLibreAndroid()[B

    move-result-object v7

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/TileData;->getFormatId$MapLibreAndroid()I

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/maplibre/android/style/sources/CustomVectorSource;->access$nativeSetTileData(Lorg/maplibre/android/style/sources/CustomVectorSource;III[BI)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v2}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-interface {p1, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lu9/v0;

    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    invoke-static {v0}, Lorg/maplibre/android/style/sources/CustomVectorSource;->access$getActiveJobs$p(Lorg/maplibre/android/style/sources/CustomVectorSource;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$tileId:Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :goto_2
    :try_start_2
    iget-object v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    iget v3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$z:I

    iget v4, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$x:I

    iget v5, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$y:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Tile fetch failed"

    :cond_3
    invoke-static {v0, v3, v4, v5, p1}, Lorg/maplibre/android/style/sources/CustomVectorSource;->access$nativeSetTileError(Lorg/maplibre/android/style/sources/CustomVectorSource;IIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-interface {v2}, Lu9/t;->C()Ly8/h;

    move-result-object v0

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v0, Lu9/v0;

    iget-object v1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->this$0:Lorg/maplibre/android/style/sources/CustomVectorSource;

    invoke-static {v1}, Lorg/maplibre/android/style/sources/CustomVectorSource;->access$getActiveJobs$p(Lorg/maplibre/android/style/sources/CustomVectorSource;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$fetchTile$job$1;->$tileId:Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p1
.end method
