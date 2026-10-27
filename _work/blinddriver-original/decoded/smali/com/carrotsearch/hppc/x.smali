.class public Lcom/carrotsearch/hppc/x;
.super Lcom/carrotsearch/hppc/c;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/d0;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY_ARRAY:[I


# instance fields
.field public buffer:[I

.field public elementsCount:I

.field protected final resizer:Lcom/carrotsearch/hppc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/carrotsearch/hppc/x;->EMPTY_ARRAY:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Ld7/g;

    const/16 v1, 0xe

    .line 2
    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Lcom/carrotsearch/hppc/x;->EMPTY_ARRAY:[I

    iput-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    .line 5
    iput-object v0, p0, Lcom/carrotsearch/hppc/x;->resizer:Lcom/carrotsearch/hppc/i;

    .line 6
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->ensureCapacity(I)V

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/x;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    return-void
.end method

.method public static varargs from([I)Lcom/carrotsearch/hppc/x;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->add([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    .line 2
    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    aput p1, v0, v1

    return-void
.end method

.method public add(II)V
    .locals 4

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    .line 4
    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget v2, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    aput p1, v1, v2

    add-int/2addr v2, v0

    .line 5
    iput v2, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    aput p2, v1, v3

    return-void
.end method

.method public final varargs add([I)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/carrotsearch/hppc/x;->add([III)V

    return-void
.end method

.method public add([III)V
    .locals 2

    .line 6
    invoke-virtual {p0, p3}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    .line 7
    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method public addAll(Lcom/carrotsearch/hppc/z;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    .line 4
    iget v1, v1, Ln5/a;->b:I

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public addAll(Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ln5/a;",
            ">;)I"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    .line 6
    iget v1, v1, Ln5/a;->b:I

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method public clone()Lcom/carrotsearch/hppc/x;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/x;

    .line 3
    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/carrotsearch/hppc/x;->buffer:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->clone()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ensureBufferSpace(I)V
    .locals 3

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int v2, v1, p1

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/carrotsearch/hppc/x;->resizer:Lcom/carrotsearch/hppc/i;

    check-cast v2, Ld7/g;

    invoke-virtual {v2, v0, v1, p1}, Ld7/g;->r(III)I

    move-result p1

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    :cond_1
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    :cond_1
    return-void
.end method

.method public equalElements(Lcom/carrotsearch/hppc/x;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->equalElements(Lcom/carrotsearch/hppc/x;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Lo5/c;)Lo5/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/c;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/carrotsearch/hppc/x;->forEach(Lo5/c;II)Lo5/c;

    move-result-object p0

    return-object p0
.end method

.method public forEach(Lo5/c;II)Lo5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/c;",
            ">(TT;II)TT;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    :goto_0
    if-ge p2, p3, :cond_1

    .line 6
    aget v0, p0, p2

    invoke-interface {p1, v0}, Lo5/c;->apply(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public forEach(Lp5/c;)Lp5/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/c;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/carrotsearch/hppc/x;->forEach(Lp5/c;II)Lp5/c;

    move-result-object p0

    return-object p0
.end method

.method public forEach(Lp5/c;II)Lp5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/c;",
            ">(TT;II)TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    :goto_0
    if-ge p2, p3, :cond_0

    .line 3
    aget v0, p0, p2

    invoke-interface {p1, v0}, Lp5/c;->apply(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget p0, p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public insert(II)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->ensureBufferSpace(I)V

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aput p2, v1, p1

    iget p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/v;

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/carrotsearch/hppc/v;-><init>([II)V

    return-object v0
.end method

.method public lastIndexOf(I)I
    .locals 2

    iget v0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public release()V
    .locals 1

    sget-object v0, Lcom/carrotsearch/hppc/x;->EMPTY_ARRAY:[I

    iput-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method public remove(I)I
    .locals 4

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-ge v2, v3, :cond_0

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return v1
.end method

.method public removeAll(I)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v4, v3, v1

    if-ne v4, p1, :cond_0

    .line 4
    aput v0, v3, v1

    goto :goto_1

    :cond_0
    if-eq v2, v1, :cond_1

    .line 5
    aput v4, v3, v2

    .line 6
    aput v0, v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v2

    .line 7
    iput v2, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return v3
.end method

.method public removeAll(Lcom/carrotsearch/hppc/j0;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/a;-><init>(Lcom/carrotsearch/hppc/j0;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public removeAll(Lo5/c;)I
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    .line 9
    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 10
    :try_start_0
    aget v5, v0, v3

    invoke-interface {p1, v5}, Lo5/c;->apply(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    aput v2, v0, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eq v4, v3, :cond_1

    .line 12
    aget v5, v0, v3

    aput v5, v0, v4

    .line 13
    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    if-ge v3, v1, :cond_3

    if-eq v4, v3, :cond_2

    .line 14
    aget v5, v0, v3

    aput v5, v0, v4

    .line 15
    aput v2, v0, v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 16
    :cond_3
    iput v4, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    throw p1

    :cond_4
    :goto_3
    if-ge v3, v1, :cond_6

    if-eq v4, v3, :cond_5

    .line 17
    aget p1, v0, v3

    aput p1, v0, v4

    .line 18
    aput v2, v0, v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iput v4, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    sub-int/2addr v1, v4

    return v1
.end method

.method public removeFirst(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->remove(I)I

    :cond_0
    return p1
.end method

.method public removeLast(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->remove(I)I

    :cond_0
    return p1
.end method

.method public removeRange(II)V
    .locals 2

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    add-int/2addr p2, p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public resize(I)V
    .locals 3

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    array-length v1, v0

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->ensureCapacity(I)V

    :goto_0
    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method

.method public retainAll(Lcom/carrotsearch/hppc/j0;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/a;-><init>(Lcom/carrotsearch/hppc/j0;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public retainAll(Lo5/c;)I
    .locals 1

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/b;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/b;-><init>(Lo5/c;)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public set(II)I
    .locals 1

    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v0, p0, p1

    aput p2, p0, p1

    return v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return p0
.end method

.method public toArray()[I
    .locals 1

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget p0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/carrotsearch/hppc/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimToSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    :cond_0
    return-void
.end method
