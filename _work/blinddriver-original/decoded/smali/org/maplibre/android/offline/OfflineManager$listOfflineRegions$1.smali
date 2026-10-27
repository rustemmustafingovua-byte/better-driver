.class public final Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineManager;->listOfflineRegions(Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineManager;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->onList$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static final onList$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;->onList([Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0xa

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onList([Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0x9

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
