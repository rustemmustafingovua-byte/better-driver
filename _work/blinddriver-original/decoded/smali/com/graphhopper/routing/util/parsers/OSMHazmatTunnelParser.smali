.class public Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final TUNNEL_CATEGORY_NAMES:[Ljava/lang/String;


# instance fields
.field private final hazTunnelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/HazmatTunnel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/graphhopper/routing/ev/HazmatTunnel;->values()[Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->TUNNEL_CATEGORY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->TUNNEL_CATEGORY_NAMES:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/HazmatTunnel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->hazTunnelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 5

    sget-object p4, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->TUNNEL_CATEGORY_NAMES:[Ljava/lang/String;

    const-string v0, "hazmat:adr_tunnel_cat"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/routing/ev/HazmatTunnel;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object p3

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->hazTunnelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_0
    const-string v0, "hazmat:tunnel_cat"

    invoke-virtual {p3, v0, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/routing/ev/HazmatTunnel;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object p3

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->hazTunnelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_1
    const-string p4, "tunnel"

    const-string v0, "yes"

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/graphhopper/routing/ev/HazmatTunnel;->values()[Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object p4

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hazmat:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "no"

    invoke-virtual {p3, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMHazmatTunnelParser;->hazTunnelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    aget-object p3, p4, v0

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
