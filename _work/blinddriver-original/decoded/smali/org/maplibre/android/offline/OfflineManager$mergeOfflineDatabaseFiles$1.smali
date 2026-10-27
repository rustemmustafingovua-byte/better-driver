.class public final Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineManager;->mergeOfflineDatabaseFiles(Ljava/io/File;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $isTemporaryFile:Z

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineManager;


# direct methods
.method public constructor <init>(ZLjava/io/File;Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$isTemporaryFile:Z

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$file:Ljava/io/File;

    iput-object p3, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p4, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->onMerge$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static final onMerge$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;->onMerge([Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$isTemporaryFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0xb

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMerge([Lorg/maplibre/android/offline/OfflineRegion;)V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$isTemporaryFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    new-instance v2, Landroidx/fragment/app/e;

    const/16 v3, 0xc

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
