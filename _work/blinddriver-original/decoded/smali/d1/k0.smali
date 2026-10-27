.class public final Ld1/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La6/k;Ld1/l0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld1/k0;->l:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ld1/k0;->m:Ljava/lang/Object;

    iput-object p2, p0, Ld1/k0;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr9/e;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld1/k0;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld1/k0;->n:Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lr9/e;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-static {p2, p1}, Lu8/m;->U(ILjava/util/List;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Ld1/k0;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu8/w;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld1/k0;->l:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ld1/k0;->n:Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lu8/w;->l:Ljava/util/List;

    .line 8
    invoke-static {p2, p1}, Lu8/m;->U(ILjava/util/List;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Ld1/k0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state list through an iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast v0, La6/k;

    iget v0, v0, La6/k;->m:I

    iget-object p0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast p0, Ld1/l0;

    iget p0, p0, Ld1/l0;->o:I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, La6/k;

    iget p0, p0, La6/k;->m:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast v0, La6/k;

    iget v1, v0, La6/k;->m:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast p0, Ld1/l0;

    iget v2, p0, Ld1/l0;->o:I

    invoke-static {v1, v2}, Ld1/w;->a(II)V

    iput v1, v0, La6/k;->m:I

    invoke-virtual {p0, v1}, Ld1/l0;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast v0, Lr9/e;

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object v0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast v0, Lu8/w;

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, La6/k;

    iget p0, p0, La6/k;->m:I

    add-int/lit8 p0, p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast v0, La6/k;

    iget v1, v0, La6/k;->m:I

    iget-object p0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast p0, Ld1/l0;

    iget v2, p0, Ld1/l0;->o:I

    invoke-static {v1, v2}, Ld1/w;->a(II)V

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, La6/k;->m:I

    invoke-virtual {p0, v1}, Ld1/l0;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast v0, Lr9/e;

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object v0, p0, Ld1/k0;->n:Ljava/lang/Object;

    check-cast v0, Lu8/w;

    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, La6/k;

    iget p0, p0, La6/k;->m:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot modify a state list through an iterator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ld1/k0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Ld1/k0;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify a state list through an iterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
