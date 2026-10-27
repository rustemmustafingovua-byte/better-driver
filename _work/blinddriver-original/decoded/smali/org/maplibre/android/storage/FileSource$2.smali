.class Lorg/maplibre/android/storage/FileSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/storage/FileSource;->internalSetResourcesCachePath(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$active:Z

.field final synthetic val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

.field final synthetic val$fileSource:Lorg/maplibre/android/storage/FileSource;


# direct methods
.method public constructor <init>(ZLorg/maplibre/android/storage/FileSource;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/maplibre/android/storage/FileSource$2;->val$active:Z

    iput-object p2, p0, Lorg/maplibre/android/storage/FileSource$2;->val$fileSource:Lorg/maplibre/android/storage/FileSource;

    iput-object p3, p0, Lorg/maplibre/android/storage/FileSource$2;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$active:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-interface {p0, p1}, Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$active:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$fileSource:Lorg/maplibre/android/storage/FileSource;

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    :cond_0
    invoke-static {}, Lorg/maplibre/android/storage/FileSource;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-static {p1}, Lorg/maplibre/android/storage/FileSource;->b(Ljava/lang/String;)V

    invoke-static {}, Lorg/maplibre/android/storage/FileSource;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Lorg/maplibre/android/storage/FileSource$2;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-interface {p0, p1}, Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
