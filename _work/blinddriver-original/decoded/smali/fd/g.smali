.class public final Lfd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lfd/o;

.field public final synthetic d:Lorg/json/JSONObject;

.field public final synthetic e:Li9/c;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLfd/o;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/g;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lfd/g;->b:Z

    iput-object p3, p0, Lfd/g;->c:Lfd/o;

    iput-object p4, p0, Lfd/g;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lfd/g;->e:Li9/c;

    iput-object p6, p0, Lfd/g;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCreate(Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 10

    const-string v0, "region"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "area"

    iget-object v4, p0, Lfd/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lfd/g;->c:Lfd/o;

    iget-object v7, p0, Lfd/g;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfd/g;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lua/nav/routing/GeoPoint;

    const-string v1, "lat"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v5, "lon"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v0, v1, v2, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iput-object v0, v3, Lfd/o;->g:Lua/nav/routing/GeoPoint;

    const-string v0, "km"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lfd/o;->h:I

    :cond_0
    new-instance v5, Lj9/u;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lfd/f;

    iget-object v8, p0, Lfd/g;->e:Li9/c;

    iget-object v9, p0, Lfd/g;->f:Ljava/util/List;

    iget-boolean v2, p0, Lfd/g;->b:Z

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lfd/f;-><init>(ZLfd/o;Ljava/lang/String;Lj9/u;Lorg/maplibre/android/offline/OfflineRegion;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V

    invoke-virtual {v6, v1}, Lorg/maplibre/android/offline/OfflineRegion;->setObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V

    const/4 p0, 0x1

    invoke-virtual {v6, p0}, Lorg/maplibre/android/offline/OfflineRegion;->setDownloadState(I)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfd/g;->c:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfd/o;->f()V

    return-void
.end method
