.class public final Lorg/maplibre/android/location/engine/LocationEngineResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/engine/LocationEngineResult;->locations:Ljava/util/List;

    return-void
.end method

.method public static create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    new-instance p0, Lorg/maplibre/android/location/engine/LocationEngineResult;

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/LocationEngineResult;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static create(Ljava/util/List;)Lorg/maplibre/android/location/engine/LocationEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p0, Lorg/maplibre/android/location/engine/LocationEngineResult;

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/LocationEngineResult;-><init>(Ljava/util/List;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lorg/maplibre/android/location/engine/LocationEngineResult;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/LocationEngineResult;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static extractAndroidResult(Landroid/content/Intent;)Lorg/maplibre/android/location/engine/LocationEngineResult;
    .locals 1

    invoke-static {p0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-static {p0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->create(Landroid/location/Location;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static extractResult(Landroid/content/Intent;)Lorg/maplibre/android/location/engine/LocationEngineResult;
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/location/engine/LocationEngineResult;->extractAndroidResult(Landroid/content/Intent;)Lorg/maplibre/android/location/engine/LocationEngineResult;

    move-result-object p0

    return-object p0
.end method

.method private static hasResult(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/engine/LocationEngineResult;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineResult;->locations:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    return-object p0
.end method

.method public getLocations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/location/engine/LocationEngineResult;->locations:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
