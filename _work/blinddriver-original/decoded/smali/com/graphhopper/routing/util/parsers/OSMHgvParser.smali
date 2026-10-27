.class public Lcom/graphhopper/routing/util/parsers/OSMHgvParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field hgvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Hgv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Hgv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMHgvParser;->hgvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 6

    const-string p4, "hgv:conditional"

    const-string v0, ""

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "@"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {p4}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->conditionalWeightToTons(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lcom/graphhopper/routing/ev/Hgv;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Hgv;

    move-result-object p3

    goto :goto_1

    :cond_0
    const-string p4, "hgv"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHgvParser;->hgvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void
.end method
