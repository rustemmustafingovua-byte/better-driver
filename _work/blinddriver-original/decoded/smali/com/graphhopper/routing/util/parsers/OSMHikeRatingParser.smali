.class public Lcom/graphhopper/routing/util/parsers/OSMHikeRatingParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final sacScaleEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/IntEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMHikeRatingParser;->sacScaleEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 1

    const-string p4, "sac_scale"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    const-string v0, "hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "mountain_hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "demanding_mountain_hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "alpine_hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p3, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "demanding_alpine_hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p3, 0x5

    goto :goto_0

    :cond_4
    const-string v0, "difficult_alpine_hiking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x6

    goto :goto_0

    :cond_5
    move p3, p4

    :goto_0
    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHikeRatingParser;->sacScaleEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    :cond_6
    return-void
.end method
