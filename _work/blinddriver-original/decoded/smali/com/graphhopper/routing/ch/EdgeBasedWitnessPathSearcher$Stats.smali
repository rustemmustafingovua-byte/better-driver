.class Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field maxExplored:J

.field maxPolls:J

.field maxUpdates:J

.field numCapped:J

.field numExplored:J

.field numPolls:J

.field numSearches:J

.field numTrees:J

.field numUpdates:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private quotient(JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double p1, p1

    long-to-double p3, p3

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%5.1f"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 13

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numSearches:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numCapped:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numCapped:J

    long-to-double v1, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v6

    iget-wide v6, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numSearches:J

    long-to-double v6, v6

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numPolls:J

    iget-wide v7, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    invoke-direct {p0, v1, v2, v7, v8}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->quotient(JJ)Ljava/lang/String;

    move-result-object v7

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxPolls:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numExplored:J

    iget-wide v9, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    invoke-direct {p0, v1, v2, v9, v10}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->quotient(JJ)Ljava/lang/String;

    move-result-object v9

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxExplored:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numUpdates:J

    iget-wide v11, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    invoke-direct {p0, v1, v2, v11, v12}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->quotient(JJ)Ljava/lang/String;

    move-result-object v11

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxUpdates:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "trees: %12s, searches: %15s, capped: %12s (%5.2f%%), polled: avg %s max %6d, explored: avg %s max %6d, updated: avg %s max %6d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
