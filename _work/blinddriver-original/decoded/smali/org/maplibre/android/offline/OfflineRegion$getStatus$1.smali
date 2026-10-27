.class public final Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineRegion;->getStatus(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineRegion;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->onStatus$lambda$0(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineRegion;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static final onStatus$lambda$0(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineRegion;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;->onStatus(Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0xe

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStatus(Lorg/maplibre/android/offline/OfflineRegionStatus;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0xf

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
