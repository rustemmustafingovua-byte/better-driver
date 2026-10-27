.class public Lcom/graphhopper/routing/util/parsers/OSMHazmatWaterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final hazWaterEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/HazmatWater;",
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
            "Lcom/graphhopper/routing/ev/HazmatWater;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatWaterParser;->hazWaterEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 2

    const-string p4, "no"

    const-string v0, "hazmat:water"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatWaterParser;->hazWaterEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    sget-object p3, Lcom/graphhopper/routing/ev/HazmatWater;->NO:Lcom/graphhopper/routing/ev/HazmatWater;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_0
    const-string p4, "permissive"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatWaterParser;->hazWaterEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    sget-object p3, Lcom/graphhopper/routing/ev/HazmatWater;->PERMISSIVE:Lcom/graphhopper/routing/ev/HazmatWater;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_1
    return-void
.end method
