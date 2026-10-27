.class public Lio/sentry/vendor/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 158
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\\u%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 165
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 166
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 167
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 168
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 169
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 170
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 171
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 172
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    .line 181
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->push(I)V

    .line 193
    const-string v0, ":"

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    .line 209
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 213
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 627
    .local v0, "context":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 629
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 632
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    .line 633
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    .line 634
    return-void

    .line 630
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 670
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :pswitch_1
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :goto_0
    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    .line 652
    goto :goto_1

    .line 665
    :pswitch_3
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 666
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    .line 667
    goto :goto_1

    .line 660
    :pswitch_4
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 661
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    .line 662
    goto :goto_1

    .line 655
    :pswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    .line 656
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    .line 657
    nop

    .line 672
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 4
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 354
    .local v0, "context":I
    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 361
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    .line 362
    if-ne v0, p2, :cond_2

    .line 363
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    .line 365
    :cond_2
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(I)V

    .line 366
    return-object p0

    .line 358
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 612
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 616
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 617
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .param p1, "empty"    # I
    .param p2, "openBracket"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 342
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->push(I)V

    .line 343
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V

    .line 344
    return-object p0
.end method

.method private peek()I
    .locals 2

    .line 380
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .locals 3
    .param p1, "newTop"    # I

    .line 370
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    .line 373
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    .line 374
    return-void
.end method

.method private replaceTop(I)V
    .locals 2
    .param p1, "topOfStack"    # I

    .line 390
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 391
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 580
    .local v0, "replacements":[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 583
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 584
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 586
    .local v5, "c":C
    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 587
    aget-object v6, v0, v5

    .line 588
    .local v6, "replacement":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 589
    goto :goto_3

    .line 591
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    .line 592
    const-string v6, "\\u2028"

    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 593
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    .line 594
    const-string v6, "\\u2029"

    .line 598
    .restart local v6    # "replacement":Ljava/lang/String;
    :cond_3
    :goto_2
    if-ge v1, v4, :cond_4

    .line 599
    iget-object v7, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v8, v4, v1

    invoke-virtual {v7, p1, v1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 601
    :cond_4
    iget-object v7, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v1, v4, 0x1

    .line 583
    .end local v5    # "c":C
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 604
    .end local v4    # "i":I
    :cond_6
    if-ge v1, v3, :cond_7

    .line 605
    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v5, v3, v1

    invoke-virtual {v4, p1, v1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 607
    :cond_7
    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(I)V

    .line 608
    return-void
.end method

.method private writeDeferredName()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeName()V

    .line 416
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 419
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 304
    const/4 v0, 0x1

    const/16 v1, 0x5b

    invoke-direct {p0, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 324
    const/4 v0, 0x3

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 571
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    .line 572
    .local v0, "size":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 575
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    .line 576
    return-void

    .line 573
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endArray()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x2

    const/16 v1, 0x5d

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x5

    const/16 v1, 0x7d

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 561
    return-void

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 449
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 450
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    if-eqz p1, :cond_2

    .line 403
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 406
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 409
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 410
    return-object p0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 461
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    goto :goto_0

    .line 464
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 465
    return-object p0

    .line 468
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 469
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 470
    return-object p0
.end method

.method public final setHtmlSafe(Z)V
    .locals 0
    .param p1, "htmlSafe"    # Z

    .line 269
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    .line 270
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .line 224
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 229
    const-string v0, ": "

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 226
    const-string v0, ":"

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 231
    :goto_1
    return-void
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 251
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    .line 252
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0
    .param p1, "serializeNulls"    # Z

    .line 285
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    .line 286
    return-void
.end method

.method public value(D)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 509
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 513
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 514
    return-object p0
.end method

.method public value(J)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 524
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 525
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 526
    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    if-nez p1, :cond_0

    .line 492
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 495
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 496
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 497
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 541
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    .line 544
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 545
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 548
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 549
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    if-nez p1, :cond_0

    .line 429
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 432
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 433
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 434
    return-object p0
.end method

.method public value(Z)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 480
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 481
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 482
    return-object p0
.end method
