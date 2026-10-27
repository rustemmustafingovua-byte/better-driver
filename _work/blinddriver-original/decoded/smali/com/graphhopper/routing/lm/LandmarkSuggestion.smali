.class public Lcom/graphhopper/routing/lm/LandmarkSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final box:Lcom/graphhopper/util/shapes/BBox;

.field private final nodeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/graphhopper/util/shapes/BBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/graphhopper/util/shapes/BBox;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->nodeIds:Ljava/util/List;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->box:Lcom/graphhopper/util/shapes/BBox;

    return-void
.end method

.method public static readLandmarks(Ljava/lang/String;Lcom/graphhopper/storage/index/LocationIndex;)Lcom/graphhopper/routing/lm/LandmarkSuggestion;
    .locals 12

    sget-object v5, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/graphhopper/util/shapes/BBox;->createInverse(Z)Lcom/graphhopper/util/shapes/BBox;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    move-object v8, v0

    move-object v9, v1

    move v0, v7

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "#BBOX:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/shapes/BBox;->parseTwoPoints(Ljava/lang/String;)Lcom/graphhopper/util/shapes/BBox;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v2, p1

    goto/16 :goto_2

    :cond_2
    invoke-static {v1}, Lcom/graphhopper/util/shapes/GHPoint;->fromStringLonLat(Ljava/lang/String;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v10

    if-eqz v10, :cond_4

    add-int/lit8 v11, v0, 0x1

    iget-wide v1, v10, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v3, v10, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object p1

    move-object v2, v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cannot find close node found for landmark suggestion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object p1, v2

    move v0, v11

    goto :goto_0

    :cond_3
    iget-wide v0, v10, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v3, v10, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-virtual {v8, v0, v1, v3, v4}, Lcom/graphhopper/util/shapes/BBox;->update(DD)V

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for point "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    move-object p1, v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/graphhopper/routing/lm/LandmarkSuggestion;

    invoke-direct {p0, v6, v8}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;-><init>(Ljava/util/List;Lcom/graphhopper/util/shapes/BBox;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBox()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->box:Lcom/graphhopper/util/shapes/BBox;

    return-object p0
.end method

.method public getNodeIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->nodeIds:Ljava/util/List;

    return-object p0
.end method
