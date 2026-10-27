.class public final Lfd/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;


# instance fields
.field public final synthetic a:Lfd/o;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/maplibre/android/offline/OfflineRegion;


# direct methods
.method public constructor <init>(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/k;->a:Lfd/o;

    iput-object p2, p0, Lfd/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lfd/k;->c:Lorg/maplibre/android/offline/OfflineRegion;

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

    iget-object p0, p0, Lfd/k;->a:Lfd/o;

    invoke-virtual {p0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfd/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lfd/k;->a:Lfd/o;

    invoke-static {v1, v0, p1}, Lfd/o;->d(Lfd/o;Ljava/lang/String;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    invoke-virtual {p1}, Lorg/maplibre/android/offline/OfflineRegionStatus;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lfd/k;->c:Lorg/maplibre/android/offline/OfflineRegion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion;->setDownloadState(I)V

    :cond_0
    return-void
.end method
