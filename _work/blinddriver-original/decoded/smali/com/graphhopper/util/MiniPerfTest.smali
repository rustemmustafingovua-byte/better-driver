.class public Lcom/graphhopper/util/MiniPerfTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/util/MiniPerfTest$Task;
    }
.end annotation


# static fields
.field private static final NS_PER_MS:D = 1000000.0

.field private static final NS_PER_S:D = 1.0E9

.field private static final NS_PER_US:D = 1000.0


# instance fields
.field private counts:I

.field private dummySum:I

.field private fullTime:J

.field private max:J

.field private min:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->fullTime:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->min:J

    return-void
.end method

.method private formatDuration(D)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    const-string v2, "s"

    goto :goto_0

    :cond_0
    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    const-string v2, "ms"

    goto :goto_0

    :cond_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    const-string v2, "\u00b5s"

    :goto_0
    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/util/MiniPerfTest;->nf(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private nf(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/text/DecimalFormat;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    const-string v1, "#.###"

    invoke-direct {p0, v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDummySum()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    return p0
.end method

.method public getMax()D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->max:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/util/MiniPerfTest;->getSum()D

    move-result-wide v0

    iget p0, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getMin()D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->min:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getReport()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->fullTime:J

    long-to-double v2, v0

    iget v4, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    long-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/util/MiniPerfTest;->formatDuration(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3}, Lcom/graphhopper/util/MiniPerfTest;->formatDuration(D)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    const-string v2, ", time/call:"

    const-string v3, ", dummy: "

    const-string v4, "sum:"

    invoke-static {v4, v0, v2, v1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSum()D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/MiniPerfTest;->fullTime:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public setIterations(I)Lcom/graphhopper/util/MiniPerfTest;
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    return-object p0
.end method

.method public start(Lcom/graphhopper/util/MiniPerfTest$Task;)Lcom/graphhopper/util/MiniPerfTest;
    .locals 8

    iget v0, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget v4, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    invoke-interface {p1, v1, v3}, Lcom/graphhopper/util/MiniPerfTest$Task;->doCalc(ZI)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/graphhopper/util/MiniPerfTest;->counts:I

    if-ge v3, v4, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget v6, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    invoke-interface {p1, v2, v3}, Lcom/graphhopper/util/MiniPerfTest$Task;->doCalc(ZI)I

    move-result v7

    add-int/2addr v7, v6

    iput v7, p0, Lcom/graphhopper/util/MiniPerfTest;->dummySum:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-wide v4, p0, Lcom/graphhopper/util/MiniPerfTest;->min:J

    cmp-long v4, v6, v4

    if-gez v4, :cond_1

    iput-wide v6, p0, Lcom/graphhopper/util/MiniPerfTest;->min:J

    :cond_1
    iget-wide v4, p0, Lcom/graphhopper/util/MiniPerfTest;->max:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_2

    iput-wide v6, p0, Lcom/graphhopper/util/MiniPerfTest;->max:J

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/util/MiniPerfTest;->fullTime:J

    return-object p0
.end method
