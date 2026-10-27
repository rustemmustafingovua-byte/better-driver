.class Lorg/maplibre/android/storage/FileSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/storage/FileSource;->setResourcesCachePath(Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/storage/FileSource$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/maplibre/android/storage/FileSource$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lorg/maplibre/android/storage/FileSource$1;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Path is not writable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/android/storage/FileSource$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-FileSource"

    invoke-static {v1, v0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/storage/FileSource$1;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-interface {p0, v0}, Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onWritePermissionGranted()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/storage/FileSource$1;->val$applicationContext:Landroid/content/Context;

    const-string v1, "MapboxSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fileSourceResourcesCachePath"

    iget-object v2, p0, Lorg/maplibre/android/storage/FileSource$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lorg/maplibre/android/storage/FileSource$1;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/maplibre/android/storage/FileSource$1;->val$path:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/storage/FileSource$1;->val$callback:Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/storage/FileSource;->c(Landroid/content/Context;Ljava/lang/String;Lorg/maplibre/android/storage/FileSource$ResourcesCachePathChangeCallback;)V

    return-void
.end method
