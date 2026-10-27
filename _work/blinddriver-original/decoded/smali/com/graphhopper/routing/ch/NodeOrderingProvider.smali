.class public interface abstract Lcom/graphhopper/routing/ch/NodeOrderingProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs fromArray([I)Lcom/graphhopper/routing/ch/NodeOrderingProvider;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ch/NodeOrderingProvider$2;-><init>([I)V

    return-object v0
.end method

.method public static identity(I)Lcom/graphhopper/routing/ch/NodeOrderingProvider;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ch/NodeOrderingProvider$1;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ch/NodeOrderingProvider$1;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract getNodeIdForLevel(I)I
.end method

.method public abstract getNumNodes()I
.end method
