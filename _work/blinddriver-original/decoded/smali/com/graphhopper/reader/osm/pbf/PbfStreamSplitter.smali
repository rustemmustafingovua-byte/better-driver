.class public Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private dataBlockCount:I

.field private dis:Ljava/io/DataInputStream;

.field private eof:Z

.field private nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dataBlockCount:I

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->eof:Z

    return-void
.end method

.method private getNextBlob()V
    .locals 7

    const-string v0, "Processing blob of type "

    const-string v1, "Reading header for blob "

    :try_start_0
    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->log:Ljava/util/logging/Logger;

    iget v5, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dataBlockCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dataBlockCount:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->readHeader(I)Lmc/f;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lmc/f;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->readRawBlob(Lmc/f;)[B

    move-result-object v0

    new-instance v2, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    invoke-virtual {v1}, Lmc/f;->v()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    return-void

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->eof:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to get next blob from PBF stream."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readHeader(I)Lmc/f;
    .locals 0

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    sget-object p0, Lmc/f;->t:Lmc/d;

    invoke-virtual {p0, p1}, Lf8/d;->b([B)Lf8/o4;

    move-result-object p0

    check-cast p0, Lmc/f;

    return-object p0
.end method

.method private readRawBlob(Lmc/f;)[B
    .locals 0

    iget p1, p1, Lmc/f;->q:I

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->eof:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->getNextBlob()V

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->nextBlob:Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->next()Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfStreamSplitter;->dis:Ljava/io/DataInputStream;

    return-void
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
