.class public Lcom/graphhopper/routing/util/parsers/OSMRoundaboutParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMRoundaboutParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 1

    const-string p4, "roundabout"

    const-string v0, "junction"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "circular"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMRoundaboutParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p0, p3, p1, p2, p4}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void
.end method
