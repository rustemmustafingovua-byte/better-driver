.class public final Lio/sentry/SentryEnvelopeItemHeader;
.super Ljava/lang/Object;
.source "SentryEnvelopeItemHeader.java"

# interfaces
.implements Lio/sentry/JsonSerializable;
.implements Lio/sentry/JsonUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryEnvelopeItemHeader$JsonKeys;,
        Lio/sentry/SentryEnvelopeItemHeader$Deserializer;
    }
.end annotation


# instance fields
.field private final attachmentType:Ljava/lang/String;

.field private final calculateMetaLength:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final getLength:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final itemCount:Ljava/lang/Integer;

.field private final length:I

.field private final platform:Ljava/lang/String;

.field private final type:Lio/sentry/SentryItemType;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p2, "length"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "attachmentType"    # Ljava/lang/String;
    .param p6, "platform"    # Ljava/lang/String;
    .param p7, "itemCount"    # Ljava/lang/Integer;

    .line 125
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 126
    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 12
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p2, "length"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "attachmentType"    # Ljava/lang/String;
    .param p6, "platform"    # Ljava/lang/String;
    .param p7, "itemCount"    # Ljava/lang/Integer;
    .param p8, "metaLength"    # Ljava/lang/Integer;

    .line 104
    move-object/from16 v0, p8

    .line 113
    if-eqz v0, :cond_0

    new-instance v1, Lio/sentry/SentryEnvelopeItemHeader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/sentry/SentryEnvelopeItemHeader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v11, v1

    .line 104
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lio/sentry/SentryEnvelopeItemHeader$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/SentryItemType;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/Integer;
    .param p8, "x7"    # Ljava/lang/Integer;
    .param p9, "x8"    # Lio/sentry/SentryEnvelopeItemHeader$1;

    .line 14
    invoke-direct/range {p0 .. p8}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryItemType;ILjava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p2, "length"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "attachmentType"    # Ljava/lang/String;
    .param p7, "platform"    # Ljava/lang/String;
    .param p8, "itemCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p3, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .local p9, "calculateMetaLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "type is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryItemType;

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    .line 83
    iput-object p4, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    .line 84
    iput p2, p0, Lio/sentry/SentryEnvelopeItemHeader;->length:I

    .line 85
    iput-object p5, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    .line 87
    iput-object p6, p0, Lio/sentry/SentryEnvelopeItemHeader;->attachmentType:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lio/sentry/SentryEnvelopeItemHeader;->platform:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lio/sentry/SentryEnvelopeItemHeader;->itemCount:Ljava/lang/Integer;

    .line 90
    iput-object p9, p0, Lio/sentry/SentryEnvelopeItemHeader;->calculateMetaLength:Ljava/util/concurrent/Callable;

    .line 91
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    .local p2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "type":Lio/sentry/SentryItemType;
    .end local p2    # "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "fileName":Ljava/lang/String;
    .local v1, "type":Lio/sentry/SentryItemType;
    .local v2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .local v3, "contentType":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "attachmentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 170
    .local p2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "type":Lio/sentry/SentryItemType;
    .end local p2    # "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "fileName":Ljava/lang/String;
    .end local p5    # "attachmentType":Ljava/lang/String;
    .local v1, "type":Lio/sentry/SentryItemType;
    .local v2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .local v3, "contentType":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    .local v5, "attachmentType":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "attachmentType"    # Ljava/lang/String;
    .param p6, "platform"    # Ljava/lang/String;
    .param p7, "itemCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 161
    .local p2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V

    .line 162
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V
    .locals 10
    .param p1, "type"    # Lio/sentry/SentryItemType;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "attachmentType"    # Ljava/lang/String;
    .param p6, "platform"    # Ljava/lang/String;
    .param p7, "itemCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p2, "getLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    .local p8, "calculateMetaLength":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;ILjava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/concurrent/Callable;)V

    .line 151
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "metaLength"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    return-object p0
.end method


# virtual methods
.method public getAttachmentType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->attachmentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->itemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLength()I
    .locals 2

    .line 33
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "ignored":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1

    .line 41
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_0
    iget v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->length:I

    return v0
.end method

.method getMetaLength()Ljava/lang/Integer;
    .locals 2

    .line 62
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->calculateMetaLength:Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->calculateMetaLength:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    .local v0, "ignored":Ljava/lang/Throwable;
    return-object v1

    .line 69
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :cond_0
    return-object v1
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/sentry/SentryItemType;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 207
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "content_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 210
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "filename"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 213
    :cond_1
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 214
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->attachmentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "attachment_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->attachmentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 217
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "platform"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 220
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->itemCount:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 221
    const-string v0, "item_count"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->itemCount:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 223
    :cond_4
    const-string v0, "length"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 224
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItemHeader;->getMetaLength()Ljava/lang/Integer;

    move-result-object v0

    .line 225
    .local v0, "resolvedMetaLength":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 226
    const-string v1, "meta_length"

    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 228
    :cond_5
    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->unknown:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Lio/sentry/SentryEnvelopeItemHeader;->unknown:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/SentryEnvelopeItemHeader;->unknown:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 232
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 233
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 235
    :cond_6
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 236
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryEnvelopeItemHeader;->unknown:Ljava/util/Map;

    .line 320
    return-void
.end method
