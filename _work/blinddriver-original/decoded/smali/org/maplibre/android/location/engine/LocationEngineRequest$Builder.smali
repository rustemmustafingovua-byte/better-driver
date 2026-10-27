.class public final Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/engine/LocationEngineRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private displacement:F

.field private fastestInterval:J

.field private final interval:J

.field private maxWaitTime:J

.field private priority:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->interval:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->priority:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->displacement:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->maxWaitTime:J

    iput-wide p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->displacement:F

    return p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->interval:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->maxWaitTime:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->priority:I

    return p0
.end method


# virtual methods
.method public build()Lorg/maplibre/android/location/engine/LocationEngineRequest;
    .locals 2

    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/engine/LocationEngineRequest;-><init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;I)V

    return-object v0
.end method

.method public setDisplacement(F)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->displacement:F

    return-object p0
.end method

.method public setFastestInterval(J)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    return-object p0
.end method

.method public setMaxWaitTime(J)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->maxWaitTime:J

    return-object p0
.end method

.method public setPriority(I)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->priority:I

    return-object p0
.end method
