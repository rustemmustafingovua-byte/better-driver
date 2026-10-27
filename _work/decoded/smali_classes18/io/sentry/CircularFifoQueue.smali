.class final Lio/sentry/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 80
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 89
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 69
    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    .line 72
    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    .line 90
    if-lez p1, :cond_0

    .line 93
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    .line 95
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 106
    invoke-virtual {p0, p1}, Lio/sentry/CircularFifoQueue;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lio/sentry/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;

    .line 52
    iget v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    return v0
.end method

.method static synthetic access$100(Lio/sentry/CircularFifoQueue;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;

    .line 52
    iget-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    return v0
.end method

.method static synthetic access$102(Lio/sentry/CircularFifoQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lio/sentry/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;

    .line 52
    iget v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    return v0
.end method

.method static synthetic access$202(Lio/sentry/CircularFifoQueue;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lio/sentry/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lio/sentry/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lio/sentry/CircularFifoQueue;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/sentry/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;

    .line 52
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;

    .line 52
    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method static synthetic access$600(Lio/sentry/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lio/sentry/CircularFifoQueue;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .line 347
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, -0x1

    .line 348
    if-gez p1, :cond_0

    .line 349
    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, v0, -0x1

    .line 351
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .line 333
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, 0x1

    .line 334
    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-lt p1, v0, :cond_0

    .line 335
    const/4 p1, 0x0

    .line 337
    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 135
    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 137
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    iget-object v2, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 141
    iget v2, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lio/sentry/CircularFifoQueue;->full:Z

    .line 142
    iget-boolean v2, p0, Lio/sentry/CircularFifoQueue;->full:Z

    if-eqz v2, :cond_2

    .line 143
    iput v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    goto :goto_2

    .line 145
    :cond_2
    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    .line 147
    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 118
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 121
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 236
    :cond_0
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/CircularFifoQueue;->end:I

    aput-object p1, v0, v1

    .line 238
    iget v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-lt v0, v1, :cond_1

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    .line 242
    :cond_1
    iget v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    iput-boolean v2, p0, Lio/sentry/CircularFifoQueue;->full:Z

    .line 246
    :cond_2
    return v2

    .line 229
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 212
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/CircularFifoQueue;->full:Z

    .line 213
    iput v0, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 214
    iput v0, p0, Lio/sentry/CircularFifoQueue;->end:I

    .line 215
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    .line 258
    .local v0, "sz":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 264
    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    add-int/2addr v1, p1

    iget v2, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    rem-int/2addr v1, v2

    .line 265
    .local v1, "idx":I
    iget-object v2, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 259
    .end local v1    # "idx":I
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 260
    const-string v3, "The specified index (%1$d) is outside the available range [0, %2$d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAtFullCapacity()Z
    .locals 2

    .line 197
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    iget v1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 177
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 186
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    new-instance v0, Lio/sentry/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lio/sentry/CircularFifoQueue$1;-><init>(Lio/sentry/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 206
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    iget v0, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 280
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/sentry/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    .line 314
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    .line 315
    iget-object v1, p0, Lio/sentry/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Lio/sentry/CircularFifoQueue;->start:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/sentry/CircularFifoQueue;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 317
    iget v1, p0, Lio/sentry/CircularFifoQueue;->start:I

    iget v2, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 318
    iput v3, p0, Lio/sentry/CircularFifoQueue;->start:I

    .line 320
    :cond_0
    iput-boolean v3, p0, Lio/sentry/CircularFifoQueue;->full:Z

    .line 322
    :cond_1
    return-object v0

    .line 310
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 157
    .local p0, "this":Lio/sentry/CircularFifoQueue;, "Lio/sentry/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "size":I
    iget v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/CircularFifoQueue;->start:I

    if-ge v1, v2, :cond_0

    .line 160
    iget v1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    iget v2, p0, Lio/sentry/CircularFifoQueue;->start:I

    sub-int/2addr v1, v2

    iget v2, p0, Lio/sentry/CircularFifoQueue;->end:I

    add-int/2addr v1, v2

    .end local v0    # "size":I
    .local v1, "size":I
    goto :goto_1

    .line 161
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    iget v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/CircularFifoQueue;->start:I

    if-ne v1, v2, :cond_2

    .line 162
    iget-boolean v1, p0, Lio/sentry/CircularFifoQueue;->full:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lio/sentry/CircularFifoQueue;->maxElements:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .end local v0    # "size":I
    .restart local v1    # "size":I
    :goto_0
    goto :goto_1

    .line 164
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_2
    iget v1, p0, Lio/sentry/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/CircularFifoQueue;->start:I

    sub-int/2addr v1, v2

    .line 167
    .end local v0    # "size":I
    .restart local v1    # "size":I
    :goto_1
    return v1
.end method
