.class public interface abstract Lorg/maplibre/android/location/engine/LocationEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
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

.method public abstract removeLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V
.end method

.method public abstract requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/engine/LocationEngineCallback;Landroid/os/Looper;)V
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
.end method
