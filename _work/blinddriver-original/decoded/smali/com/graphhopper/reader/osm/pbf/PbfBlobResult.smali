.class public Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private complete:Z

.field private entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;"
        }
    .end annotation
.end field

.field private ex:Ljava/lang/Exception;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->complete:Z

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->success:Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no success result stored"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->ex:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getEntities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->entities:Ljava/util/List;

    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->ex:Ljava/lang/Exception;

    return-object p0
.end method

.method public isComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->complete:Z

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->success:Z

    return p0
.end method

.method public storeFailureResult(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->complete:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->success:Z

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->ex:Ljava/lang/Exception;

    return-void
.end method

.method public storeSuccessResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->entities:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->complete:Z

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobResult;->success:Z

    return-void
.end method
