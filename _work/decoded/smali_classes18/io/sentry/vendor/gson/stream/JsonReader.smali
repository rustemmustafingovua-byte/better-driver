.class public Lio/sentry/vendor/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    .line 245
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 246
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 247
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 249
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 250
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 252
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 276
    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    .line 277
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 279
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v0, v2

    .line 290
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 291
    new-array v0, v1, [I

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    .line 297
    if-eqz p1, :cond_0

    .line 300
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 301
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1413
    return-void

    .line 1411
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1581
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1583
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1584
    .local v0, "p":I
    add-int/lit8 v1, v0, 0x5

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x5

    if-le v1, v2, :cond_0

    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1585
    return-void

    .line 1588
    :cond_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1589
    .local v1, "buf":[C
    aget-char v2, v1, v0

    const/16 v4, 0x29

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-char v2, v1, v2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v1, v2

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v1, v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v0, 0x4

    aget-char v2, v1, v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 1594
    :cond_1
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1595
    return-void

    .line 1590
    :cond_2
    :goto_0
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 6
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1287
    .local v0, "buffer":[C
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1288
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1289
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1290
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1292
    :cond_0
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1295
    :goto_0
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1297
    :cond_1
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1298
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1301
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_2

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lez v1, :cond_2

    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    .line 1302
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1303
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1304
    add-int/lit8 p1, p1, 0x1

    .line 1307
    :cond_2
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v1, p1, :cond_1

    .line 1308
    return v4

    .line 1311
    :cond_3
    return v3
.end method

.method private isLiteral(C)Z
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    sparse-switch p1, :sswitch_data_0

    .line 772
    const/4 v0, 0x1

    return v0

    .line 758
    :sswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 770
    :sswitch_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 8
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1330
    .local v0, "buffer":[C
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1331
    .local v1, "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1333
    .local v2, "l":I
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1334
    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1335
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1336
    nop

    .line 1402
    if-nez p1, :cond_0

    .line 1405
    const/4 v3, -0x1

    return v3

    .line 1403
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1338
    :cond_1
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1339
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1342
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1343
    .local v1, "c":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1344
    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1345
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1346
    goto/16 :goto_1

    .line 1347
    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_9

    const/16 v5, 0xd

    if-eq v1, v5, :cond_9

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    .line 1348
    goto :goto_1

    .line 1351
    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_7

    .line 1352
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1353
    const/4 v5, 0x2

    if-ne v4, v2, :cond_5

    .line 1354
    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1355
    invoke-direct {p0, v5}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    .line 1356
    .local v6, "charsLoaded":Z
    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v3

    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1357
    if-nez v6, :cond_5

    .line 1358
    return v1

    .line 1362
    .end local v6    # "charsLoaded":Z
    :cond_5
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 1363
    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v6

    .line 1364
    .local v6, "peek":C
    sparse-switch v6, :sswitch_data_0

    .line 1384
    return v1

    .line 1377
    :sswitch_0
    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v3

    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1378
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1379
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1380
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1381
    move v1, v3

    goto/16 :goto_0

    .line 1367
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :sswitch_1
    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v3

    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1368
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1371
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v5

    .line 1372
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1373
    move v1, v3

    goto/16 :goto_0

    .line 1369
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_6
    const-string v3, "Unterminated comment"

    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 1386
    .end local v6    # "peek":C
    :cond_7
    const/16 v3, 0x23

    if-ne v1, v3, :cond_8

    .line 1387
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1393
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 1394
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1395
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1396
    .end local v4    # "p":I
    .restart local v3    # "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1401
    .end local v1    # "c":I
    move v1, v3

    goto/16 :goto_0

    .line 1398
    .end local v3    # "p":I
    .restart local v1    # "c":I
    .restart local v4    # "p":I
    :cond_8
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1399
    return v1

    .line 1333
    .end local v1    # "c":I
    :cond_9
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 10
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 995
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 997
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 998
    .local v2, "p":I
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1000
    .local v3, "l":I
    move v4, v2

    .line 1001
    .local v4, "start":I
    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v3, :cond_5

    .line 1002
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "p":I
    .local v7, "p":I
    aget-char v2, v0, v2

    .line 1004
    .local v2, "c":I
    if-ne v2, p1, :cond_1

    .line 1005
    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1006
    sub-int v5, v7, v4

    sub-int/2addr v5, v6

    .line 1007
    .local v5, "len":I
    if-nez v1, :cond_0

    .line 1008
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    .line 1010
    :cond_0
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1013
    .end local v5    # "len":I
    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    .line 1014
    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1015
    sub-int v8, v7, v4

    sub-int/2addr v8, v6

    .line 1016
    .local v8, "len":I
    if-nez v1, :cond_2

    .line 1017
    add-int/lit8 v6, v8, 0x1

    mul-int/lit8 v6, v6, 0x2

    .line 1018
    .local v6, "estimatedLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v9

    .line 1020
    .end local v6    # "estimatedLength":I
    :cond_2
    invoke-virtual {v1, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1021
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1023
    .end local v7    # "p":I
    .local v5, "p":I
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1024
    move v4, v5

    .line 1025
    .end local v8    # "len":I
    move v2, v5

    goto :goto_2

    .end local v5    # "p":I
    .restart local v7    # "p":I
    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 1026
    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v6

    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1027
    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1029
    .end local v2    # "c":I
    :cond_4
    move v2, v7

    .end local v7    # "p":I
    .local v2, "p":I
    :goto_2
    goto :goto_1

    .line 1031
    :cond_5
    if-nez v1, :cond_6

    .line 1032
    sub-int v7, v2, v4

    mul-int/lit8 v7, v7, 0x2

    .line 1033
    .local v7, "estimatedLength":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    .line 1035
    .end local v7    # "estimatedLength":I
    :cond_6
    sub-int v5, v2, v4

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1036
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1037
    invoke-direct {p0, v6}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1040
    .end local v2    # "p":I
    .end local v3    # "l":I
    .end local v4    # "start":I
    goto :goto_0

    .line 1038
    .restart local v2    # "p":I
    .restart local v3    # "l":I
    .restart local v4    # "start":I
    :cond_7
    const-string v5, "Unterminated string"

    invoke-direct {p0, v5}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1053
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_1

    .line 1054
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    :sswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 1072
    :sswitch_1
    goto :goto_1

    .line 1077
    :cond_1
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1078
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1079
    goto :goto_0

    .line 1086
    :cond_2
    if-nez v0, :cond_3

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 1089
    :cond_3
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1090
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1091
    const/4 v1, 0x0

    .line 1092
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    nop

    .line 1097
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1099
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 610
    .local v0, "c":C
    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 614
    :cond_0
    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 618
    :cond_1
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 623
    :cond_2
    return v2

    .line 619
    :cond_3
    :goto_0
    const-string v1, "null"

    .line 620
    .local v1, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 621
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 615
    .end local v1    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v1, "false"

    .line 616
    .restart local v1    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 617
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 611
    .end local v1    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v1, "true"

    .line 612
    .restart local v1    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 613
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 627
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 628
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 629
    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 630
    return v2

    .line 632
    :cond_6
    iget-object v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v0, v7, v8

    .line 633
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 634
    return v2

    .line 628
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 638
    .end local v6    # "i":I
    :cond_8
    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_9

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 639
    invoke-direct {p0, v6}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 640
    return v2

    .line 644
    :cond_a
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v5

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 645
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 651
    .local v1, "buffer":[C
    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 652
    .local v2, "p":I
    iget v3, v0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 654
    .local v3, "l":I
    const-wide/16 v4, 0x0

    .line 655
    .local v4, "value":J
    const/4 v6, 0x0

    .line 656
    .local v6, "negative":Z
    const/4 v7, 0x1

    .line 657
    .local v7, "fitsInLong":Z
    const/4 v8, 0x0

    .line 659
    .local v8, "last":I
    const/4 v9, 0x0

    .line 663
    .local v9, "i":I
    :goto_0
    add-int v10, v2, v9

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-ne v10, v3, :cond_2

    .line 664
    array-length v10, v1

    if-ne v9, v10, :cond_0

    .line 667
    return v15

    .line 669
    :cond_0
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v10}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 670
    const-wide/16 v16, 0x0

    goto/16 :goto_5

    .line 672
    :cond_1
    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 673
    iget v3, v0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 676
    :cond_2
    add-int v10, v2, v9

    aget-char v10, v1, v10

    .line 677
    .local v10, "c":C
    const-wide/16 v16, 0x0

    const/4 v11, 0x5

    sparse-switch v10, :sswitch_data_0

    .line 712
    const/16 v12, 0x30

    if-lt v10, v12, :cond_13

    const/16 v12, 0x39

    if-le v10, v12, :cond_9

    goto/16 :goto_4

    .line 698
    :sswitch_0
    if-eq v8, v14, :cond_4

    if-ne v8, v13, :cond_3

    goto :goto_1

    .line 702
    :cond_3
    return v15

    .line 699
    :cond_4
    :goto_1
    const/4 v8, 0x5

    .line 700
    goto :goto_3

    .line 705
    :sswitch_1
    if-ne v8, v14, :cond_5

    .line 706
    const/4 v8, 0x3

    .line 707
    goto :goto_3

    .line 709
    :cond_5
    return v15

    .line 679
    :sswitch_2
    if-nez v8, :cond_6

    .line 680
    const/4 v6, 0x1

    .line 681
    const/4 v8, 0x1

    .line 682
    goto :goto_3

    .line 683
    :cond_6
    if-ne v8, v11, :cond_7

    .line 684
    const/4 v8, 0x6

    .line 685
    goto :goto_3

    .line 687
    :cond_7
    return v15

    .line 690
    :sswitch_3
    if-ne v8, v11, :cond_8

    .line 691
    const/4 v8, 0x6

    .line 692
    goto :goto_3

    .line 694
    :cond_8
    return v15

    .line 718
    :cond_9
    const/4 v12, 0x1

    if-eq v8, v12, :cond_11

    if-nez v8, :cond_a

    goto :goto_2

    .line 721
    :cond_a
    if-ne v8, v14, :cond_e

    .line 722
    cmp-long v11, v4, v16

    if-nez v11, :cond_b

    .line 723
    return v15

    .line 725
    :cond_b
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v4

    add-int/lit8 v11, v10, -0x30

    move-wide/from16 v16, v13

    int-to-long v12, v11

    sub-long v13, v16, v12

    .line 726
    .local v13, "newValue":J
    const-wide v11, -0xcccccccccccccccL

    cmp-long v16, v4, v11

    if-gtz v16, :cond_c

    cmp-long v11, v4, v11

    if-nez v11, :cond_d

    cmp-long v11, v13, v4

    if-gez v11, :cond_d

    :cond_c
    const/4 v15, 0x1

    :cond_d
    and-int/2addr v7, v15

    .line 728
    nop

    .line 729
    .end local v4    # "value":J
    .local v13, "value":J
    move-wide v4, v13

    goto :goto_3

    .end local v13    # "value":J
    .restart local v4    # "value":J
    :cond_e
    const/4 v12, 0x3

    if-ne v8, v12, :cond_f

    .line 730
    const/4 v8, 0x4

    goto :goto_3

    .line 731
    :cond_f
    if-eq v8, v11, :cond_10

    const/4 v11, 0x6

    if-ne v8, v11, :cond_12

    .line 732
    :cond_10
    const/4 v8, 0x7

    goto :goto_3

    .line 719
    :cond_11
    :goto_2
    add-int/lit8 v11, v10, -0x30

    neg-int v11, v11

    int-to-long v4, v11

    .line 720
    const/4 v8, 0x2

    .line 662
    .end local v10    # "c":C
    :cond_12
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 713
    .restart local v10    # "c":C
    :cond_13
    :goto_4
    invoke-direct {v0, v10}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 714
    nop

    .line 738
    .end local v10    # "c":C
    :goto_5
    if-ne v8, v14, :cond_17

    if-eqz v7, :cond_17

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v4, v10

    if-nez v10, :cond_14

    if-eqz v6, :cond_17

    :cond_14
    cmp-long v10, v4, v16

    if-nez v10, :cond_15

    if-nez v6, :cond_17

    .line 739
    :cond_15
    if-eqz v6, :cond_16

    move-wide v10, v4

    goto :goto_6

    :cond_16
    neg-long v10, v4

    :goto_6
    iput-wide v10, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    .line 740
    iget v10, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v10, v9

    iput v10, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 741
    const/16 v10, 0xf

    iput v10, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v10

    .line 742
    :cond_17
    if-eq v8, v14, :cond_19

    if-eq v8, v13, :cond_19

    const/4 v10, 0x7

    if-ne v8, v10, :cond_18

    goto :goto_7

    .line 747
    :cond_18
    return v15

    .line 744
    :cond_19
    :goto_7
    iput v9, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    .line 745
    const/16 v10, 0x10

    iput v10, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v10

    .line 716
    .restart local v10    # "c":C
    :cond_1a
    return v15

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private push(I)V
    .locals 3
    .param p1, "newTop"    # I

    .line 1271
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1272
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 1273
    .local v0, "newLength":I
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    .line 1274
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    .line 1275
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1277
    .end local v0    # "newLength":I
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    .line 1278
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1512
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1513
    .local v0, "escaped":C
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_0

    .line 1563
    const-string v1, "Invalid escape sequence"

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1515
    :sswitch_0
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-le v3, v5, :cond_3

    invoke-direct {p0, v4}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1516
    :cond_2
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1519
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 1520
    .local v2, "result":C
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .local v3, "i":I
    add-int/lit8 v5, v3, 0x4

    .local v5, "end":I
    :goto_2
    if-ge v3, v5, :cond_7

    .line 1521
    iget-object v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    aget-char v6, v6, v3

    .line 1522
    .local v6, "c":C
    shl-int/lit8 v7, v2, 0x4

    int-to-char v2, v7

    .line 1523
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 1524
    add-int/lit8 v7, v6, -0x30

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_3

    .line 1525
    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    const/16 v7, 0x66

    if-gt v6, v7, :cond_5

    .line 1526
    add-int/lit8 v7, v6, -0x61

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_3

    .line 1527
    :cond_5
    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    .line 1528
    add-int/lit8 v7, v6, -0x41

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    int-to-char v2, v7

    .line 1520
    .end local v6    # "c":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1530
    .restart local v6    # "c":C
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v10, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-direct {v8, v9, v10, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1533
    .end local v3    # "i":I
    .end local v5    # "end":I
    .end local v6    # "c":C
    :cond_7
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1534
    return v2

    .line 1537
    .end local v2    # "result":C
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 1546
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 1543
    :sswitch_3
    return v1

    .line 1549
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 1540
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 1552
    :sswitch_6
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1553
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1560
    :sswitch_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1106
    .local v0, "buffer":[C
    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1107
    .local v1, "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1109
    .local v2, "l":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 1110
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aget-char v1, v0, v1

    .line 1111
    .local v1, "c":I
    if-ne v1, p1, :cond_0

    .line 1112
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1113
    return-void

    .line 1114
    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1115
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1116
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1117
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1118
    .end local v4    # "p":I
    .local v3, "p":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    move v1, v3

    goto :goto_2

    .line 1119
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1120
    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v5, v3

    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1121
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1123
    .end local v1    # "c":I
    :cond_2
    move v1, v4

    .end local v4    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_1

    .line 1124
    :cond_3
    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1125
    .end local v1    # "p":I
    .end local v2    # "l":I
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1126
    :cond_4
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1439
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1452
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1440
    :cond_1
    :goto_1
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1441
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1442
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1443
    goto :goto_3

    .line 1445
    :cond_2
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1446
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v2, v2, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_3

    .line 1447
    nop

    .line 1439
    .end local v1    # "c":I
    :goto_3
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1445
    .restart local v1    # "c":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1450
    .end local v1    # "c":I
    :cond_4
    return v3
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    nop

    :goto_0
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1422
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1423
    .local v0, "c":C
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1424
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    .line 1425
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    .line 1426
    goto :goto_1

    .line 1427
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1428
    nop

    .line 1431
    .end local v0    # "c":C
    :cond_2
    :goto_1
    return-void

    .line 1430
    :cond_3
    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    nop

    :cond_0
    const/4 v0, 0x0

    .line 1132
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_1

    .line 1133
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :sswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 1151
    :sswitch_1
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1152
    return-void

    .line 1155
    :cond_1
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1156
    .end local v0    # "i":I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1572
    new-instance v0, Lio/sentry/vendor/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/vendor/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 349
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 352
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    .line 354
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 355
    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 359
    return-void

    .line 357
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 385
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 388
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 389
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 394
    return-void

    .line 392
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1224
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 1225
    const/4 v0, 0x1

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 1226
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1227
    return-void
.end method

.method doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 470
    .local v0, "peekStack":I
    const/16 v1, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v0, v2, :cond_0

    .line 471
    iget-object v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v8, v2

    aput v6, v7, v8

    goto/16 :goto_2

    .line 472
    :cond_0
    if-ne v0, v6, :cond_1

    .line 474
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v7

    .line 475
    .local v7, "c":I
    sparse-switch v7, :sswitch_data_0

    .line 483
    const-string v1, "Unterminated array"

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 477
    :sswitch_0
    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v5

    .line 479
    :sswitch_1
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 481
    :sswitch_2
    nop

    .line 485
    .end local v7    # "c":I
    goto/16 :goto_2

    :cond_1
    const/4 v7, 0x5

    if-eq v0, v3, :cond_11

    if-ne v0, v7, :cond_2

    goto/16 :goto_4

    .line 523
    :cond_2
    if-ne v0, v5, :cond_5

    .line 524
    iget-object v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v9, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v9, v2

    aput v7, v8, v9

    .line 526
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v7

    .line 527
    .restart local v7    # "c":I
    sparse-switch v7, :sswitch_data_1

    .line 537
    const-string v1, "Expected \':\'"

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 531
    :sswitch_3
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 532
    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v8, v9, :cond_3

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v8, v8, v9

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_4

    .line 533
    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v2

    iput v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 529
    :sswitch_4
    nop

    .line 539
    .end local v7    # "c":I
    :cond_4
    :goto_0
    goto :goto_2

    :cond_5
    const/4 v7, 0x6

    if-ne v0, v7, :cond_7

    .line 540
    iget-boolean v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-eqz v7, :cond_6

    .line 541
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 543
    :cond_6
    iget-object v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v8, v2

    aput v4, v7, v8

    goto :goto_2

    .line 544
    :cond_7
    if-ne v0, v4, :cond_9

    .line 545
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v7

    .line 546
    .restart local v7    # "c":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 547
    const/16 v1, 0x11

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v1

    .line 549
    :cond_8
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 550
    iget v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v8, v2

    iput v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .end local v7    # "c":I
    goto :goto_1

    .line 552
    :cond_9
    if-eq v0, v1, :cond_10

    :goto_1
    nop

    .line 556
    :goto_2
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v7

    .line 557
    .restart local v7    # "c":I
    sparse-switch v7, :sswitch_data_2

    .line 583
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 586
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peekKeyword()I

    move-result v1

    .line 587
    .local v1, "result":I
    if-eqz v1, :cond_d

    .line 588
    return v1

    .line 581
    .end local v1    # "result":I
    :sswitch_5
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v2

    .line 559
    :sswitch_6
    if-ne v0, v2, :cond_a

    .line 560
    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v5

    .line 579
    :sswitch_7
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v3

    .line 566
    :cond_a
    :sswitch_8
    if-eq v0, v2, :cond_c

    if-ne v0, v6, :cond_b

    goto :goto_3

    .line 571
    :cond_b
    const-string v1, "Unexpected value"

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 567
    :cond_c
    :goto_3
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 568
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 569
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v4

    .line 574
    :sswitch_9
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 575
    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v1

    .line 577
    :sswitch_a
    const/16 v1, 0x9

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v1

    .line 591
    .restart local v1    # "result":I
    :cond_d
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peekNumber()I

    move-result v1

    .line 592
    if-eqz v1, :cond_e

    .line 593
    return v1

    .line 596
    :cond_e
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v2, v2, v3

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 600
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 601
    const/16 v2, 0xa

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v2

    .line 597
    :cond_f
    const-string v2, "Expected value"

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 553
    .end local v1    # "result":I
    .end local v7    # "c":I
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_11
    :goto_4
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v2

    aput v5, v1, v3

    .line 488
    if-ne v0, v7, :cond_12

    .line 489
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 490
    .local v1, "c":I
    sparse-switch v1, :sswitch_data_3

    .line 498
    const-string v2, "Unterminated object"

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 492
    :sswitch_b
    iput v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v6

    .line 494
    :sswitch_c
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 496
    :sswitch_d
    nop

    .line 501
    .end local v1    # "c":I
    :cond_12
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    .line 502
    .restart local v1    # "c":I
    const-string v3, "Expected name"

    sparse-switch v1, :sswitch_data_4

    .line 515
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 516
    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v4, v2

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 517
    int-to-char v2, v1

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 518
    const/16 v2, 0xe

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v2

    .line 509
    :sswitch_e
    if-eq v0, v7, :cond_13

    .line 510
    iput v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v6

    .line 512
    :cond_13
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 506
    :sswitch_f
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 507
    const/16 v2, 0xc

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v2

    .line 504
    :sswitch_10
    const/16 v2, 0xd

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v2

    .line 520
    :cond_14
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3a -> :sswitch_4
        0x3d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x2c -> :sswitch_8
        0x3b -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x7b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_d
        0x3b -> :sswitch_c
        0x7d -> :sswitch_b
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_10
        0x27 -> :sswitch_f
        0x7d -> :sswitch_e
    .end sparse-switch
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 367
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 370
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 371
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 372
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 373
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 377
    return-void

    .line 375
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 402
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 405
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 406
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 407
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 408
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 409
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 413
    return-void

    .line 411
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1471
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1472
    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1481
    :pswitch_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1483
    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1475
    :pswitch_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1476
    nop

    .line 1471
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 420
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 423
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isLenient()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method locationString()Ljava/lang/String;
    .locals 4

    .line 1460
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 1461
    .local v0, "line":I
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1462
    .local v1, "column":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 848
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 851
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 852
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 853
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 854
    return v3

    .line 855
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 856
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 857
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 858
    return v2

    .line 860
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 894
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 898
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 899
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 900
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 901
    iget-wide v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 904
    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 905
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 906
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_2

    .line 907
    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    .line 909
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 910
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 911
    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 912
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 915
    :goto_2
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 916
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 917
    .local v3, "result":D
    iget-boolean v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-nez v1, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 918
    :cond_8
    new-instance v1, Lio/sentry/vendor/gson/stream/MalformedJsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 919
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/vendor/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 921
    :cond_9
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 922
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 923
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 924
    return-wide v3
.end method

.method public nextInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1171
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1176
    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 1177
    iget-wide v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    long-to-int v1, v4

    .line 1178
    .local v1, "result":I
    iget-wide v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1181
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1182
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1183
    return v1

    .line 1179
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1186
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1187
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1188
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 1189
    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1204
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1191
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 1193
    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v1, 0x27

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1196
    :goto_2
    :try_start_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1197
    .restart local v1    # "result":I
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1198
    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    return v1

    .line 1200
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 1202
    nop

    .line 1207
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1208
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1209
    .local v4, "asDouble":D
    double-to-int v1, v4

    .line 1210
    .restart local v1    # "result":I
    int-to-double v6, v1

    cmpl-double v6, v6, v4

    if-nez v6, :cond_8

    .line 1213
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1214
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1215
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 1216
    return v1

    .line 1211
    :cond_8
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 939
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 943
    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 944
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 945
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 946
    iget-wide v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    return-wide v1

    .line 949
    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 950
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 951
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 952
    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 967
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 954
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 956
    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v1, 0x27

    goto :goto_1

    :cond_6
    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 959
    :goto_2
    :try_start_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 960
    .local v4, "result":J
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 961
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    return-wide v4

    .line 963
    .end local v4    # "result":J
    :catch_0
    move-exception v1

    .line 965
    nop

    .line 970
    :goto_3
    const/16 v1, 0xb

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 971
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 972
    .local v4, "asDouble":D
    double-to-long v6, v4

    .line 973
    .local v6, "result":J
    long-to-double v8, v6

    cmpl-double v1, v8, v4

    if-nez v1, :cond_7

    .line 976
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 977
    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 978
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 979
    return-wide v6

    .line 974
    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 785
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 789
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 790
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 792
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 793
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 794
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .line 798
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 799
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 800
    return-object v1

    .line 796
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 872
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 875
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 876
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 877
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 881
    return-void

    .line 879
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 813
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 817
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 818
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 819
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 820
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 822
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 823
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 824
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 825
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 826
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 827
    iget-wide v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 828
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 829
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 830
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 834
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 835
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 836
    return-object v1

    .line 832
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 431
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 435
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 464
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 462
    :pswitch_0
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 460
    :pswitch_1
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 447
    :pswitch_2
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 457
    :pswitch_3
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 452
    :pswitch_4
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 450
    :pswitch_5
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 443
    :pswitch_6
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 441
    :pswitch_7
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 439
    :pswitch_8
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 437
    :pswitch_9
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 333
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    .line 334
    return-void
.end method

.method public skipValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    const/4 v0, 0x0

    .line 1237
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1238
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 1239
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v1

    .line 1242
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1243
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1245
    :cond_2
    if-ne v1, v3, :cond_3

    .line 1246
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1248
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1249
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 1250
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1251
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1252
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 1253
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1254
    :cond_5
    const/16 v2, 0xe

    if-eq v1, v2, :cond_b

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 1256
    :cond_6
    const/16 v2, 0x8

    if-eq v1, v2, :cond_a

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 1258
    :cond_7
    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    goto :goto_0

    .line 1260
    :cond_8
    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    .line 1261
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v4

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_3

    .line 1259
    :cond_9
    :goto_0
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_3

    .line 1257
    :cond_a
    :goto_1
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_3

    .line 1255
    :cond_b
    :goto_2
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 1263
    :cond_c
    :goto_3
    const/4 v2, 0x0

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    .line 1264
    .end local v1    # "p":I
    if-nez v0, :cond_0

    .line 1266
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 1267
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 1268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
