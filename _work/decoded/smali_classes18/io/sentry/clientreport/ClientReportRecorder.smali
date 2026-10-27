.class public final Lio/sentry/clientreport/ClientReportRecorder;
.super Ljava/lang/Object;
.source "ClientReportRecorder.java"

# interfaces
.implements Lio/sentry/clientreport/IClientReportRecorder;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final storage:Lio/sentry/clientreport/IClientReportStorage;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    .line 27
    new-instance v0, Lio/sentry/clientreport/AtomicClientReportStorage;

    invoke-direct {v0}, Lio/sentry/clientreport/AtomicClientReportStorage;-><init>()V

    iput-object v0, p0, Lio/sentry/clientreport/ClientReportRecorder;->storage:Lio/sentry/clientreport/IClientReportStorage;

    .line 28
    return-void
.end method

.method private categoryFromItemType(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;
    .locals 1
    .param p1, "itemType"    # Lio/sentry/SentryItemType;

    .line 197
    sget-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    return-object v0

    .line 203
    :cond_1
    sget-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    return-object v0

    .line 206
    :cond_2
    sget-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    sget-object v0, Lio/sentry/DataCategory;->UserReport:Lio/sentry/DataCategory;

    return-object v0

    .line 209
    :cond_3
    sget-object v0, Lio/sentry/SentryItemType;->Feedback:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    sget-object v0, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    return-object v0

    .line 212
    :cond_4
    sget-object v0, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    sget-object v0, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    return-object v0

    .line 215
    :cond_5
    sget-object v0, Lio/sentry/SentryItemType;->ProfileChunk:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    sget-object v0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    return-object v0

    .line 218
    :cond_6
    sget-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    sget-object v0, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    return-object v0

    .line 221
    :cond_7
    sget-object v0, Lio/sentry/SentryItemType;->CheckIn:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    sget-object v0, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    return-object v0

    .line 224
    :cond_8
    sget-object v0, Lio/sentry/SentryItemType;->ReplayVideo:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    sget-object v0, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    return-object v0

    .line 227
    :cond_9
    sget-object v0, Lio/sentry/SentryItemType;->Log:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    sget-object v0, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    return-object v0

    .line 230
    :cond_a
    sget-object v0, Lio/sentry/SentryItemType;->Span:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    sget-object v0, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    return-object v0

    .line 233
    :cond_b
    sget-object v0, Lio/sentry/SentryItemType;->TraceMetric:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    sget-object v0, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    return-object v0

    .line 237
    :cond_c
    sget-object v0, Lio/sentry/DataCategory;->Default:Lio/sentry/DataCategory;

    return-object v0
.end method

.method private executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V
    .locals 4
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "category"    # Lio/sentry/DataCategory;
    .param p3, "countToAdd"    # Ljava/lang/Long;

    .line 150
    iget-object v0, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOnDiscard()Lio/sentry/SentryOptions$OnDiscardCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOnDiscard()Lio/sentry/SentryOptions$OnDiscardCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/SentryOptions$OnDiscardCallback;->execute(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "The onDiscard callback threw an exception."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private itemCountFromHeader(Lio/sentry/SentryEnvelopeItem;)J
    .locals 3
    .param p1, "envelopeItem"    # Lio/sentry/SentryEnvelopeItem;

    .line 169
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItemHeader;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, "itemCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    :goto_0
    return-wide v1
.end method

.method private recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "countToAdd"    # Ljava/lang/Long;

    .line 161
    new-instance v0, Lio/sentry/clientreport/ClientReportKey;

    invoke-direct {v0, p1, p2}, Lio/sentry/clientreport/ClientReportKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "key":Lio/sentry/clientreport/ClientReportKey;
    iget-object v1, p0, Lio/sentry/clientreport/ClientReportRecorder;->storage:Lio/sentry/clientreport/IClientReportStorage;

    invoke-interface {v1, v0, p3}, Lio/sentry/clientreport/IClientReportStorage;->addCount(Lio/sentry/clientreport/ClientReportKey;Ljava/lang/Long;)V

    .line 163
    return-void
.end method

.method private restoreCountsFromClientReport(Lio/sentry/clientreport/ClientReport;)V
    .locals 5
    .param p1, "clientReport"    # Lio/sentry/clientreport/ClientReport;

    .line 186
    if-nez p1, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lio/sentry/clientreport/ClientReport;->getDiscardedEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/clientreport/DiscardedEvent;

    .line 191
    .local v1, "discardedEvent":Lio/sentry/clientreport/DiscardedEvent;
    nop

    .line 192
    invoke-virtual {v1}, Lio/sentry/clientreport/DiscardedEvent;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/clientreport/DiscardedEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/sentry/clientreport/DiscardedEvent;->getQuantity()Ljava/lang/Long;

    move-result-object v4

    .line 191
    invoke-direct {p0, v2, v3, v4}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    .end local v1    # "discardedEvent":Lio/sentry/clientreport/DiscardedEvent;
    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method


# virtual methods
.method public attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;
    .locals 6
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 32
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->resetCountsAndGenerateClientReport()Lio/sentry/clientreport/ClientReport;

    move-result-object v0

    .line 33
    .local v0, "clientReport":Lio/sentry/clientreport/ClientReport;
    if-nez v0, :cond_0

    .line 34
    return-object p1

    .line 38
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Attaching client report to envelope."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/SentryEnvelopeItem;

    .line 43
    .local v4, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    nop

    .end local v4    # "item":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    invoke-static {v3, v0}, Lio/sentry/SentryEnvelopeItem;->fromClientReport(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)Lio/sentry/SentryEnvelopeItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v3, Lio/sentry/SentryEnvelope;

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 49
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    :catchall_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Unable to attach client report to envelope."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-object p1
.end method

.method public recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V
    .locals 5
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 57
    if-nez p2, :cond_0

    .line 58
    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEnvelopeItem;

    .line 63
    .local v1, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-virtual {p0, p1, v1}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1    # "item":Lio/sentry/SentryEnvelopeItem;
    goto :goto_0

    .line 67
    :cond_1
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to record lost envelope."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
    .locals 11
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "envelopeItem"    # Lio/sentry/SentryEnvelopeItem;

    .line 73
    if-nez p2, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v1

    .line 79
    .local v1, "itemType":Lio/sentry/SentryItemType;
    sget-object v2, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    invoke-virtual {v2, v1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 81
    :try_start_1
    iget-object v2, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/sentry/SentryEnvelopeItem;->getClientReport(Lio/sentry/ISerializer;)Lio/sentry/clientreport/ClientReport;

    move-result-object v2

    .line 82
    .local v2, "clientReport":Lio/sentry/clientreport/ClientReport;
    invoke-direct {p0, v2}, Lio/sentry/clientreport/ClientReportRecorder;->restoreCountsFromClientReport(Lio/sentry/clientreport/ClientReport;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v2    # "clientReport":Lio/sentry/clientreport/ClientReport;
    :goto_0
    goto/16 :goto_1

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    .line 85
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Unable to restore counts from previous client report."

    new-array v6, v0, [Ljava/lang/Object;

    .line 86
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, v1}, Lio/sentry/clientreport/ClientReportRecorder;->categoryFromItemType(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;

    move-result-object v2

    .line 90
    .local v2, "itemCategory":Lio/sentry/DataCategory;
    sget-object v3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    invoke-virtual {v2, v3}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    .line 92
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    invoke-virtual {p2, v3}, Lio/sentry/SentryEnvelopeItem;->getTransaction(Lio/sentry/ISerializer;)Lio/sentry/protocol/SentryTransaction;

    move-result-object v3

    .line 93
    .local v3, "transaction":Lio/sentry/protocol/SentryTransaction;
    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v3}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object v6

    .line 97
    .local v6, "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    nop

    .line 98
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    invoke-virtual {v8}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 97
    invoke-direct {p0, v7, v8, v9}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    sget-object v7, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, p1, v7, v8}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V

    .line 101
    .end local v6    # "spans":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentrySpan;>;"
    :cond_2
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V

    .line 103
    .end local v3    # "transaction":Lio/sentry/protocol/SentryTransaction;
    goto/16 :goto_1

    :cond_3
    sget-object v3, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    invoke-virtual {v2, v3}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    invoke-direct {p0, p2}, Lio/sentry/clientreport/ClientReportRecorder;->itemCountFromHeader(Lio/sentry/SentryEnvelopeItem;)J

    move-result-wide v3

    .line 105
    .local v3, "count":J
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    .line 107
    .local v5, "logBytes":J
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/sentry/DataCategory;->LogByte:Lio/sentry/DataCategory;

    invoke-virtual {v8}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, p1, v2, v7}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V

    .line 109
    .end local v3    # "count":J
    .end local v5    # "logBytes":J
    goto :goto_1

    :cond_4
    sget-object v3, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    invoke-virtual {v2, v3}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    invoke-direct {p0, p2}, Lio/sentry/clientreport/ClientReportRecorder;->itemCountFromHeader(Lio/sentry/SentryEnvelopeItem;)J

    move-result-wide v3

    .line 111
    .restart local v3    # "count":J
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    .line 113
    .local v5, "metricBytes":J
    nop

    .line 114
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/sentry/DataCategory;->TraceMetricByte:Lio/sentry/DataCategory;

    invoke-virtual {v8}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 113
    invoke-direct {p0, v7, v8, v9}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, p1, v2, v7}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V

    .line 116
    .end local v3    # "count":J
    .end local v5    # "metricBytes":J
    goto :goto_1

    :cond_5
    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    invoke-virtual {v2, v3}, Lio/sentry/DataCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    invoke-direct {p0, p2}, Lio/sentry/clientreport/ClientReportRecorder;->itemCountFromHeader(Lio/sentry/SentryEnvelopeItem;)J

    move-result-wide v3

    .line 120
    .restart local v3    # "count":J
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V

    .line 122
    .end local v3    # "count":J
    goto :goto_1

    .line 123
    :cond_6
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v1    # "itemType":Lio/sentry/SentryItemType;
    .end local v2    # "itemCategory":Lio/sentry/DataCategory;
    :goto_1
    goto :goto_2

    .line 127
    :catchall_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Unable to record lost envelope item."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
    .locals 2
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "category"    # Lio/sentry/DataCategory;

    .line 134
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 135
    return-void
.end method

.method public recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V
    .locals 5
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "category"    # Lio/sentry/DataCategory;
    .param p3, "count"    # J

    .line 141
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/clientreport/ClientReportRecorder;->recordLostEventInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/clientreport/ClientReportRecorder;->executeOnDiscard(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/clientreport/ClientReportRecorder;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to record lost event."

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method resetCountsAndGenerateClientReport()Lio/sentry/clientreport/ClientReport;
    .locals 3

    .line 175
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 176
    .local v0, "currentDate":Ljava/util/Date;
    iget-object v1, p0, Lio/sentry/clientreport/ClientReportRecorder;->storage:Lio/sentry/clientreport/IClientReportStorage;

    invoke-interface {v1}, Lio/sentry/clientreport/IClientReportStorage;->resetCountsAndGet()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "discardedEvents":Ljava/util/List;, "Ljava/util/List<Lio/sentry/clientreport/DiscardedEvent;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v2, 0x0

    return-object v2

    .line 181
    :cond_0
    new-instance v2, Lio/sentry/clientreport/ClientReport;

    invoke-direct {v2, v0, v1}, Lio/sentry/clientreport/ClientReport;-><init>(Ljava/util/Date;Ljava/util/List;)V

    return-object v2
.end method
