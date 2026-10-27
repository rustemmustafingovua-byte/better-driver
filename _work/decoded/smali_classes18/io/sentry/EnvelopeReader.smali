.class public final Lio/sentry/EnvelopeReader;
.super Ljava/lang/Object;
.source "EnvelopeReader.java"

# interfaces
.implements Lio/sentry/IEnvelopeReader;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/ISerializer;)V
    .locals 0
    .param p1, "serializer"    # Lio/sentry/ISerializer;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    .line 25
    return-void
.end method

.method private deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 135
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 136
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "reader":Ljava/io/StringReader;
    :try_start_0
    iget-object v2, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    const-class v3, Lio/sentry/SentryEnvelopeHeader;

    invoke-interface {v2, v1, v3}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 137
    return-object v2

    .line 136
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method private deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 143
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 144
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "reader":Ljava/io/StringReader;
    :try_start_0
    iget-object v2, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    const-class v3, Lio/sentry/SentryEnvelopeItemHeader;

    invoke-interface {v2, v1, v3}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryEnvelopeItemHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    .line 145
    return-object v2

    .line 144
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 17
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    move-object/from16 v1, p0

    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 31
    .local v2, "buffer":[B
    const/4 v0, 0x0

    .line 33
    .local v0, "streamOffset":I
    const/4 v3, -0x1

    .line 34
    .local v3, "envelopeEndHeaderOffset":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v3

    move v3, v0

    .line 35
    .end local v0    # "streamOffset":I
    .local v3, "streamOffset":I
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "envelopeEndHeaderOffset":I
    :goto_0
    move-object/from16 v6, p1

    :try_start_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v0

    .local v7, "currentLength":I
    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, -0x1

    if-lez v0, :cond_2

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ne v5, v10, :cond_1

    if-ge v0, v7, :cond_1

    .line 37
    :try_start_1
    aget-byte v11, v2, v0

    if-ne v11, v9, :cond_0

    .line 38
    add-int v5, v3, v0

    .line 39
    goto :goto_2

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v4, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    add-int/2addr v3, v7

    goto :goto_0

    .line 34
    .end local v7    # "currentLength":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v2

    goto/16 :goto_7

    .line 46
    .restart local v7    # "currentLength":I
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 48
    .local v0, "envelopeBytes":[B
    array-length v11, v0

    if-eqz v11, :cond_d

    .line 51
    if-eq v5, v10, :cond_c

    .line 55
    nop

    .line 56
    invoke-direct {v1, v0, v8, v5}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;

    move-result-object v8

    .line 57
    .local v8, "header":Lio/sentry/SentryEnvelopeHeader;
    if-eqz v8, :cond_b

    .line 61
    add-int/lit8 v11, v5, 0x1

    .line 64
    .local v11, "itemHeaderStartOffset":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    :goto_3
    const/4 v13, -0x1

    .line 68
    .local v13, "lineBreakIndex":I
    move v14, v11

    .local v14, "i":I
    :goto_4
    array-length v15, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ge v14, v15, :cond_4

    .line 69
    :try_start_3
    aget-byte v15, v0, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v15, v9, :cond_3

    .line 70
    move v13, v14

    .line 71
    goto :goto_5

    .line 68
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 75
    .end local v14    # "i":I
    :cond_4
    :goto_5
    if-eq v13, v10, :cond_a

    .line 83
    sub-int v14, v13, v11

    .line 84
    :try_start_4
    invoke-direct {v1, v0, v11, v14}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v14

    .line 87
    .local v14, "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v15

    if-lez v15, :cond_9

    .line 92
    invoke-virtual {v14}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v15

    add-int/2addr v15, v13

    add-int/lit8 v15, v15, 0x1

    .line 93
    .local v15, "payloadEndOffsetExclusive":I
    array-length v10, v0

    if-gt v15, v10, :cond_8

    .line 107
    add-int/lit8 v10, v13, 0x1

    .line 108
    invoke-static {v0, v10, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 111
    .local v10, "envelopeItemBytes":[B
    new-instance v9, Lio/sentry/SentryEnvelopeItem;

    invoke-direct {v9, v14, v10}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;[B)V

    .line 112
    .local v9, "item":Lio/sentry/SentryEnvelopeItem;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    array-length v1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v15, v1, :cond_5

    .line 116
    move-object/from16 v16, v2

    goto :goto_6

    .line 117
    :cond_5
    add-int/lit8 v1, v15, 0x1

    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .local v16, "buffer":[B
    :try_start_5
    array-length v2, v0

    if-ne v1, v2, :cond_7

    .line 119
    aget-byte v1, v0, v15

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 120
    nop

    .line 129
    .end local v9    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v10    # "envelopeItemBytes":[B
    .end local v13    # "lineBreakIndex":I
    .end local v14    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    :goto_6
    new-instance v1, Lio/sentry/SentryEnvelope;

    invoke-direct {v1, v8, v12}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 129
    return-object v1

    .line 122
    .restart local v9    # "item":Lio/sentry/SentryEnvelopeItem;
    .restart local v10    # "envelopeItemBytes":[B
    .restart local v13    # "lineBreakIndex":I
    .restart local v14    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    :cond_6
    :try_start_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Envelope has invalid data following an item."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 126
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local v16    # "buffer":[B
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_7
    const/16 v2, 0xa

    add-int/lit8 v11, v15, 0x1

    .line 127
    .end local v9    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v10    # "envelopeItemBytes":[B
    .end local v13    # "lineBreakIndex":I
    .end local v14    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    move-object/from16 v1, p0

    move v9, v2

    move-object/from16 v2, v16

    const/4 v10, -0x1

    goto :goto_3

    .line 94
    .end local v16    # "buffer":[B
    .restart local v2    # "buffer":[B
    .restart local v13    # "lineBreakIndex":I
    .restart local v14    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    :cond_8
    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid length for item at index \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\'. Item is \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' bytes. There are \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' in the buffer."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 87
    .end local v15    # "payloadEndOffsetExclusive":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_9
    move-object/from16 v16, v2

    .line 88
    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Item header at index \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' is null or empty."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 76
    .end local v14    # "itemHeader":Lio/sentry/SentryEnvelopeItemHeader;
    .restart local v2    # "buffer":[B
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_a
    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid envelope. Item at index \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\'. has no header delimiter."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 58
    .end local v11    # "itemHeaderStartOffset":I
    .end local v12    # "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryEnvelopeItem;>;"
    .end local v13    # "lineBreakIndex":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Envelope header is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 52
    .end local v8    # "header":Lio/sentry/SentryEnvelopeHeader;
    .restart local v2    # "buffer":[B
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_c
    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Envelope contains no header."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1

    .line 49
    .restart local v2    # "buffer":[B
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_d
    move-object/from16 v16, v2

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty stream."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "streamOffset":I
    .end local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "envelopeEndHeaderOffset":I
    .end local v16    # "buffer":[B
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 34
    .end local v0    # "envelopeBytes":[B
    .end local v7    # "currentLength":I
    .restart local v3    # "streamOffset":I
    .restart local v4    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "envelopeEndHeaderOffset":I
    .restart local v16    # "buffer":[B
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_7

    .end local v16    # "buffer":[B
    .restart local v2    # "buffer":[B
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object v1, v0

    .end local v2    # "buffer":[B
    .restart local v16    # "buffer":[B
    :goto_7
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1
.end method
