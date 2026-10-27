.class public final Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/sources/CustomVectorSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TileID"
.end annotation


# instance fields
.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    iput p2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    iput p3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;IIIILjava/lang/Object;)Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->copy(III)Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    return p0
.end method

.method public final copy(III)Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;
    .locals 0

    new-instance p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;-><init>(III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;

    iget v1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    iget v3, p1, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    iget v3, p1, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    iget p1, p1, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getX()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    return p0
.end method

.method public final getZ()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->z:I

    iget v1, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->x:I

    iget p0, p0, Lorg/maplibre/android/style/sources/CustomVectorSource$TileID;->y:I

    const-string v2, ", x="

    const-string v3, ", y="

    const-string v4, "TileID(z="

    invoke-static {v4, v0, v2, v1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
