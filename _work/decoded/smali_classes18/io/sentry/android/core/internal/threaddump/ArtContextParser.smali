.class final Lio/sentry/android/core/internal/threaddump/ArtContextParser;
.super Ljava/lang/Object;
.source "ArtContextParser.java"


# static fields
.field private static final FREE_MEMORY_PREFIX:Ljava/lang/String; = "Free memory "

.field private static final FREE_MEMORY_UNTIL_GC_PREFIX:Ljava/lang/String; = "Free memory until GC "

.field private static final FREE_MEMORY_UNTIL_OOME_PREFIX:Ljava/lang/String; = "Free memory until OOME "

.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final MAX_MEMORY_PREFIX:Ljava/lang/String; = "Max memory "

.field private static final MB:J = 0x100000L

.field private static final TOTAL_BLOCKING_GC_COUNT_PREFIX:Ljava/lang/String; = "Total blocking GC count: "

.field private static final TOTAL_BLOCKING_GC_TIME_PREFIX:Ljava/lang/String; = "Total blocking GC time: "

.field private static final TOTAL_GC_COUNT_PREFIX:Ljava/lang/String; = "Total GC count: "

.field private static final TOTAL_GC_TIME_PREFIX:Ljava/lang/String; = "Total GC time: "

.field private static final TOTAL_MEMORY_PREFIX:Ljava/lang/String; = "Total memory "

.field private static final TOTAL_PRE_OOME_GC_COUNT_PREFIX:Ljava/lang/String; = "Total pre-OOME GC count: "

.field private static final TOTAL_TIME_WAITING_FOR_GC_PREFIX:Ljava/lang/String; = "Total time waiting for GC to complete: "


# instance fields
.field private artContext:Lio/sentry/protocol/ArtContext;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrCreateArtContext()Lio/sentry/protocol/ArtContext;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->artContext:Lio/sentry/protocol/ArtContext;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lio/sentry/protocol/ArtContext;

    invoke-direct {v0}, Lio/sentry/protocol/ArtContext;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->artContext:Lio/sentry/protocol/ArtContext;

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->artContext:Lio/sentry/protocol/ArtContext;

    return-object v0
.end method

.method private static parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "sizeString"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "trimmed":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    const-string v2, "MB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 100
    :cond_1
    const-string v2, "KB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 102
    :cond_2
    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :cond_3
    nop

    .line 108
    return-object v1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1
.end method

.method private static parseTimeMs(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6
    .param p0, "timeString"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "trimmed":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 127
    :cond_0
    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 129
    :cond_1
    const-string v2, "ns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 131
    :cond_2
    const-string v2, "us"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 133
    :cond_3
    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 138
    :cond_4
    nop

    .line 139
    return-object v1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1
.end method


# virtual methods
.method getArtContext()Lio/sentry/protocol/ArtContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->artContext:Lio/sentry/protocol/ArtContext;

    return-object v0
.end method

.method parseLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 40
    const-string v0, "Free memory until OOME "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setFreeMemoryUntilOome(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 44
    :cond_0
    const-string v0, "Free memory until GC "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setFreeMemoryUntilGc(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 48
    :cond_1
    const-string v0, "Free memory "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setFreeMemory(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 51
    :cond_2
    const-string v0, "Total memory "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setTotalMemory(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 54
    :cond_3
    const-string v0, "Max memory "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parsePrettySize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setMaxMemory(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 57
    :cond_4
    const-string v0, "Total time waiting for GC to complete: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseTimeMs(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcWaitingTime(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 60
    :cond_5
    const-string v0, "Total GC time: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseTimeMs(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcTotalTime(Ljava/lang/Double;)V

    goto :goto_0

    .line 63
    :cond_6
    const-string v0, "Total GC count: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcTotalCount(Ljava/lang/Long;)V

    goto :goto_0

    .line 66
    :cond_7
    const-string v0, "Total blocking GC time: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 67
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseTimeMs(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcBlockingTime(Ljava/lang/Double;)V

    goto :goto_0

    .line 69
    :cond_8
    const-string v0, "Total blocking GC count: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 70
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcBlockingCount(Ljava/lang/Long;)V

    goto :goto_0

    .line 73
    :cond_9
    const-string v0, "Total pre-OOME GC count: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 74
    invoke-direct {p0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->getOrCreateArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/ArtContextParser;->parseLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Lio/sentry/protocol/ArtContext;->setGcPreOomeCount(Ljava/lang/Long;)V

    .line 78
    :cond_a
    :goto_0
    return-void
.end method
