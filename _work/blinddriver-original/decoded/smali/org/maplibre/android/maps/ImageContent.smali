.class public final Lorg/maplibre/android/maps/ImageContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/maps/ImageContent;->left:F

    iput p2, p0, Lorg/maplibre/android/maps/ImageContent;->top:F

    iput p3, p0, Lorg/maplibre/android/maps/ImageContent;->right:F

    iput p4, p0, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/maplibre/android/maps/ImageContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/maplibre/android/maps/ImageContent;

    iget v0, p0, Lorg/maplibre/android/maps/ImageContent;->left:F

    iget v2, p1, Lorg/maplibre/android/maps/ImageContent;->left:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/maplibre/android/maps/ImageContent;->top:F

    iget v2, p1, Lorg/maplibre/android/maps/ImageContent;->top:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/maplibre/android/maps/ImageContent;->right:F

    iget v2, p1, Lorg/maplibre/android/maps/ImageContent;->right:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget p0, p0, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    iget p1, p1, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getContentArray()[F
    .locals 5

    iget v0, p0, Lorg/maplibre/android/maps/ImageContent;->left:F

    iget v1, p0, Lorg/maplibre/android/maps/ImageContent;->top:F

    iget v2, p0, Lorg/maplibre/android/maps/ImageContent;->right:F

    iget p0, p0, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    const/4 v0, 0x3

    aput p0, v3, v0

    return-object v3
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/maplibre/android/maps/ImageContent;->left:F

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

    iget v2, p0, Lorg/maplibre/android/maps/ImageContent;->top:F

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

    iget v2, p0, Lorg/maplibre/android/maps/ImageContent;->right:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ left: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/maplibre/android/maps/ImageContent;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/maps/ImageContent;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/maplibre/android/maps/ImageContent;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/maplibre/android/maps/ImageContent;->bottom:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
