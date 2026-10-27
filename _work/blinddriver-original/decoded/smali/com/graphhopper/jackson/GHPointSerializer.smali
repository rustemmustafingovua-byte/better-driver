.class Lcom/graphhopper/jackson/GHPointSerializer;
.super Lb6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/graphhopper/util/shapes/GHPoint;Ls5/g;Lb6/r0;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Ls5/g;->k0()V

    .line 3
    invoke-virtual {p1}, Lcom/graphhopper/util/shapes/GHPoint;->toGeoJson()[Ljava/lang/Double;

    move-result-object p0

    array-length p1, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p0, p3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ls5/g;->V(D)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/GHPointSerializer;->serialize(Lcom/graphhopper/util/shapes/GHPoint;Ls5/g;Lb6/r0;)V

    return-void
.end method
