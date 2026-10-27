.class public Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/AlternativeRouteEdgeCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternativeInfo"
.end annotation


# instance fields
.field final nodes:Lcom/carrotsearch/hppc/d0;

.field final path:Lcom/graphhopper/routing/Path;

.field final shareWeight:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/Path;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    iput-wide p2, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->shareWeight:D

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->nodes:Lcom/carrotsearch/hppc/d0;

    return-void
.end method


# virtual methods
.method public getPath()Lcom/graphhopper/routing/Path;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->shareWeight:D

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlternativeInfo{shareWeight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
