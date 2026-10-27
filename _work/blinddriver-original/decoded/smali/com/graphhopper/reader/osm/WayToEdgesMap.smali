.class public Lcom/graphhopper/reader/osm/WayToEdgesMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESERVED:I = -0x1


# instance fields
.field private final edges:Lcom/carrotsearch/hppc/x;

.field private lastWay:J

.field private final offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

.field private final offsets:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/y0;

    invoke-direct {v0}, Lcom/carrotsearch/hppc/y0;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->edges:Lcom/carrotsearch/hppc/x;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->lastWay:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/reader/osm/WayToEdgesMap;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->edges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method


# virtual methods
.method public getEdges(J)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    check-cast v0, Lcom/carrotsearch/hppc/y0;

    invoke-virtual {v0, p1, p2}, Lcom/carrotsearch/hppc/y0;->l(J)I

    move-result p1

    if-gez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    check-cast p2, Lcom/carrotsearch/hppc/y0;

    iget-object p2, p2, Lcom/carrotsearch/hppc/y0;->m:[I

    aget p1, p2, p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->edges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p1

    :goto_0
    new-instance v1, Ln5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p2, v1, Ln5/a;->a:I

    new-instance p2, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/graphhopper/reader/osm/WayToEdgesMap$1;-><init>(Lcom/graphhopper/reader/osm/WayToEdgesMap;ILn5/a;I)V

    return-object p2
.end method

.method public putIfReserved(JI)V
    .locals 4

    if-ltz p3, :cond_3

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->lastWay:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    check-cast v0, Lcom/carrotsearch/hppc/y0;

    invoke-virtual {v0, p1, p2}, Lcom/carrotsearch/hppc/y0;->l(J)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    move-object v2, v1

    check-cast v2, Lcom/carrotsearch/hppc/y0;

    iget-object v2, v2, Lcom/carrotsearch/hppc/y0;->m:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    check-cast v1, Lcom/carrotsearch/hppc/y0;

    iget-object v1, v1, Lcom/carrotsearch/hppc/y0;->m:[I

    aget v3, v1, v0

    aput v2, v1, v0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsets:Lcom/carrotsearch/hppc/x;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->edges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iput-wide p1, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->lastWay:J

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "You need to add all edges for way: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " consecutively"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->edges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p3}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "edge must be >= 0, but was: "

    invoke-static {p3, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reserve(J)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgesMap;->offsetIndexByWay:Lcom/carrotsearch/hppc/x0;

    const/4 v0, -0x1

    check-cast p0, Lcom/carrotsearch/hppc/y0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/carrotsearch/hppc/y0;->o(IJ)I

    return-void
.end method
