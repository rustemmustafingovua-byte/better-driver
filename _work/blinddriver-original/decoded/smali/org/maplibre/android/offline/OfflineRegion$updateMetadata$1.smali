.class public final Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineRegion;->updateMetadata([BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineRegion;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineRegion;[BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->onUpdate$lambda$0(Lorg/maplibre/android/offline/OfflineRegion;[BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static final onUpdate$lambda$0(Lorg/maplibre/android/offline/OfflineRegion;[BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/offline/OfflineRegion;->access$setMetadata$p(Lorg/maplibre/android/offline/OfflineRegion;[B)V

    invoke-interface {p2, p1}, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;->onUpdate([B)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    new-instance v1, Lb/d;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdate([B)V
    .locals 4

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineRegion;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineRegion;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->this$0:Lorg/maplibre/android/offline/OfflineRegion;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->$callback:Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0x11

    invoke-direct {v2, v1, p1, p0, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
