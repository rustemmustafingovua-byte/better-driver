.class public final Lorg/maplibre/android/geometry/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/geometry/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final latLngList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->fromLatLngs(Ljava/util/List;)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/maplibre/android/exceptions/InvalidLatLngBoundsException;

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/exceptions/InvalidLatLngBoundsException;-><init>(I)V

    throw v0
.end method

.method public final include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;
    .locals 1

    const-string v0, "latLng"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final includes(Ljava/util/List;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/geometry/LatLngBounds$Builder;"
        }
    .end annotation

    const-string v0, "latLngs"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->latLngList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
