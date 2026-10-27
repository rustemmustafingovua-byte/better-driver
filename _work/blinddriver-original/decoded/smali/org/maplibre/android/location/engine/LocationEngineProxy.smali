.class public Lorg/maplibre/android/location/engine/LocationEngineProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/engine/LocationEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/maplibre/android/location/engine/LocationEngine;"
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field private final locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/engine/LocationEngineImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/engine/LocationEngineImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineImpl<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    return-void
.end method


# virtual methods
.method public getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lorg/maplibre/android/location/engine/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    return-void
.end method

.method public getListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-interface {v0, p1}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getListenersCount()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->listeners:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lorg/maplibre/android/location/engine/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/engine/LocationEngineProxy;->removeListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->removeLocationUpdates(Ljava/lang/Object;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V
    .locals 1

    .line 6
    const-string v0, "request == null"

    invoke-static {p1, v0}, Lorg/maplibre/android/location/engine/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/engine/LocationEngineCallback;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineRequest;",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "request == null"

    invoke-static {p1, v0}, Lorg/maplibre/android/location/engine/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-string v0, "callback == null"

    invoke-static {p2, v0}, Lorg/maplibre/android/location/engine/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;->locationEngineImpl:Lorg/maplibre/android/location/engine/LocationEngineImpl;

    invoke-virtual {p0, p2}, Lorg/maplibre/android/location/engine/LocationEngineProxy;->getListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;

    move-result-object p0

    if-nez p3, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 5
    :cond_0
    invoke-interface {v0, p1, p0, p3}, Lorg/maplibre/android/location/engine/LocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method
