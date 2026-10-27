.class final Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;
.super Ljava/lang/Object;
.source "AnrV2Integration.java"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnrV2Policy"
.end annotation


# instance fields
.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 113
    return-void
.end method

.method private parseThreadDump(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$ParseResult;
    .locals 9
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "isBackground"    # Z

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v1, v0

    .line 203
    .local v1, "trace":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 204
    :try_start_1
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {v0, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 207
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 204
    :cond_0
    return-object v0

    .line 206
    :cond_1
    :try_start_3
    invoke-static {v1}, Lio/sentry/android/core/internal/util/NativeEventUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v0

    .line 207
    .local v4, "dump":[B
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 210
    .end local v1    # "trace":Ljava/io/InputStream;
    :cond_2
    nop

    .line 212
    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v0

    .line 214
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_6
    invoke-static {v1}, Lio/sentry/android/core/internal/threaddump/Lines;->readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;

    move-result-object v0

    .line 216
    .local v0, "lines":Lio/sentry/android/core/internal/threaddump/Lines;
    new-instance v2, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;

    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v2, v3, p2}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;-><init>(Lio/sentry/SentryOptions;Z)V

    move-object v8, v2

    .line 217
    .local v8, "threadDumpParser":Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;
    invoke-virtual {v8, v0}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->parse(Lio/sentry/android/core/internal/threaddump/Lines;)V

    .line 219
    invoke-virtual {v8}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getThreads()Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    invoke-virtual {v8}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getDebugImages()Ljava/util/List;

    move-result-object v6

    .line 221
    .local v6, "debugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    invoke-virtual {v8}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->getArtContext()Lio/sentry/protocol/ArtContext;

    move-result-object v7

    .line 223
    .local v7, "artContext":Lio/sentry/protocol/ArtContext;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    new-instance v2, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v3, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {v2, v3}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 231
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 228
    return-object v2

    .line 230
    :cond_3
    :try_start_8
    new-instance v2, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v3, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct/range {v2 .. v7}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/List;Ljava/util/List;Lio/sentry/protocol/ArtContext;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 230
    return-object v2

    .line 212
    .end local v0    # "lines":Lio/sentry/android/core/internal/threaddump/Lines;
    .end local v5    # "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    .end local v6    # "debugImages":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/DebugImage;>;"
    .end local v7    # "artContext":Lio/sentry/protocol/ArtContext;
    .end local v8    # "threadDumpParser":Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "dump":[B
    .end local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .end local p2    # "isBackground":Z
    :goto_0
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 231
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "dump":[B
    .restart local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .restart local p2    # "isBackground":Z
    :catchall_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Failed to parse ANR thread dump"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    new-instance v1, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {v1, v2, v4}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V

    return-object v1

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "dump":[B
    .local v1, "trace":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_4

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .end local p2    # "isBackground":Z
    :cond_4
    :goto_1
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 207
    .end local v1    # "trace":Ljava/io/InputStream;
    .restart local p1    # "exitInfo":Landroid/app/ApplicationExitInfo;
    .restart local p2    # "isBackground":Z
    :catchall_5
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Failed to read ANR thread dump"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    new-instance v1, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    invoke-direct {v1, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V

    return-object v1
.end method


# virtual methods
.method public buildReport(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    .locals 9
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .param p2, "shouldEnrich"    # Z

    .line 143
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    .line 144
    .local v4, "anrTimestamp":J
    nop

    .line 145
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 147
    .local v7, "isBackground":Z
    invoke-direct {p0, p1, v7}, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->parseThreadDump(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/AnrV2Integration$ParseResult;

    move-result-object v8

    .line 148
    .local v8, "result":Lio/sentry/android/core/AnrV2Integration$ParseResult;
    iget-object v0, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 150
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 154
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 151
    const-string v3, "Not reporting ANR event as there was no thread dump for the ANR %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_1
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    iget-object v1, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 159
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 160
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    move v6, p2

    .end local p2    # "shouldEnrich":Z
    .local v6, "shouldEnrich":Z
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;-><init>(JLio/sentry/ILogger;JZZ)V

    .line 165
    .local v0, "anrHint":Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p2

    .line 167
    .local p2, "hint":Lio/sentry/Hint;
    new-instance v1, Lio/sentry/SentryEvent;

    invoke-direct {v1}, Lio/sentry/SentryEvent;-><init>()V

    .line 168
    .local v1, "event":Lio/sentry/SentryEvent;
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v3, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v2, v3, :cond_2

    .line 169
    new-instance v2, Lio/sentry/protocol/Message;

    invoke-direct {v2}, Lio/sentry/protocol/Message;-><init>()V

    .line 170
    .local v2, "sentryMessage":Lio/sentry/protocol/Message;
    const-string v3, "Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub."

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v2}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .end local v2    # "sentryMessage":Lio/sentry/protocol/Message;
    goto :goto_1

    .line 175
    :cond_2
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->type:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    sget-object v3, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    if-ne v2, v3, :cond_4

    .line 176
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->threads:Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/sentry/SentryEvent;->setThreads(Ljava/util/List;)V

    .line 177
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->debugImages:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 178
    new-instance v2, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v2}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 179
    .local v2, "debugMeta":Lio/sentry/protocol/DebugMeta;
    iget-object v3, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->debugImages:Ljava/util/List;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 180
    invoke-virtual {v1, v2}, Lio/sentry/SentryEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 182
    .end local v2    # "debugMeta":Lio/sentry/protocol/DebugMeta;
    :cond_3
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->artContext:Lio/sentry/protocol/ArtContext;

    if-eqz v2, :cond_5

    .line 183
    invoke-virtual {v1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    iget-object v3, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->artContext:Lio/sentry/protocol/ArtContext;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/Contexts;->setArt(Lio/sentry/protocol/ArtContext;)V

    goto :goto_2

    .line 175
    :cond_4
    :goto_1
    nop

    .line 186
    :cond_5
    :goto_2
    sget-object v2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v1, v2}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 187
    invoke-static {v4, v5}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/SentryEvent;->setTimestamp(Ljava/util/Date;)V

    .line 189
    iget-object v2, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->dump:[B

    invoke-static {v2}, Lio/sentry/Attachment;->fromThreadDump([B)Lio/sentry/Attachment;

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/sentry/Hint;->setThreadDump(Lio/sentry/Attachment;)V

    .line 195
    :cond_6
    new-instance v2, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    invoke-direct {v2, v1, p2, v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;-><init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V

    return-object v2
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "ANR"

    return-object v0
.end method

.method public getLastReportedTimestamp()Ljava/lang/Long;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->lastReportedAnr(Lio/sentry/SentryOptions;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public markReported(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 137
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->markAnrReported(Lio/sentry/SentryOptions;J)V

    .line 138
    return-void
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .locals 2
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 122
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldReportHistorical()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalAnrs()Z

    move-result v0

    return v0
.end method
