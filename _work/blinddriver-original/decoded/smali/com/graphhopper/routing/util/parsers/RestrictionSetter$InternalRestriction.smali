.class Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/parsers/RestrictionSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalRestriction"
.end annotation


# instance fields
.field private final actualEdgeKeys:Lcom/carrotsearch/hppc/x;

.field private final edgeKeys:Lcom/carrotsearch/hppc/x;

.field private final viaNodes:Lcom/carrotsearch/hppc/x;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/graphhopper/util/ArrayUtil;->constant(II)Lcom/carrotsearch/hppc/x;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->actualEdgeKeys:Lcom/carrotsearch/hppc/x;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/carrotsearch/hppc/x;->set(II)I

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/carrotsearch/hppc/x;->set(II)I

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->actualEdgeKeys:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;)Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    iget-object v0, p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0, v2}, Lcom/carrotsearch/hppc/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p1, p0}, Lcom/carrotsearch/hppc/x;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getActualEdgeKeys()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->actualEdgeKeys:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getEdgeKeys()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getFromEdge()I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0
.end method

.method public getToEdge()I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0
.end method

.method public getViaNodes()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->viaNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;->edgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
