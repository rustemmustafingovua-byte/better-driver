.class public final Lorg/maplibre/android/geometry/LatLngQuad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/geometry/LatLngQuad$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/LatLngQuad;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/geometry/LatLngQuad$Companion;


# instance fields
.field private final bottomLeft:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final bottomRight:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final topLeft:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final topRight:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/geometry/LatLngQuad$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/LatLngQuad$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngQuad;->Companion:Lorg/maplibre/android/geometry/LatLngQuad$Companion;

    new-instance v0, Lorg/maplibre/android/geometry/LatLngQuad$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLngQuad$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngQuad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "topLeft"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topRight"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomRight"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomLeft"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    iput-object p2, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    iput-object p3, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    iput-object p4, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

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
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lorg/maplibre/android/geometry/LatLngQuad;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.maplibre.android.geometry.LatLngQuad"

    invoke-static {p1, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/maplibre/android/geometry/LatLngQuad;

    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    iget-object v3, p1, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p1, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBottomLeft()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public final getBottomRight()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public final getTopLeft()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public final getTopRight()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->topRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomRight:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lorg/maplibre/android/geometry/LatLngQuad;->bottomLeft:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/geometry/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
