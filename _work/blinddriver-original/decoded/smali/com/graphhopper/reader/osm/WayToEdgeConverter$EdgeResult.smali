.class public Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WayToEdgeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeResult"
.end annotation


# instance fields
.field private final fromEdges:Lcom/carrotsearch/hppc/x;

.field private final nodes:Lcom/carrotsearch/hppc/x;

.field private final toEdges:Lcom/carrotsearch/hppc/x;

.field private final viaEdges:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->fromEdges:Lcom/carrotsearch/hppc/x;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    invoke-direct {p1, p2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->viaEdges:Lcom/carrotsearch/hppc/x;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    invoke-direct {p1, p3}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->toEdges:Lcom/carrotsearch/hppc/x;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->nodes:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->fromEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->nodes:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->toEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->viaEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method


# virtual methods
.method public getFromEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->fromEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getNodes()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->nodes:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getToEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->toEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getViaEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->viaEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method
