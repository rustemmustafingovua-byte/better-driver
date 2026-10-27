.class Lcom/graphhopper/routing/DirectionResolver$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/DirectionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field final lat:D

.field final lon:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    iput-wide p3, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Point;

    iget-wide v2, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    iget-wide v4, p1, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    invoke-static {v2, v3, v4, v5}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    iget-wide p0, p1, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    invoke-static {v2, v3, p0, p1}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    iget-wide v2, p0, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
