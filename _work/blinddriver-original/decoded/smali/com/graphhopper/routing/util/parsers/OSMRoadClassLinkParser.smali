.class public Lcom/graphhopper/routing/util/parsers/OSMRoadClassLinkParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final linkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadClassLinkParser;->linkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    const-string p4, "highway"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "_link"

    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadClassLinkParser;->linkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p0, p3, p1, p2, p4}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_0
    return-void
.end method
