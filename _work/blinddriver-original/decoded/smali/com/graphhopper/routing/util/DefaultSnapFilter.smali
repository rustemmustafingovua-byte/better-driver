.class public Lcom/graphhopper/routing/util/DefaultSnapFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field private final inSubnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/DefaultSnapFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p2, p0, Lcom/graphhopper/routing/util/DefaultSnapFilter;->inSubnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/util/DefaultSnapFilter;->inSubnetworkEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/util/DefaultSnapFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/DefaultSnapFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, v2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return v2

    :cond_1
    return v1
.end method
