.class public final Lorg/maplibre/android/annotations/MarkerOptions;
.super Lorg/maplibre/android/annotations/BaseMarkerOptions;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/annotations/BaseMarkerOptions<",
        "Lorg/maplibre/android/annotations/Marker;",
        "Lorg/maplibre/android/annotations/MarkerOptions;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/annotations/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/annotations/MarkerOptions$1;

    invoke-direct {v0}, Lorg/maplibre/android/annotations/MarkerOptions$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/annotations/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;-><init>()V

    .line 3
    const-class v0, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    new-instance v1, Lorg/maplibre/android/annotations/Icon;

    invoke-direct {v1, v0, p1}, Lorg/maplibre/android/annotations/Icon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 10
    invoke-virtual {p0, v1}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon(Lorg/maplibre/android/annotations/Icon;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    :cond_0
    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_a

    const-class v2, Lorg/maplibre/android/annotations/MarkerOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lorg/maplibre/android/annotations/MarkerOptions;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/maplibre/android/geometry/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/maplibre/android/annotations/Icon;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v2

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    :cond_9
    return v0

    :cond_a
    :goto_3
    return v1
.end method

.method public getIcon()Lorg/maplibre/android/annotations/Icon;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon:Lorg/maplibre/android/annotations/Icon;

    return-object p0
.end method

.method public getMarker()Lorg/maplibre/android/annotations/Marker;
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/maplibre/android/annotations/Marker;

    iget-object v2, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon:Lorg/maplibre/android/annotations/Icon;

    iget-object v3, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/maplibre/android/annotations/Marker;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/annotations/Icon;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Lorg/maplibre/android/exceptions/InvalidMarkerPositionException;

    invoke-direct {p0}, Lorg/maplibre/android/exceptions/InvalidMarkerPositionException;-><init>()V

    throw p0
.end method

.method public getPosition()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getThis()Lorg/maplibre/android/annotations/MarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public getThis()Lorg/maplibre/android/annotations/MarkerOptions;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v3

    invoke-virtual {v3}, Lorg/maplibre/android/annotations/Icon;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/MarkerOptions;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method
