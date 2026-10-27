.class public Lcom/graphhopper/routing/util/parsers/OSMMtbRatingParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final mtbRatingEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/IntEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbRatingParser;->mtbRatingEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 3

    const-string p4, "mtb:scale"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p3, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p3, v2

    goto :goto_0

    :catch_0
    :cond_2
    move p3, p4

    :goto_0
    if-lez p3, :cond_3

    const/16 v0, 0x8

    if-ge p3, v0, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbRatingParser;->mtbRatingEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    :cond_3
    return-void
.end method
