.class Lio/sentry/CircularFifoQueue$1;
.super Ljava/lang/Object;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field final synthetic this$0:Lio/sentry/CircularFifoQueue;


# direct methods
.method constructor <init>(Lio/sentry/CircularFifoQueue;)V
    .locals 1
    .param p1, "this$0"    # Lio/sentry/CircularFifoQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 361
    .local p0, "this":Lio/sentry/CircularFifoQueue$1;, "Lio/sentry/CircularFifoQueue$1;"
    iput-object p1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iget-object v0, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v0}, Lio/sentry/CircularFifoQueue;->access$000(Lio/sentry/CircularFifoQueue;)I

    move-result v0

    iput v0, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    .line 364
    const/4 v0, -0x1

    iput v0, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 365
    iget-object v0, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v0}, Lio/sentry/CircularFifoQueue;->access$100(Lio/sentry/CircularFifoQueue;)Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue$1;->isFirst:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 369
    .local p0, "this":Lio/sentry/CircularFifoQueue$1;, "Lio/sentry/CircularFifoQueue$1;"
    iget-boolean v0, p0, Lio/sentry/CircularFifoQueue$1;->isFirst:Z

    if-nez v0, :cond_1

    iget v0, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    iget-object v1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v1}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lio/sentry/CircularFifoQueue$1;, "Lio/sentry/CircularFifoQueue$1;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue$1;->isFirst:Z

    .line 378
    iget v0, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    iput v0, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 379
    iget-object v0, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    iget v1, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    invoke-static {v0, v1}, Lio/sentry/CircularFifoQueue;->access$300(Lio/sentry/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    .line 380
    iget-object v0, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v0}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 385
    .local p0, "this":Lio/sentry/CircularFifoQueue$1;, "Lio/sentry/CircularFifoQueue$1;"
    iget v0, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 390
    iget v0, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$000(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 391
    iget-object v0, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-virtual {v0}, Lio/sentry/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 392
    iput v1, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 393
    return-void

    .line 396
    :cond_0
    iget v0, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 397
    .local v0, "pos":I
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$000(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    iget v3, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 399
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v3}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    iget-object v6, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v6}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 402
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 403
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$500(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 404
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    iget-object v5, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v5}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    aput-object v5, v2, v3

    .line 405
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_2
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v3, v0}, Lio/sentry/CircularFifoQueue;->access$600(Lio/sentry/CircularFifoQueue;I)I

    move-result v3

    iget-object v5, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v5}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    .line 408
    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2, v0}, Lio/sentry/CircularFifoQueue;->access$300(Lio/sentry/CircularFifoQueue;I)I

    move-result v0

    goto :goto_0

    .line 413
    :cond_3
    :goto_1
    iput v1, p0, Lio/sentry/CircularFifoQueue$1;->lastReturnedIndex:I

    .line 414
    iget-object v1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    iget-object v3, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v3}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v3

    invoke-static {v2, v3}, Lio/sentry/CircularFifoQueue;->access$600(Lio/sentry/CircularFifoQueue;I)I

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/CircularFifoQueue;->access$202(Lio/sentry/CircularFifoQueue;I)I

    .line 415
    iget-object v1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v1}, Lio/sentry/CircularFifoQueue;->access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v2}, Lio/sentry/CircularFifoQueue;->access$200(Lio/sentry/CircularFifoQueue;)I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 416
    iget-object v1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    invoke-static {v1, v4}, Lio/sentry/CircularFifoQueue;->access$102(Lio/sentry/CircularFifoQueue;Z)Z

    .line 417
    iget-object v1, p0, Lio/sentry/CircularFifoQueue$1;->this$0:Lio/sentry/CircularFifoQueue;

    iget v2, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    invoke-static {v1, v2}, Lio/sentry/CircularFifoQueue;->access$600(Lio/sentry/CircularFifoQueue;I)I

    move-result v1

    iput v1, p0, Lio/sentry/CircularFifoQueue$1;->index:I

    .line 418
    return-void

    .line 386
    .end local v0    # "pos":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
