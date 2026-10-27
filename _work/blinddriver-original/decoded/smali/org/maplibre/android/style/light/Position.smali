.class public Lorg/maplibre/android/style/light/Position;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private azimuthalAngle:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private polarAngle:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private radialCoordinate:F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/style/light/Position;->radialCoordinate:F

    iput p2, p0, Lorg/maplibre/android/style/light/Position;->azimuthalAngle:F

    iput p3, p0, Lorg/maplibre/android/style/light/Position;->polarAngle:F

    return-void
.end method

.method public static fromPosition(FFF)Lorg/maplibre/android/style/light/Position;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lorg/maplibre/android/style/light/Position;

    invoke-direct {v0, p0, p1, p2}, Lorg/maplibre/android/style/light/Position;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/light/Position;

    iget v2, p1, Lorg/maplibre/android/style/light/Position;->radialCoordinate:F

    iget v3, p0, Lorg/maplibre/android/style/light/Position;->radialCoordinate:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p1, Lorg/maplibre/android/style/light/Position;->azimuthalAngle:F

    iget v3, p0, Lorg/maplibre/android/style/light/Position;->azimuthalAngle:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget p1, p1, Lorg/maplibre/android/style/light/Position;->polarAngle:F

    iget p0, p0, Lorg/maplibre/android/style/light/Position;->polarAngle:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/maplibre/android/style/light/Position;->radialCoordinate:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/maplibre/android/style/light/Position;->azimuthalAngle:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lorg/maplibre/android/style/light/Position;->polarAngle:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Position{radialCoordinate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/maplibre/android/style/light/Position;->radialCoordinate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", azimuthalAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/style/light/Position;->azimuthalAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", polarAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/maplibre/android/style/light/Position;->polarAngle:F

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lm/a;->n(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
