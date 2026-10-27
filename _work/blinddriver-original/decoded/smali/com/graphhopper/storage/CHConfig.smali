.class public Lcom/graphhopper/storage/CHConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final chGraphName:Ljava/lang/String;

.field private final edgeBased:Z

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/storage/CHConfig;->chGraphName:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/storage/CHConfig;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-boolean p3, p0, Lcom/graphhopper/storage/CHConfig;->edgeBased:Z

    return-void
.end method

.method public static edgeBased(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/CHConfig;
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/CHConfig;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/graphhopper/storage/CHConfig;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;Z)V

    return-object v0
.end method

.method public static nodeBased(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/CHConfig;
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/CHConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/graphhopper/storage/CHConfig;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/CHConfig;->chGraphName:Ljava/lang/String;

    return-object p0
.end method

.method public getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/CHConfig;->edgeBased:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    return-object p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/CHConfig;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEdgeBased()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/CHConfig;->edgeBased:Z

    return p0
.end method

.method public toFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/CHConfig;->chGraphName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/CHConfig;->chGraphName:Ljava/lang/String;

    return-object p0
.end method
