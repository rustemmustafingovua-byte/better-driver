.class Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field nodes:I

.field stopWatch:Lcom/graphhopper/util/StopWatch;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->nodes:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "time: %7.2fs, nodes: %10s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
