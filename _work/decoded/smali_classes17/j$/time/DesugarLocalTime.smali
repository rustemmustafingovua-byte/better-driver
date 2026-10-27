.class public final Lj$/time/DesugarLocalTime;
.super Ljava/lang/Object;
.source "DesugarLocalTime.java"


# static fields
.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final SECONDS_PER_DAY:I = 0x15180


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalTime;
    .locals 8
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 142
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 145
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 146
    .local v1, "localSecond":J
    const v3, 0x15180

    invoke-static {v1, v2, v3}, Lj$/time/DesugarLocalTime$$ExternalSyntheticBackport0;->m(JI)I

    move-result v3

    .line 147
    .local v3, "secsOfDay":I
    int-to-long v4, v3

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static toEpochSecond(Ljava/time/LocalTime;Ljava/time/LocalDate;Ljava/time/ZoneOffset;)J
    .locals 6
    .param p0, "receiver"    # Ljava/time/LocalTime;
    .param p1, "date"    # Ljava/time/LocalDate;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 120
    const-string v0, "date"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 123
    .local v0, "epochDay":J
    const-wide/32 v2, 0x15180

    mul-long/2addr v2, v0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 124
    .local v2, "secs":J
    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 125
    return-wide v2
.end method
