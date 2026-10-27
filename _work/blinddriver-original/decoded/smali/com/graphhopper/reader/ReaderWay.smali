.class public Lcom/graphhopper/reader/ReaderWay;
.super Lcom/graphhopper/reader/ReaderElement;
.source "SourceFile"


# instance fields
.field protected final nodes:Lcom/carrotsearch/hppc/t0;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/graphhopper/reader/ReaderElement;-><init>(JLcom/graphhopper/reader/ReaderElement$Type;)V

    new-instance p1, Lcom/carrotsearch/hppc/t0;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/ReaderWay;->nodes:Lcom/carrotsearch/hppc/t0;

    return-void
.end method


# virtual methods
.method public getNodes()Lcom/carrotsearch/hppc/t0;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/ReaderWay;->nodes:Lcom/carrotsearch/hppc/t0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/reader/ReaderWay;->nodes:Lcom/carrotsearch/hppc/t0;

    iget v2, v2, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-super {p0}, Lcom/graphhopper/reader/ReaderElement;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Way id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nodes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tags:"

    invoke-static {v3, v0, p0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
