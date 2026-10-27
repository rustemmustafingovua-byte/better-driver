.class public interface abstract Lcom/graphhopper/routing/weighting/Weighting;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isValidName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[\\|_a-z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
.end method

.method public abstract calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
.end method

.method public abstract calcMinWeightPerDistance()D
.end method

.method public abstract calcTurnMillis(III)J
.end method

.method public abstract calcTurnWeight(III)D
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hasTurnCosts()Z
.end method
