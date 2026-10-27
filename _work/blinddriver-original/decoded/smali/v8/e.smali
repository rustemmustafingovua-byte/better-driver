.class public abstract Lv8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lwa/e;->m:Lwa/e;

    if-nez p0, :cond_0

    new-instance p0, Lwa/e;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lwa/e;-><init>(I)V

    sput-object p0, Lwa/e;->m:Lwa/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget v0, p0, Lv8/e;->n:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget p0, p0, Lv8/e;->m:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v0, Lv8/f;

    iget v0, v0, Lv8/f;->s:I

    iget p0, p0, Lv8/e;->n:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public c()V
    .locals 3

    :goto_0
    iget v0, p0, Lv8/e;->l:I

    iget-object v1, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v1, Lv8/f;

    iget v2, v1, Lv8/f;->q:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lv8/f;->n:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv8/e;->l:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lv8/e;->l:I

    iget-object p0, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast p0, Lv8/f;

    iget p0, p0, Lv8/f;->q:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v0, Lv8/f;

    invoke-virtual {p0}, Lv8/e;->b()V

    iget v1, p0, Lv8/e;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lv8/f;->c()V

    iget v1, p0, Lv8/e;->m:I

    invoke-virtual {v0, v1}, Lv8/f;->m(I)V

    iput v2, p0, Lv8/e;->m:I

    iget v0, v0, Lv8/f;->s:I

    iput v0, p0, Lv8/e;->n:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
