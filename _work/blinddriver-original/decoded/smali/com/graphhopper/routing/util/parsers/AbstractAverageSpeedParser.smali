.class public abstract Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field protected final avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field protected final ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method


# virtual methods
.method public final getAverageSpeedEnc()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V

    return-void
.end method

.method public setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getSmallestNonZeroValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface/range {p0 .. p5}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getSmallestNonZeroValue()D

    move-result-wide p2

    div-double/2addr p2, v2

    const-string p0, "Speed was "

    const-string v0, " but cannot be lower than "

    invoke-static {p4, p5, p0, v0}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
