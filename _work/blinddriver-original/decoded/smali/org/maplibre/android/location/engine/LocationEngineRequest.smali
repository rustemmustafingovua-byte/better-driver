.class public Lorg/maplibre/android/location/engine/LocationEngineRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
    }
.end annotation


# static fields
.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x1

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x0

.field public static final PRIORITY_LOW_POWER:I = 0x2

.field public static final PRIORITY_NO_POWER:I = 0x3


# instance fields
.field private final displacement:F

.field private final fastestInterval:J

.field private final interval:J

.field private final maxWaitTime:J

.field private final priority:I


# direct methods
.method private constructor <init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->c(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->interval:J

    .line 4
    invoke-static {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->e(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)I

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->priority:I

    .line 5
    invoke-static {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->a(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)F

    move-result v0

    iput v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->displacement:F

    .line 6
    invoke-static {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->d(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->maxWaitTime:J

    .line 7
    invoke-static {p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->b(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;-><init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;

    iget-wide v2, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->interval:J

    iget-wide v4, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->interval:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->priority:I

    iget v3, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->priority:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->displacement:F

    iget v3, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->displacement:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->maxWaitTime:J

    iget-wide v4, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->maxWaitTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    iget-wide p0, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getDisplacement()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->displacement:F

    return p0
.end method

.method public getFastestInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->interval:J

    return-wide v0
.end method

.method public getMaxWaitTime()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->maxWaitTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->priority:I

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->interval:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->displacement:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->maxWaitTime:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
