.class public Lcom/graphhopper/routing/util/CustomArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/AreaIndex$Area;


# instance fields
.field private final area:D

.field private final borders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpb/x;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lpb/x;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/CustomArea;->properties:Ljava/util/Map;

    iput-object p2, p0, Lcom/graphhopper/routing/util/CustomArea;->borders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/routing/util/b;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/graphhopper/routing/util/b;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-instance v0, Lcom/graphhopper/routing/util/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/util/CustomArea;->area:D

    return-void
.end method

.method public static fromJsonFeature(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v2

    invoke-virtual {v2}, Lpb/i;->E()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lpb/i;->A(I)Lpb/i;

    move-result-object v2

    instance-of v3, v2, Lpb/x;

    if-eqz v3, :cond_0

    check-cast v2, Lpb/x;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Custom area features must be of type \'Polygon\', but was: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v1, Lcom/graphhopper/routing/util/CustomArea;

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/graphhopper/routing/util/CustomArea;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getArea()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/util/CustomArea;->area:D

    return-wide v0
.end method

.method public getBorders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpb/x;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/CustomArea;->borders:Ljava/util/List;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/CustomArea;->properties:Ljava/util/Map;

    return-object p0
.end method
