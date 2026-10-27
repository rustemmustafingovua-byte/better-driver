.class public final Lj$/time/DesugarOffsetTime;
.super Ljava/lang/Object;
.source "DesugarOffsetTime.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toEpochSecond(Ljava/time/OffsetTime;Ljava/time/LocalDate;)J
    .locals 8
    .param p0, "receiver"    # Ljava/time/OffsetTime;
    .param p1, "date"    # Ljava/time/LocalDate;

    .line 108
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 110
    .local v0, "epochDay":J
    invoke-virtual {p0}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 111
    .local v2, "time":Ljava/time/LocalTime;
    const-wide/32 v3, 0x15180

    mul-long/2addr v3, v0

    invoke-virtual {v2}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 112
    .local v3, "secs":J
    invoke-virtual {p0}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v5

    .line 113
    .local v5, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 114
    return-wide v3
.end method
