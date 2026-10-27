.class public Lcom/graphhopper/reader/osm/SkipOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final skipNodes:Z

.field private final skipRelations:Z

.field private final skipWays:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipNodes:Z

    iput-boolean p2, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipWays:Z

    iput-boolean p3, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipRelations:Z

    return-void
.end method

.method public static none()Lcom/graphhopper/reader/osm/SkipOptions;
    .locals 2

    new-instance v0, Lcom/graphhopper/reader/osm/SkipOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/graphhopper/reader/osm/SkipOptions;-><init>(ZZZ)V

    return-object v0
.end method


# virtual methods
.method public isSkipNodes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipNodes:Z

    return p0
.end method

.method public isSkipRelations()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipRelations:Z

    return p0
.end method

.method public isSkipWays()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/SkipOptions;->skipWays:Z

    return p0
.end method
