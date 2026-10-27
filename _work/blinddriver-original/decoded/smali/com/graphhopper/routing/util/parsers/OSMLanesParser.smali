.class public Lcom/graphhopper/routing/util/parsers/OSMLanesParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/IntEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMLanesParser;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 3

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/String;

    const-string v1, "lanes"

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p3, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ";|\\."

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    if-lez v0, :cond_2

    :try_start_0
    aget-object p3, p3, p4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-le p3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p3

    :catch_0
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMLanesParser;->lanesEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0, p4, p1, p2, v2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void
.end method
