.class public final Lio/sentry/SentryEnvelopeItem;
.super Ljava/lang/Object;
.source "SentryEnvelopeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryEnvelopeItem$CachedItem;
    }
.end annotation


# static fields
.field private static final MAX_PROFILE_CHUNK_SIZE:J = 0x3200000L

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WRITER_BUFFER_SIZE:I = 0x200


# instance fields
.field private data:[B

.field private final dataFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation
.end field

.field private final header:Lio/sentry/SentryEnvelopeItemHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "header"    # Lio/sentry/SentryEnvelopeItemHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryEnvelopeItemHeader;",
            "Ljava/util/concurrent/Callable<",
            "[B>;)V"
        }
    .end annotation

    .line 61
    .local p2, "dataFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "SentryEnvelopeItemHeader is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryEnvelopeItemHeader;

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    .line 63
    const-string v0, "DataFactory is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->dataFactory:Ljava/util/concurrent/Callable;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->data:[B

    .line 65
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryEnvelopeItemHeader;[B)V
    .locals 1
    .param p1, "header"    # Lio/sentry/SentryEnvelopeItemHeader;
    .param p2, "data"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "SentryEnvelopeItemHeader is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryEnvelopeItemHeader;

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    .line 55
    iput-object p2, p0, Lio/sentry/SentryEnvelopeItem;->data:[B

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->dataFactory:Ljava/util/concurrent/Callable;

    .line 57
    return-void
.end method

.method private static ensureAttachmentSizeLimit(JJLjava/lang/String;)V
    .locals 3
    .param p0, "size"    # J
    .param p2, "maxAttachmentSize"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 293
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 302
    return-void

    .line 294
    :cond_0
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 300
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 295
    const-string v2, "Dropping attachment with filename \'%s\', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAttachment(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/Attachment;J)Lio/sentry/SentryEnvelopeItem;
    .locals 7
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "attachment"    # Lio/sentry/Attachment;
    .param p3, "maxAttachmentSize"    # J

    .line 241
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda33;

    move-object v5, p0

    move-object v6, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda33;-><init>(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 277
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda34;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda34;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 281
    invoke-virtual {p2}, Lio/sentry/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {p2}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {p2}, Lio/sentry/Attachment;->getAttachmentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda35;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda35;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromCheckIn(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)Lio/sentry/SentryEnvelopeItem;
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "checkIn"    # Lio/sentry/CheckIn;

    .line 211
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    const-string v0, "CheckIn is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda24;-><init>(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 226
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->CheckIn:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda25;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda26;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda26;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromClientReport(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)Lio/sentry/SentryEnvelopeItem;
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "clientReport"    # Lio/sentry/clientreport/ClientReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    const-string v0, "ClientReport is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 524
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda20;-><init>(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 536
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    .line 538
    invoke-static {p1}, Lio/sentry/SentryItemType;->resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;

    move-result-object v2

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda21;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda23;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromEvent(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryEnvelopeItem;
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;

    .line 120
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "SentryEvent is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda14;-><init>(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 135
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    .line 137
    invoke-static {p1}, Lio/sentry/SentryItemType;->resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;

    move-result-object v2

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda15;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda16;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromLogs(Lio/sentry/ISerializer;Lio/sentry/SentryLogEvents;)Lio/sentry/SentryEnvelopeItem;
    .locals 9
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "logEvents"    # Lio/sentry/SentryLogEvents;

    .line 628
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 629
    const-string v0, "SentryLogEvents is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 631
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda27;-><init>(Lio/sentry/ISerializer;Lio/sentry/SentryLogEvents;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 643
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->Log:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda28;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 651
    invoke-virtual {p1}, Lio/sentry/SentryLogEvents;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v4, "application/vnd.sentry.items.log+json"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda29;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromMetrics(Lio/sentry/ISerializer;Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelopeItem;
    .locals 9
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "metricsEvents"    # Lio/sentry/SentryMetricsEvents;

    .line 660
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    const-string v0, "SentryMetricsEvents is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 663
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda30;-><init>(Lio/sentry/ISerializer;Lio/sentry/SentryMetricsEvents;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 675
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->TraceMetric:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda31;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda31;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 683
    invoke-virtual {p1}, Lio/sentry/SentryMetricsEvents;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v4, "application/vnd.sentry.items.trace-metric+json"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda32;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromPerfettoProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;
    .locals 12
    .param p0, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lio/sentry/ProfileChunk;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 395
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 408
    .local v1, "metaLength":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Integer;>;"
    new-instance v2, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0, v1, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda3;-><init>(Lio/sentry/ISerializer;Lio/sentry/ProfileChunk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/io/File;)V

    invoke-direct {v2, v3}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 444
    .local v2, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v3, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v4, Lio/sentry/SentryItemType;->ProfileChunk:Lio/sentry/SentryItemType;

    new-instance v5, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda4;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 448
    invoke-virtual {p0}, Lio/sentry/ProfileChunk;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-virtual {p0}, Lio/sentry/ProfileChunk;->getPlatform()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda5;

    invoke-direct {v11, v1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V

    .line 459
    .local v3, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v4, Lio/sentry/SentryEnvelopeItem;

    new-instance v5, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v4, v3, v5}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v4

    .line 396
    .end local v1    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Integer;>;"
    .end local v2    # "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    .end local v3    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    :cond_1
    :goto_0
    new-instance v1, Lio/sentry/exception/SentryEnvelopeException;

    .line 399
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "null"

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 397
    const-string v3, "Dropping perfetto profile chunk, because the trace file \'%s\' doesn\'t exist"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;
    .locals 1
    .param p0, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 308
    invoke-static {}, Lio/sentry/NoOpProfileConverter;->getInstance()Lio/sentry/NoOpProfileConverter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/sentry/SentryEnvelopeItem;->fromProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;Lio/sentry/IProfileConverter;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromProfileChunk(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;Lio/sentry/IProfileConverter;)Lio/sentry/SentryEnvelopeItem;
    .locals 10
    .param p0, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .param p2, "profileConverter"    # Lio/sentry/IProfileConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lio/sentry/ProfileChunk;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, "traceFile":Ljava/io/File;
    new-instance v1, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v2, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda36;

    invoke-direct {v2, v0, p0, p2, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda36;-><init>(Ljava/io/File;Lio/sentry/ProfileChunk;Lio/sentry/IProfileConverter;Lio/sentry/ISerializer;)V

    invoke-direct {v1, v2}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 374
    .local v1, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v2, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v3, Lio/sentry/SentryItemType;->ProfileChunk:Lio/sentry/SentryItemType;

    new-instance v4, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 379
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v6, v5

    .line 381
    invoke-virtual {p0}, Lio/sentry/ProfileChunk;->getPlatform()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v5, "application-json"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    .local v2, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v3, Lio/sentry/SentryEnvelopeItem;

    new-instance v4, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v3, v2, v4}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v3
.end method

.method public static fromProfilingTrace(Lio/sentry/ProfilingTraceData;JLio/sentry/ISerializer;)Lio/sentry/SentryEnvelopeItem;
    .locals 7
    .param p0, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;
    .param p1, "maxTraceFileSize"    # J
    .param p3, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lio/sentry/ProfilingTraceData;->getTraceFile()Ljava/io/File;

    move-result-object v1

    .line 470
    .local v1, "traceFile":Ljava/io/File;
    new-instance v6, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda7;

    move-object v4, p0

    move-wide v2, p1

    move-object v5, p3

    .end local p0    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .end local p1    # "maxTraceFileSize":J
    .end local p3    # "serializer":Lio/sentry/ISerializer;
    .local v2, "maxTraceFileSize":J
    .local v4, "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .local v5, "serializer":Lio/sentry/ISerializer;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda7;-><init>(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)V

    invoke-direct {v6, v0}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 506
    .local v6, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance p0, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object p1, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    new-instance p2, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda8;

    invoke-direct {p2, v6}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda8;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "application-json"

    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local p0, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance p1, Lio/sentry/SentryEnvelopeItem;

    new-instance p2, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;

    invoke-direct {p2, v6}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda9;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {p1, p0, p2}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static fromReplay(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Z)Lio/sentry/SentryEnvelopeItem;
    .locals 8
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "replayEvent"    # Lio/sentry/SentryReplayEvent;
    .param p3, "replayRecording"    # Lio/sentry/ReplayRecording;
    .param p4, "cleanupReplayFolder"    # Z

    .line 566
    invoke-virtual {p2}, Lio/sentry/SentryReplayEvent;->getVideoFile()Ljava/io/File;

    move-result-object v4

    .line 568
    .local v4, "replayVideo":Ljava/io/File;
    new-instance v7, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "logger":Lio/sentry/ILogger;
    .end local p2    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .end local p3    # "replayRecording":Lio/sentry/ReplayRecording;
    .end local p4    # "cleanupReplayFolder":Z
    .local v1, "serializer":Lio/sentry/ISerializer;
    .local v2, "replayEvent":Lio/sentry/SentryReplayEvent;
    .local v3, "replayRecording":Lio/sentry/ReplayRecording;
    .local v5, "logger":Lio/sentry/ILogger;
    .local v6, "cleanupReplayFolder":Z
    invoke-direct/range {v0 .. v6}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ISerializer;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Ljava/io/File;Lio/sentry/ILogger;Z)V

    invoke-direct {v7, v0}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 617
    .local v7, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance p0, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object p1, Lio/sentry/SentryItemType;->ReplayVideo:Lio/sentry/SentryItemType;

    new-instance p2, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda11;

    invoke-direct {p2, v7}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda11;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local p0, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance p1, Lio/sentry/SentryEnvelopeItem;

    new-instance p2, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda22;

    invoke-direct {p2, v7}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda22;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {p1, p0, p2}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static fromSession(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "session"    # Lio/sentry/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v0, "Session is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda10;-><init>(Lio/sentry/ISerializer;Lio/sentry/Session;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 99
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda12;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda13;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method public static fromUserFeedback(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)Lio/sentry/SentryEnvelopeItem;
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    const-string v0, "ISerializer is required."

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "UserFeedback is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    new-instance v0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    new-instance v1, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda17;-><init>(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)V

    invoke-direct {v0, v1}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 197
    .local v0, "cachedItem":Lio/sentry/SentryEnvelopeItem$CachedItem;
    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader;

    sget-object v2, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda18;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    const-string v4, "application/json"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v1, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    new-instance v3, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda19;-><init>(Lio/sentry/SentryEnvelopeItem$CachedItem;)V

    invoke-direct {v2, v1, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method

.method static synthetic lambda$fromAttachment$12(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)[B
    .locals 5
    .param p0, "attachment"    # Lio/sentry/Attachment;
    .param p1, "maxAttachmentSize"    # J
    .param p3, "serializer"    # Lio/sentry/ISerializer;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lio/sentry/Attachment;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lio/sentry/Attachment;->getBytes()[B

    move-result-object v0

    .line 246
    .local v0, "data":[B
    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p0}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p1, p2, v3}, Lio/sentry/SentryEnvelopeItem;->ensureAttachmentSizeLimit(JJLjava/lang/String;)V

    .line 247
    return-object v0

    .line 248
    .end local v0    # "data":[B
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Attachment;->getSerializable()Lio/sentry/JsonSerializable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lio/sentry/Attachment;->getSerializable()Lio/sentry/JsonSerializable;

    move-result-object v0

    .line 251
    .local v0, "serializable":Lio/sentry/JsonSerializable;
    nop

    .line 252
    invoke-static {p3, p4, v0}, Lio/sentry/util/JsonSerializationUtils;->bytesFrom(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)[B

    move-result-object v1

    .line 254
    .local v1, "data":[B
    if-eqz v1, :cond_1

    .line 255
    array-length v2, v1

    int-to-long v2, v2

    .line 256
    invoke-virtual {p0}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v2, v3, p1, p2, v4}, Lio/sentry/SentryEnvelopeItem;->ensureAttachmentSizeLimit(JJLjava/lang/String;)V

    .line 257
    return-object v1

    .line 259
    .end local v0    # "serializable":Lio/sentry/JsonSerializable;
    .end local v1    # "data":[B
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/sentry/Attachment;->getPathname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p0}, Lio/sentry/Attachment;->getPathname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0

    .line 261
    :cond_3
    invoke-virtual {p0}, Lio/sentry/Attachment;->getByteProvider()Ljava/util/concurrent/Callable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {p0}, Lio/sentry/Attachment;->getByteProvider()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 264
    .local v0, "data":[B
    if-eqz v0, :cond_4

    .line 265
    array-length v1, v0

    int-to-long v1, v1

    .line 266
    invoke-virtual {p0}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v1, v2, p1, p2, v3}, Lio/sentry/SentryEnvelopeItem;->ensureAttachmentSizeLimit(JJLjava/lang/String;)V

    .line 267
    return-object v0

    .line 270
    .end local v0    # "data":[B
    :cond_4
    :goto_0
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 274
    invoke-virtual {p0}, Lio/sentry/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 271
    const-string v2, "Couldn\'t attach the attachment %s.\nPlease check that either bytes, serializable, path or provider is set."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$fromAttachment$13(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromAttachment$14(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromCheckIn$10(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromCheckIn$11(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromCheckIn$9(Lio/sentry/ISerializer;Lio/sentry/CheckIn;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "checkIn"    # Lio/sentry/CheckIn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 221
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 222
    return-object v2

    .line 217
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "checkIn":Lio/sentry/CheckIn;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "checkIn":Lio/sentry/CheckIn;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromClientReport$25(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "clientReport"    # Lio/sentry/clientreport/ClientReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 528
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 531
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 532
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 532
    return-object v2

    .line 527
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "clientReport":Lio/sentry/clientreport/ClientReport;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "clientReport":Lio/sentry/clientreport/ClientReport;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromClientReport$26(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromClientReport$27(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromEvent$3(Lio/sentry/ISerializer;Lio/sentry/SentryBaseEvent;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 130
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 131
    return-object v2

    .line 126
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "event":Lio/sentry/SentryBaseEvent;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "event":Lio/sentry/SentryBaseEvent;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromEvent$4(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromEvent$5(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromLogs$31(Lio/sentry/ISerializer;Lio/sentry/SentryLogEvents;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "logEvents"    # Lio/sentry/SentryLogEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 635
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 638
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 639
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 639
    return-object v2

    .line 634
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "logEvents":Lio/sentry/SentryLogEvents;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "logEvents":Lio/sentry/SentryLogEvents;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromLogs$32(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromLogs$33(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromMetrics$34(Lio/sentry/ISerializer;Lio/sentry/SentryMetricsEvents;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "metricsEvents"    # Lio/sentry/SentryMetricsEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 667
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 670
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 671
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 671
    return-object v2

    .line 666
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "metricsEvents":Lio/sentry/SentryMetricsEvents;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "metricsEvents":Lio/sentry/SentryMetricsEvents;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromMetrics$35(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromMetrics$36(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromPerfettoProfileChunk$18(Lio/sentry/ISerializer;Lio/sentry/ProfileChunk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/io/File;)[B
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p2, "metaLength"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "traceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 413
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 415
    .local v1, "writer":Ljava/io/Writer;
    :try_start_2
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 416
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 417
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 418
    .local v2, "metadataBytes":[B
    array-length v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v1    # "writer":Ljava/io/Writer;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 423
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    nop

    .line 428
    :try_start_5
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v3, 0x3200000

    invoke-static {v0, v3, v4}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 433
    .local v0, "traceBytes":[B
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 434
    nop

    .line 437
    array-length v1, v2

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 438
    .local v1, "payload":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    array-length v3, v2

    array-length v5, v0

    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    return-object v1

    .line 433
    .end local v0    # "traceBytes":[B
    .end local v1    # "payload":[B
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v1, Lio/sentry/exception/SentryEnvelopeException;

    const-string v3, "Failed to read perfetto trace file\n%s"

    .line 431
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "metadataBytes":[B
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .end local p3    # "traceFile":Ljava/io/File;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "metadataBytes":[B
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .restart local p3    # "traceFile":Ljava/io/File;
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 434
    throw v0

    .line 413
    .end local v2    # "metadataBytes":[B
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    .local v1, "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .end local p3    # "traceFile":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .restart local p3    # "traceFile":Ljava/io/File;
    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .end local p3    # "traceFile":Ljava/io/File;
    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 419
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "metaLength":Ljava/util/concurrent/atomic/AtomicReference;
    .restart local p3    # "traceFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/sentry/exception/SentryEnvelopeException;

    .line 422
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 421
    const-string v3, "Failed to serialize perfetto profile chunk\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$fromPerfettoProfileChunk$19(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromPerfettoProfileChunk$20(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 1
    .param p0, "metaLength"    # Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic lambda$fromPerfettoProfileChunk$21(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromProfileChunk$15(Ljava/io/File;Lio/sentry/ProfileChunk;Lio/sentry/IProfileConverter;Lio/sentry/ISerializer;)[B
    .locals 4
    .param p0, "traceFile"    # Ljava/io/File;
    .param p1, "profileChunk"    # Lio/sentry/ProfileChunk;
    .param p2, "profileConverter"    # Lio/sentry/IProfileConverter;
    .param p3, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    if-eqz p0, :cond_4

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "java"

    invoke-virtual {p1}, Lio/sentry/ProfileChunk;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-static {}, Lio/sentry/NoOpProfileConverter;->getInstance()Lio/sentry/NoOpProfileConverter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    nop

    .line 334
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/sentry/IProfileConverter;->convertFromFile(Ljava/lang/String;)Lio/sentry/protocol/profiling/SentryProfile;

    move-result-object v0

    .line 335
    .local v0, "profile":Lio/sentry/protocol/profiling/SentryProfile;
    invoke-virtual {p1, v0}, Lio/sentry/ProfileChunk;->setSentryProfile(Lio/sentry/protocol/profiling/SentryProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "profile":Lio/sentry/protocol/profiling/SentryProfile;
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/sentry/exception/SentryEnvelopeException;

    const-string v2, "Profile conversion failed"

    invoke-direct {v1, v2, v0}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    const-string v1, "No ProfileConverter available, dropping chunk."

    invoke-direct {v0, v1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    nop

    .line 347
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x3200000

    invoke-static {v0, v1, v2}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v0

    .line 348
    .local v0, "traceFileBytes":[B
    nop

    .line 349
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/sentry/vendor/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "base64Trace":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    invoke-virtual {p1, v1}, Lio/sentry/ProfileChunk;->setSampledProfile(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    new-instance v2, Lio/sentry/exception/SentryEnvelopeException;

    const-string v3, "Profiling trace file is empty"

    invoke-direct {v2, v3}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v0    # "traceFileBytes":[B
    .end local v1    # "base64Trace":Ljava/lang/String;
    :cond_3
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 327
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 325
    const-string v2, "Dropping profile chunk, because the file \'%s\' doesn\'t exists"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_4
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 358
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 361
    .local v1, "writer":Ljava/io/Writer;
    :try_start_3
    invoke-interface {p3, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 368
    if-eqz p0, :cond_5

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 362
    :cond_5
    return-object v2

    .line 357
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .end local p3    # "serializer":Lio/sentry/ISerializer;
    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .restart local p3    # "serializer":Lio/sentry/ISerializer;
    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .end local p3    # "serializer":Lio/sentry/ISerializer;
    :goto_2
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 368
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .restart local p3    # "serializer":Lio/sentry/ISerializer;
    :catchall_4
    move-exception v0

    goto :goto_3

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    new-instance v1, Lio/sentry/exception/SentryEnvelopeException;

    const-string v2, "Failed to serialize profile chunk\n%s"

    .line 365
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .end local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .end local p3    # "serializer":Lio/sentry/ISerializer;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "profileChunk":Lio/sentry/ProfileChunk;
    .restart local p2    # "profileConverter":Lio/sentry/IProfileConverter;
    .restart local p3    # "serializer":Lio/sentry/ISerializer;
    :goto_3
    if-eqz p0, :cond_6

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 371
    :cond_6
    throw v0
.end method

.method static synthetic lambda$fromProfileChunk$16(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromProfileChunk$17(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromProfilingTrace$22(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)[B
    .locals 6
    .param p0, "traceFile"    # Ljava/io/File;
    .param p1, "maxTraceFileSize"    # J
    .param p3, "profilingTraceData"    # Lio/sentry/ProfilingTraceData;
    .param p4, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    nop

    .line 482
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v0

    .line 483
    .local v0, "traceFileBytes":[B
    nop

    .line 484
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/sentry/vendor/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "base64Trace":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    invoke-virtual {p3, v1}, Lio/sentry/ProfilingTraceData;->setSampledProfile(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p3}, Lio/sentry/ProfilingTraceData;->readDeviceCpuFrequencies()V

    .line 491
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 492
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 495
    .local v3, "writer":Ljava/io/Writer;
    :try_start_2
    invoke-interface {p4, p3, v3}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 496
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 496
    return-object v4

    .line 491
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceFileBytes":[B
    .end local v1    # "base64Trace":Ljava/lang/String;
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "maxTraceFileSize":J
    .end local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .end local p4    # "serializer":Lio/sentry/ISerializer;
    :goto_0
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v0    # "traceFileBytes":[B
    .restart local v1    # "base64Trace":Ljava/lang/String;
    .restart local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "maxTraceFileSize":J
    .restart local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .restart local p4    # "serializer":Lio/sentry/ISerializer;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceFileBytes":[B
    .end local v1    # "base64Trace":Ljava/lang/String;
    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "maxTraceFileSize":J
    .end local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .end local p4    # "serializer":Lio/sentry/ISerializer;
    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 502
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "traceFileBytes":[B
    .restart local v1    # "base64Trace":Ljava/lang/String;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "maxTraceFileSize":J
    .restart local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .restart local p4    # "serializer":Lio/sentry/ISerializer;
    :catchall_4
    move-exception v2

    goto :goto_2

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    new-instance v3, Lio/sentry/exception/SentryEnvelopeException;

    const-string v4, "Failed to serialize profiling trace data\n%s"

    .line 499
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceFileBytes":[B
    .end local v1    # "base64Trace":Ljava/lang/String;
    .end local p0    # "traceFile":Ljava/io/File;
    .end local p1    # "maxTraceFileSize":J
    .end local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .end local p4    # "serializer":Lio/sentry/ISerializer;
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "traceFileBytes":[B
    .restart local v1    # "base64Trace":Ljava/lang/String;
    .restart local p0    # "traceFile":Ljava/io/File;
    .restart local p1    # "maxTraceFileSize":J
    .restart local p3    # "profilingTraceData":Lio/sentry/ProfilingTraceData;
    .restart local p4    # "serializer":Lio/sentry/ISerializer;
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 503
    throw v2

    .line 486
    :cond_0
    new-instance v2, Lio/sentry/exception/SentryEnvelopeException;

    const-string v3, "Profiling trace file is empty"

    invoke-direct {v2, v3}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    .end local v0    # "traceFileBytes":[B
    .end local v1    # "base64Trace":Ljava/lang/String;
    :cond_1
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 477
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 475
    const-string v2, "Dropping profiling trace data, because the file \'%s\' doesn\'t exists"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$fromProfilingTrace$23(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 509
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromProfilingTrace$24(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromReplay$28(Lio/sentry/ISerializer;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Ljava/io/File;Lio/sentry/ILogger;Z)[B
    .locals 6
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "replayEvent"    # Lio/sentry/SentryReplayEvent;
    .param p2, "replayRecording"    # Lio/sentry/ReplayRecording;
    .param p3, "replayVideo"    # Ljava/io/File;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .param p5, "cleanupReplayFolder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 573
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 577
    .local v1, "writer":Ljava/io/Writer;
    :try_start_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 579
    .local v2, "replayPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 580
    sget-object v3, Lio/sentry/SentryItemType;->ReplayEvent:Lio/sentry/SentryItemType;

    invoke-virtual {v3}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 584
    if-eqz p2, :cond_0

    .line 585
    invoke-interface {p0, p2, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 586
    sget-object v3, Lio/sentry/SentryItemType;->ReplayRecording:Lio/sentry/SentryItemType;

    .line 587
    invoke-virtual {v3}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 586
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 592
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    nop

    .line 595
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 594
    const-wide/32 v4, 0xa00000

    invoke-static {v3, v4, v5}, Lio/sentry/util/FileUtils;->readBytesFromFile(Ljava/lang/String;J)[B

    move-result-object v3

    .line 596
    .local v3, "videoBytes":[B
    array-length v4, v3

    if-lez v4, :cond_1

    .line 597
    sget-object v4, Lio/sentry/SentryItemType;->ReplayVideo:Lio/sentry/SentryItemType;

    invoke-virtual {v4}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v3    # "videoBytes":[B
    :cond_1
    invoke-static {v2}, Lio/sentry/SentryEnvelopeItem;->serializeToMsgpack(Ljava/util/Map;)[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 607
    if-eqz p3, :cond_3

    .line 608
    if-eqz p5, :cond_2

    .line 609
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 601
    :cond_3
    :goto_0
    return-object v3

    .line 572
    .end local v2    # "replayPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .end local p2    # "replayRecording":Lio/sentry/ReplayRecording;
    .end local p3    # "replayVideo":Ljava/io/File;
    .end local p4    # "logger":Lio/sentry/ILogger;
    .end local p5    # "cleanupReplayFolder":Z
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .restart local p2    # "replayRecording":Lio/sentry/ReplayRecording;
    .restart local p3    # "replayVideo":Ljava/io/File;
    .restart local p4    # "logger":Lio/sentry/ILogger;
    .restart local p5    # "cleanupReplayFolder":Z
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .end local p2    # "replayRecording":Lio/sentry/ReplayRecording;
    .end local p3    # "replayVideo":Ljava/io/File;
    .end local p4    # "logger":Lio/sentry/ILogger;
    .end local p5    # "cleanupReplayFolder":Z
    :goto_2
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 603
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "replayEvent":Lio/sentry/SentryReplayEvent;
    .restart local p2    # "replayRecording":Lio/sentry/ReplayRecording;
    .restart local p3    # "replayVideo":Ljava/io/File;
    .restart local p4    # "logger":Lio/sentry/ILogger;
    .restart local p5    # "cleanupReplayFolder":Z
    :catchall_4
    move-exception v0

    .line 604
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_9
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Could not serialize replay recording"

    invoke-interface {p4, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 605
    nop

    .line 607
    if-eqz p3, :cond_5

    .line 608
    if-eqz p5, :cond_4

    .line 609
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_3

    .line 611
    :cond_4
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 605
    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1

    .line 607
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    if-eqz p3, :cond_7

    .line 608
    if-eqz p5, :cond_6

    .line 609
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/FileUtils;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_4

    .line 611
    :cond_6
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 614
    :cond_7
    :goto_4
    throw v0
.end method

.method static synthetic lambda$fromReplay$29(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromReplay$30(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromSession$0(Lio/sentry/ISerializer;Lio/sentry/Session;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "session"    # Lio/sentry/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    return-object v2

    .line 90
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "session":Lio/sentry/Session;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "session":Lio/sentry/Session;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromSession$1(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromSession$2(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromUserFeedback$6(Lio/sentry/ISerializer;Lio/sentry/UserFeedback;)[B
    .locals 4
    .param p0, "serializer"    # Lio/sentry/ISerializer;
    .param p1, "userFeedback"    # Lio/sentry/UserFeedback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 192
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 193
    return-object v2

    .line 188
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "serializer":Lio/sentry/ISerializer;
    .end local p1    # "userFeedback":Lio/sentry/UserFeedback;
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "serializer":Lio/sentry/ISerializer;
    .restart local p1    # "userFeedback":Lio/sentry/UserFeedback;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method static synthetic lambda$fromUserFeedback$7(Lio/sentry/SentryEnvelopeItem$CachedItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$fromUserFeedback$8(Lio/sentry/SentryEnvelopeItem$CachedItem;)[B
    .locals 1
    .param p0, "cachedItem"    # Lio/sentry/SentryEnvelopeItem$CachedItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static serializeToMsgpack(Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 717
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 720
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 722
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 723
    .local v3, "keyBytes":[B
    array-length v4, v3

    .line 725
    .local v4, "keyLength":I
    const/16 v5, -0x27

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 726
    int-to-byte v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 727
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 730
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 731
    .local v5, "valueBytes":[B
    array-length v6, v5

    .line 733
    .local v6, "valueLength":I
    const/16 v7, -0x3a

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 734
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 735
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 736
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "keyBytes":[B
    .end local v4    # "keyLength":I
    .end local v5    # "valueBytes":[B
    .end local v6    # "valueLength":I
    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 738
    return-object v1

    .line 714
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method


# virtual methods
.method public getClientReport(Lio/sentry/ISerializer;)Lio/sentry/clientreport/ClientReport;
    .locals 4
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 554
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 555
    .local v0, "eventReader":Ljava/io/Reader;
    :try_start_0
    const-class v1, Lio/sentry/clientreport/ClientReport;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/clientreport/ClientReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 555
    return-object v1

    .line 553
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 551
    .end local v0    # "eventReader":Ljava/io/Reader;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->data:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->dataFactory:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->dataFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem;->data:[B

    .line 75
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->data:[B

    return-object v0
.end method

.method public getEvent(Lio/sentry/ISerializer;)Lio/sentry/SentryEvent;
    .locals 4
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 113
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .local v0, "eventReader":Ljava/io/Reader;
    :try_start_0
    const-class v1, Lio/sentry/SentryEvent;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 114
    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 110
    .end local v0    # "eventReader":Ljava/io/Reader;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Lio/sentry/SentryEnvelopeItemHeader;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    return-object v0
.end method

.method public getLogs(Lio/sentry/ISerializer;)Lio/sentry/SentryLogEvents;
    .locals 4
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Log:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 163
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 164
    .local v0, "eventReader":Ljava/io/Reader;
    :try_start_0
    const-class v1, Lio/sentry/SentryLogEvents;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryLogEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 164
    return-object v1

    .line 162
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 160
    .end local v0    # "eventReader":Ljava/io/Reader;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetrics(Lio/sentry/ISerializer;)Lio/sentry/SentryMetricsEvents;
    .locals 4
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->TraceMetric:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 174
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .local v0, "eventReader":Ljava/io/Reader;
    :try_start_0
    const-class v1, Lio/sentry/SentryMetricsEvents;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryMetricsEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 175
    return-object v1

    .line 173
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 171
    .end local v0    # "eventReader":Ljava/io/Reader;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransaction(Lio/sentry/ISerializer;)Lio/sentry/protocol/SentryTransaction;
    .locals 4
    .param p1, "serializer"    # Lio/sentry/ISerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem;->header:Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 153
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/SentryEnvelopeItem;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v0, "eventReader":Ljava/io/Reader;
    :try_start_0
    const-class v1, Lio/sentry/protocol/SentryTransaction;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 154
    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 150
    .end local v0    # "eventReader":Ljava/io/Reader;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
