.class Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapImageConversionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;",
        "Ljava/lang/Void;",
        "[",
        "Lorg/maplibre/android/maps/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private nativeMap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/maps/NativeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;->nativeMap:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;->doInBackground([Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)[Lorg/maplibre/android/maps/Image;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)[Lorg/maplibre/android/maps/Image;
    .locals 3

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-static {v2}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/maplibre/android/maps/Image;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/maplibre/android/maps/Image;

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lorg/maplibre/android/maps/Image;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;->onPostExecute([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public onPostExecute([Lorg/maplibre/android/maps/Image;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Style$BitmapImageConversionTask;->nativeMap:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/NativeMap;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->addImages([Lorg/maplibre/android/maps/Image;)V

    :cond_0
    return-void
.end method
