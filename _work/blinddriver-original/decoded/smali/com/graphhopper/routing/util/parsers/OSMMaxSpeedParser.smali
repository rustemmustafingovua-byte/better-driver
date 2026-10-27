.class public Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field public static final MAXSPEED_NONE:D = -1.0


# instance fields
.field private final carMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->carMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "EncodedValue for maxSpeed must be able to store two directions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "maxspeed:backward"

    goto :goto_0

    :cond_0
    const-string p1, "maxspeed:forward"

    :goto_0
    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeedTag(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-string p1, "maxspeed"

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeedTag(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static parseMaxSpeedTag(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)D
    .locals 8

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxspeedString(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p1, v0, v2

    const-wide v4, 0x4062c00000000000L    # 150.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz p1, :cond_0

    cmpl-double p1, v0, v6

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    cmpl-double p1, v0, v6

    if-nez p1, :cond_1

    const-string p1, "trunk_link"

    const-string v0, "primary"

    const-string v1, "motorway"

    const-string v6, "motorway_link"

    const-string v7, "trunk"

    filled-new-array {v1, v6, v7, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "highway"

    invoke-virtual {p0, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v4

    :cond_1
    return-wide v2
.end method

.method public static parseMaxspeedString(Ljava/lang/String;)D
    .locals 7

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-string v0, "walk"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    return-wide v0

    :cond_1
    const-string v0, "none"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_2
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "knots"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "km"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "kph"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-lez v0, :cond_3

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-wide v3, 0x3ff9bfdf7e8038a0L    # 1.609344

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-wide v3, 0x3ffda1cac083126fL    # 1.852

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-lez v5, :cond_6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-double/2addr v5, v3

    const-wide v3, 0x4013333333333333L    # 4.8

    cmpg-double p0, v5, v3

    if-gez p0, :cond_7

    return-wide v1

    :cond_7
    return-wide v5

    :catch_0
    return-wide v1
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 13

    move-object/from16 v0, p3

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->carMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v5

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->carMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v11

    const/4 v8, 0x1

    move v9, p1

    move-object v10, p2

    invoke-interface/range {v7 .. v12}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method
