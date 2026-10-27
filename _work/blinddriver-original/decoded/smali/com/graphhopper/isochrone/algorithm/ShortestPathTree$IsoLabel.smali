.class public Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsoLabel"
.end annotation


# instance fields
.field public deleted:Z

.field public distance:D

.field public edge:I

.field public node:I

.field public parent:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

.field public time:J

.field public weight:D


# direct methods
.method public constructor <init>(IIDJDLcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->deleted:Z

    iput p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    iput p2, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    iput-wide p3, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    iput-wide p5, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->time:J

    iput-wide p7, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->distance:D

    iput-object p9, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->parent:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    iget v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    iget-wide v2, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    iget-wide v4, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->time:J

    iget-wide v6, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->distance:D

    const-string p0, ", edge="

    const-string v8, ", weight="

    const-string v9, "IsoLabel{node="

    invoke-static {v9, v0, p0, v1, v8}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    const-string v1, ", distance="

    invoke-static {p0, v0, v4, v5, v1}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "}"

    invoke-static {p0, v6, v7, v0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
