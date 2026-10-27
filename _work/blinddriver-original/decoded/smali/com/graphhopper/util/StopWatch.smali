.class public Lcom/graphhopper/util/StopWatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private elapsedNanos:J

.field private lastTime:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/util/StopWatch;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/graphhopper/util/StopWatch;->name:Ljava/lang/String;

    return-void
.end method

.method private notStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static started()Lcom/graphhopper/util/StopWatch;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-static {v0}, Lcom/graphhopper/util/StopWatch;->started(Ljava/lang/String;)Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    return-object v0
.end method

.method public static started(Ljava/lang/String;)Lcom/graphhopper/util/StopWatch;
    .locals 1

    .line 2
    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0, p0}, Lcom/graphhopper/util/StopWatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentSeconds()F
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/util/StopWatch;->notStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    sub-long v2, v0, v2

    :goto_0
    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    add-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p0, v0

    return p0
.end method

.method public getMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMillisDouble()D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    return-wide v0
.end method

.method public getSeconds()F
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    long-to-float p0, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p0, v0

    return p0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double v2, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    cmpg-double p0, v2, v6

    if-gez p0, :cond_1

    long-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2f\u00b5s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    long-to-double v2, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double p0, v2, v4

    if-gez p0, :cond_2

    long-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2fms"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    long-to-double v2, v0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double p0, v2, v6

    if-gez p0, :cond_3

    long-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2fs"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide v0, 0x40ac200000000000L    # 3600.0

    cmpg-double p0, v2, v0

    if-gez p0, :cond_4

    double-to-int p0, v2

    div-int/lit8 v0, p0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%dmin %ds"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    double-to-int p0, v2

    div-int/lit16 v0, p0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    rem-int/lit16 p0, p0, 0xe10

    div-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%dh %dmin"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/graphhopper/util/StopWatch;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/StopWatch;->name:Ljava/lang/String;

    return-object p0
.end method

.method public start()Lcom/graphhopper/util/StopWatch;
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    return-object p0
.end method

.method public stop()Lcom/graphhopper/util/StopWatch;
    .locals 6

    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/util/StopWatch;->elapsedNanos:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/graphhopper/util/StopWatch;->lastTime:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/util/StopWatch;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/StopWatch;->name:Ljava/lang/String;

    const-string v2, " "

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
