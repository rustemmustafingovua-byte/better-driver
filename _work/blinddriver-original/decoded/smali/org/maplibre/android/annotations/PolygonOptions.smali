.class public final Lorg/maplibre/android/annotations/PolygonOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/annotations/PolygonOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private polygon:Lorg/maplibre/android/annotations/Polygon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/annotations/PolygonOptions$1;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/PolygonOptions$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/annotations/PolygonOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/maplibre/android/annotations/Polygon;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/Polygon;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/maplibre/android/annotations/Polygon;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/Polygon;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    const-class v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolygonOptions;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 9
    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->addAllHoles(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolygonOptions;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->alpha(F)Lorg/maplibre/android/annotations/PolygonOptions;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->fillColor(I)Lorg/maplibre/android/annotations/PolygonOptions;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/PolygonOptions;->strokeColor(I)Lorg/maplibre/android/annotations/PolygonOptions;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/annotations/PolygonOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/BasePointCollection;->addPoint(Lorg/maplibre/android/geometry/LatLng;)V

    return-object p0
.end method

.method public varargs add([Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lorg/maplibre/android/annotations/PolygonOptions;->add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolygonOptions;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/annotations/PolygonOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolygonOptions;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAllHoles(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;>;)",
            "Lorg/maplibre/android/annotations/PolygonOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolygonOptions;->addHole(Ljava/util/List;)Lorg/maplibre/android/annotations/PolygonOptions;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addHole(Ljava/util/List;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/annotations/PolygonOptions;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Polygon;->addHole(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs addHole([Ljava/util/List;)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/annotations/PolygonOptions;"
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lorg/maplibre/android/annotations/PolygonOptions;->addHole(Ljava/util/List;)Lorg/maplibre/android/annotations/PolygonOptions;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public alpha(F)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/BasePointCollection;->setAlpha(F)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-class v1, Lorg/maplibre/android/annotations/PolygonOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/annotations/PolygonOptions;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolygonOptions;->getAlpha()F

    move-result v1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getAlpha()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolygonOptions;->getFillColor()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolygonOptions;->getStrokeColor()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getHoles()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolygonOptions;->getHoles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v0
.end method

.method public fillColor(I)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Polygon;->setFillColor(I)V

    return-object p0
.end method

.method public getAlpha()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->getAlpha()F

    move-result p0

    return p0
.end method

.method public getFillColor()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->getFillColor()I

    move-result p0

    return p0
.end method

.method public getHoles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->getHoles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->getPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPolygon()Lorg/maplibre/android/annotations/Polygon;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->getStrokeColor()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getFillColor()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getStrokeColor()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getHoles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public strokeColor(I)Lorg/maplibre/android/annotations/PolygonOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolygonOptions;->polygon:Lorg/maplibre/android/annotations/Polygon;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Polygon;->setStrokeColor(I)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getHoles()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getFillColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolygonOptions;->getStrokeColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
