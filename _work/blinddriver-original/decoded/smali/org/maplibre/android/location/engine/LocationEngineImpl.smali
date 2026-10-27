.class public interface abstract Lorg/maplibre/android/location/engine/LocationEngineImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeLocationUpdates(Landroid/app/PendingIntent;)V
.end method

.method public abstract removeLocationUpdates(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V
.end method

.method public abstract requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Ljava/lang/Object;Landroid/os/Looper;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineRequest;",
            "TT;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation
.end method
