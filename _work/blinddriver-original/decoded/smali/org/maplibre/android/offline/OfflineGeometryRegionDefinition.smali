.class public final Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegionDefinition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion;
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

.field public static final Companion:Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion;


# instance fields
.field private geometry:Lorg/maplibre/geojson/Geometry;
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

    new-instance v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->Companion:Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion;

    new-instance v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDF)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;DDFZ)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    .line 5
    iput-wide p3, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    .line 6
    iput-wide p5, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    .line 7
    iput p7, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    .line 8
    iput-boolean p8, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Geometry;)[D

    move-result-object p0

    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    const/4 v1, 0x3

    aget-wide v1, p0, v1

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    const/4 v5, 0x1

    aget-wide v5, p0, v5

    const/4 v7, 0x0

    aget-wide v7, p0, v7

    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public final getGeometry()Lorg/maplibre/geojson/Geometry;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    return-object p0
.end method

.method public getIncludeIdeographs()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->includeIdeographs:Z

    return p0
.end method

.method public getMaxZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->maxZoom:D

    return-wide v0
.end method

.method public getMinZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->minZoom:D

    return-wide v0
.end method

.method public getPixelRatio()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->pixelRatio:F

    return p0
.end method

.method public getStyleURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->styleURL:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "shaperegion"

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->geometry:Lorg/maplibre/geojson/Geometry;

    invoke-static {p2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/geojson/Feature;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->getMinZoom()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->getMaxZoom()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->getPixelRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;->getIncludeIdeographs()Z

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
