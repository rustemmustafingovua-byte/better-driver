.class public Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckFileWritePermissionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->listener:Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/io/File;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    .line 2
    :try_start_0
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->doInBackground([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->listener:Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;

    invoke-interface {p0}, Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;->onError()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->listener:Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;

    invoke-interface {p0}, Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;->onWritePermissionGranted()V

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->listener:Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;

    invoke-interface {p0}, Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;->onError()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
