.class public final Lorg/maplibre/android/annotations/PolylineOptions;
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
            "Lorg/maplibre/android/annotations/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private polyline:Lorg/maplibre/android/annotations/Polyline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/annotations/PolylineOptions$1;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/PolylineOptions$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/annotations/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/maplibre/android/annotations/Polyline;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/maplibre/android/annotations/Polyline;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/Polyline;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    const-class v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolylineOptions;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolylineOptions;->alpha(F)Lorg/maplibre/android/annotations/PolylineOptions;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolylineOptions;->color(I)Lorg/maplibre/android/annotations/PolylineOptions;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/PolylineOptions;->width(F)Lorg/maplibre/android/annotations/PolylineOptions;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/annotations/PolylineOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/BasePointCollection;->addPoint(Lorg/maplibre/android/geometry/LatLng;)V

    return-object p0
.end method

.method public varargs add([Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lorg/maplibre/android/annotations/PolylineOptions;->add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolylineOptions;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/annotations/PolylineOptions;"
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

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/PolylineOptions;->add(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/PolylineOptions;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public alpha(F)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/BasePointCollection;->setAlpha(F)V

    return-object p0
.end method

.method public color(I)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Polyline;->setColor(I)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const-class v2, Lorg/maplibre/android/annotations/PolylineOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/annotations/PolylineOptions;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getAlpha()F

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getAlpha()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getColor()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_7

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public getAlpha()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->getAlpha()F

    move-result p0

    return p0
.end method

.method public getColor()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polyline;->getColor()I

    move-result p0

    return p0
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

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BasePointCollection;->getPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPolyline()Lorg/maplibre/android/annotations/Polyline;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polyline;->getWidth()F

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getColor()I

    move-result v4

    add-int/2addr v4, v0

    mul-int/2addr v4, v3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v4, v0

    mul-int/2addr v4, v3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v4, v2

    return v4
.end method

.method public width(F)Lorg/maplibre/android/annotations/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/PolylineOptions;->polyline:Lorg/maplibre/android/annotations/Polyline;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Polyline;->setWidth(F)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/PolylineOptions;->getWidth()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
