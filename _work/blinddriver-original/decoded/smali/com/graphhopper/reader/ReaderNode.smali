.class public Lcom/graphhopper/reader/ReaderNode;
.super Lcom/graphhopper/reader/ReaderElement;
.source "SourceFile"


# instance fields
.field private final lat:D

.field private final lon:D


# direct methods
.method public constructor <init>(JDD)V
    .locals 1

    .line 1
    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/graphhopper/reader/ReaderElement;-><init>(JLcom/graphhopper/reader/ReaderElement$Type;)V

    .line 2
    iput-wide p3, p0, Lcom/graphhopper/reader/ReaderNode;->lat:D

    .line 3
    iput-wide p5, p0, Lcom/graphhopper/reader/ReaderNode;->lon:D

    return-void
.end method

.method public constructor <init>(JDDLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JDD",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-direct {p0, p1, p2, v0, p7}, Lcom/graphhopper/reader/ReaderElement;-><init>(JLcom/graphhopper/reader/ReaderElement$Type;Ljava/util/Map;)V

    .line 5
    iput-wide p3, p0, Lcom/graphhopper/reader/ReaderNode;->lat:D

    .line 6
    iput-wide p5, p0, Lcom/graphhopper/reader/ReaderNode;->lon:D

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/reader/ReaderNode;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/reader/ReaderNode;->lon:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderNode;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderNode;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->hasTags()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->tagsToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
