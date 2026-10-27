.class public final Lfd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lfd/o;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lj9/u;

.field public final synthetic e:Lorg/maplibre/android/offline/OfflineRegion;

.field public final synthetic f:Lorg/json/JSONObject;

.field public final synthetic g:Li9/c;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLfd/o;Ljava/lang/String;Lj9/u;Lorg/maplibre/android/offline/OfflineRegion;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfd/f;->a:Z

    iput-object p2, p0, Lfd/f;->b:Lfd/o;

    iput-object p3, p0, Lfd/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lfd/f;->d:Lj9/u;

    iput-object p5, p0, Lfd/f;->e:Lorg/maplibre/android/offline/OfflineRegion;

    iput-object p6, p0, Lfd/f;->f:Lorg/json/JSONObject;

    iput-object p7, p0, Lfd/f;->g:Li9/c;

    iput-object p8, p0, Lfd/f;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final mapboxTileCountLimitExceeded(J)V
    .locals 0

    return-void
.end method

.method public final onError(Lorg/maplibre/android/offline/OfflineRegionError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionError;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lfd/f;->b:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lfd/f;->a:Z

    iget-object v1, p0, Lfd/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lfd/f;->b:Lfd/o;

    if-eqz v0, :cond_0

    invoke-static {v2, v1, p1}, Lfd/o;->d(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfd/f;->d:Lj9/u;

    iget-boolean v0, p1, Lj9/u;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj9/u;->l:Z

    iget-object p1, p0, Lfd/f;->e:Lorg/maplibre/android/offline/OfflineRegion;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/maplibre/android/offline/OfflineRegion;->setDownloadState(I)V

    iget-object p1, p0, Lfd/f;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lfd/f;->f:Lorg/json/JSONObject;

    iget-object p0, p0, Lfd/f;->g:Li9/c;

    invoke-static {v2, v1, v0, p0, p1}, Lfd/o;->a(Lfd/o;Ljava/lang/String;Lorg/json/JSONObject;Li9/c;Ljava/util/List;)V

    :cond_1
    return-void
.end method
