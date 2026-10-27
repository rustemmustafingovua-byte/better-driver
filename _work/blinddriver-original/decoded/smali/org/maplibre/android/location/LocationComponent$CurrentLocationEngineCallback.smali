.class final Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/engine/LocationEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrentLocationEngineCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
        "Lorg/maplibre/android/location/engine/LocationEngineResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/maplibre/android/location/LocationComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;->componentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "Mbgl-LocationComponent"

    const-string v0, "Failed to obtain location update"

    invoke-static {p0, v0, p1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/maplibre/android/location/engine/LocationEngineResult;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;->onSuccess(Lorg/maplibre/android/location/engine/LocationEngineResult;)V

    return-void
.end method

.method public onSuccess(Lorg/maplibre/android/location/engine/LocationEngineResult;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;->componentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/location/LocationComponent;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/maplibre/android/location/LocationComponent;->o(Lorg/maplibre/android/location/LocationComponent;Landroid/location/Location;Z)V

    :cond_0
    return-void
.end method
