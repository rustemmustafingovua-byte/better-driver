.class final Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;
.super Ljava/io/Writer;
.source "JsonSerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/JsonSerializationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteCountingWriter"
.end annotation


# instance fields
.field private byteCount:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/util/JsonSerializationUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/util/JsonSerializationUtils$1;

    .line 100
    invoke-direct {p0}, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;-><init>()V

    return-void
.end method

.method private static utf8ByteCount(C)I
    .locals 2
    .param p0, "c"    # C

    .line 143
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 144
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    const/16 v0, 0x7ff

    const/4 v1, 0x2

    if-gt p0, v0, :cond_1

    .line 146
    return v1

    .line 147
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    return v1

    .line 150
    :cond_2
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 130
    return-void
.end method

.method public flush()V
    .locals 0

    .line 125
    return-void
.end method

.method getByteCount()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 112
    iget-wide v0, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    int-to-char v2, p1

    invoke-static {v2}, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->utf8ByteCount(C)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    .line 113
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 117
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 118
    iget-wide v1, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->utf8ByteCount(C)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 105
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 106
    iget-wide v1, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    aget-char v3, p1, v0

    invoke-static {v3}, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->utf8ByteCount(C)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->byteCount:J

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
