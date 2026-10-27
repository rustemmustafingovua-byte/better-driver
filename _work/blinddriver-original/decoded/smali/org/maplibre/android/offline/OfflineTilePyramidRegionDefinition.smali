.class public final Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegionDefinition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion;


# instance fields
.field private final bounds:Lorg/maplibre/android/geometry/LatLngBounds;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private includeIdeographs:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private maxZoom:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private minZoom:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pixelRatio:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private styleURL:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->Companion:Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion;

    new-instance v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 11
    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;-><init>()V

    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object v0

    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDF)V
    .locals 10
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    .line 1
    invoke-direct/range {v1 .. v9}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 5
    iput-wide p3, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    .line 6
    iput-wide p5, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    .line 7
    iput p7, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    .line 8
    iput-boolean p8, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->bounds:Lorg/maplibre/android/geometry/LatLngBounds;

    return-object p0
.end method

.method public getIncludeIdeographs()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->includeIdeographs:Z

    return p0
.end method

.method public getMaxZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->maxZoom:D

    return-wide v0
.end method

.method public getMinZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->minZoom:D

    return-wide v0
.end method

.method public getPixelRatio()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->pixelRatio:F

    return p0
.end method

.method public getStyleURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->styleURL:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "tileregion"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p2

    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p2

    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p2

    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p2

    iget-wide v0, p2, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getMinZoom()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getMaxZoom()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getPixelRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;->getIncludeIdeographs()Z

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
