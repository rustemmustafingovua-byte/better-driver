.class public final Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineRegion;->setObserver(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $observer:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineRegion;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->$observer:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->mapboxTileCountLimitExceeded$lambda$2(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionError;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionError;)V

    return-void
.end method

.method public static synthetic c(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->onStatusChanged$lambda$0(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    return-void
.end method

.method private static final mapboxTileCountLimitExceeded$lambda$2(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;->mapboxTileCountLimitExceeded(J)V

    :cond_0
    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionError;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;->onError(Lorg/maplibre/android/offline/OfflineRegionError;)V

    :cond_0
    return-void
.end method

.method private static final onStatusChanged$lambda$0(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;->onStatusChanged(Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public mapboxTileCountLimitExceeded(J)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$deliverMessages(Lorg/maplibre/android/offline/OfflineRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->$observer:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    new-instance v1, Lorg/maplibre/android/offline/d;

    invoke-direct {v1, p0, p1, p2}, Lorg/maplibre/android/offline/d;-><init>(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onError(Lorg/maplibre/android/offline/OfflineRegionError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$deliverMessages(Lorg/maplibre/android/offline/OfflineRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->$observer:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    new-instance v1, Lb/d;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStatusChanged(Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$deliverMessages(Lorg/maplibre/android/offline/OfflineRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->$observer:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    new-instance v1, Lb/d;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
