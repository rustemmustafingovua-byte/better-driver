.class public final Lorg/maplibre/android/offline/OfflineRegionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final completedResourceCount:J

.field private final completedResourceSize:J

.field private final completedTileCount:J

.field private final completedTileSize:J

.field private final downloadState:I

.field private final isRequiredResourceCountPrecise:Z

.field private final requiredResourceCount:J


# direct methods
.method private constructor <init>(IJJJJJZ)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->downloadState:I

    iput-wide p2, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedResourceCount:J

    iput-wide p4, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedResourceSize:J

    iput-wide p6, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedTileCount:J

    iput-wide p8, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedTileSize:J

    iput-wide p10, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->requiredResourceCount:J

    iput-boolean p12, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->isRequiredResourceCountPrecise:Z

    return-void
.end method


# virtual methods
.method public final getCompletedResourceCount()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedResourceCount:J

    return-wide v0
.end method

.method public final getCompletedResourceSize()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedResourceSize:J

    return-wide v0
.end method

.method public final getCompletedTileCount()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedTileCount:J

    return-wide v0
.end method

.method public final getCompletedTileSize()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedTileSize:J

    return-wide v0
.end method

.method public final getDownloadState()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->downloadState:I

    return p0
.end method

.method public final getRequiredResourceCount()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->requiredResourceCount:J

    return-wide v0
.end method

.method public final isComplete()Z
    .locals 4

    iget-wide v0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->completedResourceCount:J

    iget-wide v2, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->requiredResourceCount:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRequiredResourceCountPrecise()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/offline/OfflineRegionStatus;->isRequiredResourceCountPrecise:Z

    return p0
.end method
