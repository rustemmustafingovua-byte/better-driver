.class public Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/engine/LocationEngineImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl$AndroidLocationEngineCallbackTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/android/location/engine/LocationEngineImpl<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidLocationEngine"


# instance fields
.field currentProvider:Ljava/lang/String;

.field final locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "passive"

    iput-object v0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->currentProvider:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getBestProvider(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getCriteria(I)Landroid/location/Criteria;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "passive"

    return-object p0
.end method

.method public static getCriteria(I)Landroid/location/Criteria;
    .locals 2

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-static {p0}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->priorityToAccuracy(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-static {p0}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->priorityToPowerRequirement(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method private static priorityToAccuracy(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method private static priorityToPowerRequirement(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Landroid/location/LocationListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)",
            "Landroid/location/LocationListener;"
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl$AndroidLocationEngineCallbackTransport;

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl$AndroidLocationEngineCallbackTransport;-><init>(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    return-object p0
.end method

.method public bridge synthetic createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->createListener(Lorg/maplibre/android/location/engine/LocationEngineCallback;)Landroid/location/LocationListener;

    move-result-object p0

    return-object p0
.end method

.method public getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->currentProvider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getLastLocationFor(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getLastLocationFor(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/maplibre/android/location/engine/LocationEngineResult;->create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Last location unavailable"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/engine/LocationEngineCallback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public getLastLocationFor(Ljava/lang/String;)Landroid/location/Location;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AndroidLocationEngine"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public removeLocationUpdates(Landroid/location/LocationListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeLocationUpdates(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->removeLocationUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getBestProvider(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->currentProvider:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getInterval()J

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getDisplacement()F

    move-result v5

    move-object v6, p2

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getPriority()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->getBestProvider(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->currentProvider:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getInterval()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getDisplacement()F

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public bridge synthetic requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    check-cast p2, Landroid/location/LocationListener;

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/location/engine/AndroidLocationEngineImpl;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method
