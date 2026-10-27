.class public Lcom/graphhopper/routing/util/parsers/OSMMaxHeightParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final heightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxHeightParser;->heightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 1

    const-string p4, "maxheight"

    const-string v0, "maxheight:physical"

    filled-new-array {p4, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxHeightParser;->heightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-static {p1, p2, p3, p0, p4}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->extractMeter(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/List;)V

    return-void
.end method
