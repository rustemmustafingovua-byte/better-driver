.class public final Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/sources/CustomGeometrySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileID"
.end annotation


# instance fields
.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    iput p2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    iput p3, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    check-cast p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;

    iget v3, p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    iget v3, p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    iget p1, p1, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getX()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    return p0
.end method

.method public final getZ()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    iget v1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public final setX(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->x:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->y:I

    return-void
.end method

.method public final setZ(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/style/sources/CustomGeometrySource$TileID;->z:I

    return-void
.end method
