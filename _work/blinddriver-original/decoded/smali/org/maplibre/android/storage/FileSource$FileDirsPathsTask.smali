.class Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/storage/FileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDirsPathsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/storage/FileSource$FileDirsPathsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const/4 p0, 0x0

    .line 2
    aget-object v0, p1, p0

    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getResourcesCachePath(Landroid/content/Context;)Ljava/lang/String;

    .line 3
    aget-object p0, p1, p0

    invoke-static {p0}, Lorg/maplibre/android/storage/FileSource;->getInternalCachePath(Landroid/content/Context;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method
