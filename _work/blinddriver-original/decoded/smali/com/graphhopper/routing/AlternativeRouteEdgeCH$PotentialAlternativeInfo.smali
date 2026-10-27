.class public Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/AlternativeRouteEdgeCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PotentialAlternativeInfo"
.end annotation


# instance fields
.field public edgeIn:I

.field public v:I

.field weight:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;->v:I

    iget v1, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;->edgeIn:I

    iget-wide v2, p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;->weight:D

    const-string p0, ", edgeIn="

    const-string v4, ", weight="

    const-string v5, "node="

    invoke-static {v5, v0, p0, v1, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
