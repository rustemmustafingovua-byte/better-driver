.class public final Lorg/maplibre/android/geometry/VisibleRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/geometry/VisibleRegion$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/VisibleRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/geometry/VisibleRegion$Companion;


# instance fields
.field public final farLeft:Lorg/maplibre/android/geometry/LatLng;

.field public final farRight:Lorg/maplibre/android/geometry/LatLng;

.field public final latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

.field public final nearLeft:Lorg/maplibre/android/geometry/LatLng;

.field public final nearRight:Lorg/maplibre/android/geometry/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/geometry/VisibleRegion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/VisibleRegion$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/geometry/VisibleRegion;->Companion:Lorg/maplibre/android/geometry/VisibleRegion$Companion;

    new-instance v0, Lorg/maplibre/android/geometry/VisibleRegion$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/VisibleRegion$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/geometry/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-class v2, Lorg/maplibre/android/geometry/LatLngBounds;

    const-class v3, Lorg/maplibre/android/geometry/LatLng;

    if-le v0, v1, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b;->p(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b;->p(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b;->p(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b;->p(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lb/b;->A(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lorg/maplibre/android/geometry/LatLngBounds;

    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    return-void

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iput-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lorg/maplibre/android/geometry/LatLngBounds;

    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V
    .locals 1

    const-string v0, "farLeft"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "farRight"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearLeft"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nearRight"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "latLngBounds"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 16
    iput-object p2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    .line 17
    iput-object p3, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    .line 18
    iput-object p4, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    .line 19
    iput-object p5, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

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

    instance-of v0, p1, Lorg/maplibre/android/geometry/VisibleRegion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    check-cast p1, Lorg/maplibre/android/geometry/VisibleRegion;

    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    iget-object p1, p1, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x5a

    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/lit16 v0, v0, 0xb4

    const v3, 0xf4240

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v1

    :cond_3
    add-int/lit16 v1, v1, 0xb4

    const p0, 0x3b9aca00

    mul-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    iget-object v1, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object v2, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[farLeft ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], farRight ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], nearLeft ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], nearRight ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], latLngBounds ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->farRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->nearRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
