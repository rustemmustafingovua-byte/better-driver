.class public final Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/camera/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/maplibre/android/camera/CameraPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-class v3, Lorg/maplibre/android/geometry/LatLng;

    if-le v1, v2, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b;->p(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/geometry/LatLng;

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/geometry/LatLng;

    goto :goto_0

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    new-array v2, v1, [D

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_2
    if-ge v0, v1, :cond_1

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    aput-wide v16, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    move-object/from16 v16, v2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 14
    :goto_4
    new-instance v2, Lorg/maplibre/android/camera/CameraPosition;

    invoke-direct/range {v2 .. v16}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    return-object v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;->newArray(I)[Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    .line 2
    new-array p0, p1, [Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method
