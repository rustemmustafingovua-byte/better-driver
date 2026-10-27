.class public Lcom/graphhopper/util/shapes/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/shapes/Shape;


# static fields
.field private static final factory:Lpb/m;


# instance fields
.field public final bbox:Lcom/graphhopper/util/shapes/BBox;

.field public final envelope:Lpb/h;

.field public final prepPolygon:Lrb/a;

.field public final rectangle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpb/m;

    invoke-direct {v0}, Lpb/m;-><init>()V

    sput-object v0, Lcom/graphhopper/util/shapes/Polygon;->factory:Lpb/m;

    return-void
.end method

.method public constructor <init>(Lrb/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    .line 3
    iget-object v0, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Lpb/i;

    .line 4
    invoke-virtual {v0}, Lpb/i;->N()Z

    move-result v0

    iput-boolean v0, p0, Lcom/graphhopper/util/shapes/Polygon;->rectangle:Z

    .line 5
    iget-object p1, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast p1, Lpb/i;

    .line 6
    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    .line 7
    invoke-static {p1}, Lcom/graphhopper/util/shapes/BBox;->fromEnvelope(Lpb/h;)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->bbox:Lcom/graphhopper/util/shapes/BBox;

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 8

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 10
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 11
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lpb/a;

    const/4 v1, 0x0

    move v2, v1

    .line 12
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 13
    new-instance v3, Lpb/a;

    aget-wide v4, p2, v2

    aget-wide v6, p1, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lpb/a;-><init>(DD)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    array-length p1, p1

    aget-object p2, v0, v1

    aput-object p2, v0, p1

    .line 15
    new-instance p1, Lrb/d;

    sget-object p2, Lcom/graphhopper/util/shapes/Polygon;->factory:Lpb/m;

    new-instance v1, Lqb/c;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lqb/c;-><init>([Lpb/a;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lpb/s;

    invoke-direct {v0, v1, p2}, Lpb/s;-><init>(Lpb/d;Lpb/m;)V

    .line 17
    new-instance v1, Lpb/x;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p2}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    .line 18
    invoke-direct {p1, v1}, Lrb/d;-><init>(Lpb/x;)V

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    .line 19
    invoke-virtual {v1}, Lpb/i;->N()Z

    move-result p1

    iput-boolean p1, p0, Lcom/graphhopper/util/shapes/Polygon;->rectangle:Z

    .line 20
    invoke-virtual {v1}, Lpb/i;->z()Lpb/h;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    .line 21
    invoke-static {p1}, Lcom/graphhopper/util/shapes/BBox;->fromEnvelope(Lpb/h;)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Polygon;->bbox:Lcom/graphhopper/util/shapes/BBox;

    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Points must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    array-length p2, p2

    const-string v0, "Points must be of equal length but was "

    const-string v1, " vs. "

    .line 24
    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lpb/x;)Lcom/graphhopper/util/shapes/Polygon;
    .locals 2

    new-instance v0, Lcom/graphhopper/util/shapes/Polygon;

    new-instance v1, Lrb/d;

    invoke-direct {v1, p0}, Lrb/d;-><init>(Lpb/x;)V

    invoke-direct {v0, v1}, Lcom/graphhopper/util/shapes/Polygon;-><init>(Lrb/d;)V

    return-object v0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    sget-object v0, Lcom/graphhopper/util/shapes/Polygon;->factory:Lpb/m;

    new-instance v1, Lpb/a;

    invoke-direct {v1, p3, p4, p1, p2}, Lpb/a;-><init>(DD)V

    invoke-virtual {v0, v1}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object p1

    invoke-interface {p0, p1}, Lrb/a;->d(Lpb/i;)Z

    move-result p0

    return p0
.end method

.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->bbox:Lcom/graphhopper/util/shapes/BBox;

    return-object p0
.end method

.method public getMaxLat()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    iget-wide v0, p0, Lpb/h;->o:D

    return-wide v0
.end method

.method public getMaxLon()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    iget-wide v0, p0, Lpb/h;->m:D

    return-wide v0
.end method

.method public getMinLat()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    iget-wide v0, p0, Lpb/h;->n:D

    return-wide v0
.end method

.method public getMinLon()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->envelope:Lpb/h;

    iget-wide v0, p0, Lpb/h;->l:D

    return-wide v0
.end method

.method public intersects(Lcom/graphhopper/util/PointList;)Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PointList;->getCachedLineString(Z)Lpb/q;

    move-result-object p1

    invoke-interface {p0, p1}, Lrb/a;->a(Lpb/i;)Z

    move-result p0

    return p0
.end method

.method public isRectangle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/shapes/Polygon;->rectangle:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    check-cast v0, Lg5/c;

    iget-object v0, v0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Lpb/i;

    invoke-virtual {v0}, Lpb/i;->F()I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Polygon;->prepPolygon:Lrb/a;

    check-cast p0, Lg5/c;

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Lpb/i;

    invoke-virtual {p0}, Lpb/i;->E()I

    move-result p0

    const-string v1, " points,"

    const-string v2, " geometries)"

    const-string v3, "polygon ("

    invoke-static {v3, v0, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
