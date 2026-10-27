.class public Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final chConfig:Lcom/graphhopper/storage/CHConfig;

.field private final chStorage:Lcom/graphhopper/storage/CHStorage;

.field private final lazyTime:D

.field private final neighborTime:D

.field private final periodTime:D

.field private final shortcuts:J

.field private final totalPrepareTime:J


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/CHStorage;JDDDJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->chStorage:Lcom/graphhopper/storage/CHStorage;

    .line 4
    iput-wide p3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->shortcuts:J

    .line 5
    iput-wide p5, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->lazyTime:D

    .line 6
    iput-wide p7, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->periodTime:D

    .line 7
    iput-wide p9, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->neighborTime:D

    .line 8
    iput-wide p11, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->totalPrepareTime:J

    .line 9
    iput-object p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->chConfig:Lcom/graphhopper/storage/CHConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/CHStorage;JDDDJI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;-><init>(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/CHStorage;JDDDJ)V

    return-void
.end method


# virtual methods
.method public getCHConfig()Lcom/graphhopper/storage/CHConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->chConfig:Lcom/graphhopper/storage/CHConfig;

    return-object p0
.end method

.method public getCHStorage()Lcom/graphhopper/storage/CHStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->chStorage:Lcom/graphhopper/storage/CHStorage;

    return-object p0
.end method

.method public getLazyTime()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->lazyTime:D

    return-wide v0
.end method

.method public getNeighborTime()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->neighborTime:D

    return-wide v0
.end method

.method public getPeriodTime()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->periodTime:D

    return-wide v0
.end method

.method public getShortcuts()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->shortcuts:J

    return-wide v0
.end method

.method public getTotalPrepareTime()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->totalPrepareTime:J

    return-wide v0
.end method
