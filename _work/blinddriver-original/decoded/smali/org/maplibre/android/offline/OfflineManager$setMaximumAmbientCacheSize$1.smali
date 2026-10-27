.class public final Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/offline/OfflineManager;->setMaximumAmbientCacheSize(JLorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

.field final synthetic this$0:Lorg/maplibre/android/offline/OfflineManager;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->onSuccess$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda$1(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda$0(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;->onSuccess()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getFileSource$p(Lorg/maplibre/android/offline/OfflineManager;)Lorg/maplibre/android/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    new-instance v2, Lorg/maplibre/android/offline/b;

    const/4 v3, 0x4

    invoke-direct {v2, v1, p0, p1, v3}, Lorg/maplibre/android/offline/b;-><init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    invoke-static {v0}, Lorg/maplibre/android/offline/OfflineManager;->access$getHandler$p(Lorg/maplibre/android/offline/OfflineManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->this$0:Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineManager$setMaximumAmbientCacheSize$1;->$callback:Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;

    new-instance v2, Lorg/maplibre/android/offline/c;

    const/4 v3, 0x4

    invoke-direct {v2, v1, p0, v3}, Lorg/maplibre/android/offline/c;-><init>(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$FileSourceCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
