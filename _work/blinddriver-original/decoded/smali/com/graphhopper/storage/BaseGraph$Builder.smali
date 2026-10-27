.class public Lcom/graphhopper/storage/BaseGraph$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/BaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bytes:J

.field private final bytesForFlags:I

.field private directory:Lcom/graphhopper/storage/Directory;

.field private segmentSize:I

.field private withElevation:Z

.field private withTurnCosts:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/graphhopper/storage/RAMDirectory;

    invoke-direct {v0}, Lcom/graphhopper/storage/RAMDirectory;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->directory:Lcom/graphhopper/storage/Directory;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withElevation:Z

    .line 6
    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts:Z

    const-wide/16 v0, 0x64

    .line 7
    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->bytes:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->segmentSize:I

    .line 9
    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->bytesForFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/util/EncodingManager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/routing/util/EncodingManager;->getBytesForFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/BaseGraph$Builder;-><init>(I)V

    .line 2
    invoke-virtual {p1}, Lcom/graphhopper/routing/util/EncodingManager;->needsTurnCostsSupport()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts(Z)Lcom/graphhopper/storage/BaseGraph$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/graphhopper/storage/BaseGraph;
    .locals 6

    new-instance v0, Lcom/graphhopper/storage/BaseGraph;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->directory:Lcom/graphhopper/storage/Directory;

    iget-boolean v2, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withElevation:Z

    iget-boolean v3, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts:Z

    iget v4, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->segmentSize:I

    iget v5, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->bytesForFlags:I

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/storage/BaseGraph;-><init>(Lcom/graphhopper/storage/Directory;ZZII)V

    return-object v0
.end method

.method public create()Lcom/graphhopper/storage/BaseGraph;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$Builder;->build()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->bytes:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraph;->create(J)Lcom/graphhopper/storage/BaseGraph;

    return-object v0
.end method

.method public set3D(Z)Lcom/graphhopper/storage/BaseGraph$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withElevation:Z

    return-object p0
.end method

.method public setBytes(J)Lcom/graphhopper/storage/BaseGraph$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->bytes:J

    return-object p0
.end method

.method public setDir(Lcom/graphhopper/storage/Directory;)Lcom/graphhopper/storage/BaseGraph$Builder;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->directory:Lcom/graphhopper/storage/Directory;

    return-object p0
.end method

.method public setSegmentSize(I)Lcom/graphhopper/storage/BaseGraph$Builder;
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->segmentSize:I

    return-object p0
.end method

.method public withTurnCosts(Z)Lcom/graphhopper/storage/BaseGraph$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts:Z

    return-object p0
.end method
