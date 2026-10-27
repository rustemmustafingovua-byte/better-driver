.class final Lio/sentry/cache/tape/QueueFile$ElementIterator;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field nextElementIndex:I

.field private nextElementPosition:J

.field final synthetic this$0:Lio/sentry/cache/tape/QueueFile;


# direct methods
.method constructor <init>(Lio/sentry/cache/tape/QueueFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    const/4 p1, 0x0

    iput p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    .line 561
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-object p1, p1, Lio/sentry/cache/tape/QueueFile;->first:Lio/sentry/cache/tape/QueueFile$Element;

    iget-wide v0, p1, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    iput-wide v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 567
    iget-object p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget p1, p1, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iput p1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    .line 569
    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 572
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iget v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 573
    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 577
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-boolean v0, v0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_1

    .line 578
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 579
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 577
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->next()[B

    move-result-object v0

    return-object v0
.end method

.method public next()[B
    .locals 10

    .line 584
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-boolean v0, v0, Lio/sentry/cache/tape/QueueFile;->closed:Z

    if-nez v0, :cond_3

    .line 585
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 586
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 587
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v1, v1, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    if-ge v0, v1, :cond_1

    .line 591
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/cache/tape/QueueFile;->readElement(J)Lio/sentry/cache/tape/QueueFile$Element;

    move-result-object v0

    .line 592
    .local v0, "current":Lio/sentry/cache/tape/QueueFile$Element;
    iget v1, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    new-array v1, v1, [B

    move-object v5, v1

    .line 593
    .local v5, "buffer":[B
    iget-object v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v2, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    const-wide/16 v8, 0x4

    add-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    iput-wide v1, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 594
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v3, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    iget v7, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/sentry/cache/tape/QueueFile;->ringRead(J[BII)Z

    move-result v1

    .line 595
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 597
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v2, v2, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iput v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    .line 598
    invoke-static {}, Lio/sentry/cache/tape/QueueFile;->access$000()[B

    move-result-object v2

    return-object v2

    .line 602
    :cond_0
    iget-object v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget-wide v3, v0, Lio/sentry/cache/tape/QueueFile$Element;->position:J

    add-long/2addr v3, v8

    iget v6, v0, Lio/sentry/cache/tape/QueueFile$Element;->length:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 603
    invoke-virtual {v2, v3, v4}, Lio/sentry/cache/tape/QueueFile;->wrapPosition(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementPosition:J

    .line 604
    iget v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    return-object v5

    .line 610
    .end local v0    # "current":Lio/sentry/cache/tape/QueueFile$Element;
    .end local v1    # "success":Z
    .end local v5    # "buffer":[B
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 613
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->access$100(Lio/sentry/cache/tape/QueueFile;)V

    .line 615
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->elementCount:I

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    nop

    .line 619
    invoke-static {}, Lio/sentry/cache/tape/QueueFile;->access$000()[B

    move-result-object v0

    return-object v0

    .line 616
    :catch_1
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 608
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 609
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 587
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 586
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 584
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 625
    invoke-direct {p0}, Lio/sentry/cache/tape/QueueFile$ElementIterator;->checkForComodification()V

    .line 627
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    invoke-virtual {v0}, Lio/sentry/cache/tape/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    nop

    .line 638
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->this$0:Lio/sentry/cache/tape/QueueFile;

    iget v0, v0, Lio/sentry/cache/tape/QueueFile;->modCount:I

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->expectedModCount:I

    .line 639
    iget v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/sentry/cache/tape/QueueFile$ElementIterator;->nextElementIndex:I

    .line 640
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 629
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal is only permitted from the head."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
