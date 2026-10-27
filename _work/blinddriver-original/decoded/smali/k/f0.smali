.class public final Lk/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lk9/b;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk/f0;->l:I

    iput-object p2, p0, Lk/f0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 3

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 3
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1, p2}, Lt0/b;->a(ILjava/lang/Object;)V

    return-void

    .line 4
    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    if-ltz p1, :cond_2

    .line 5
    iget v0, p0, Lk/h0;->b:I

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    .line 7
    array-length v2, v1

    if-ge v2, v0, :cond_0

    .line 8
    invoke-virtual {p0, v0, v1}, Lk/h0;->m(I[Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    .line 10
    iget v1, p0, Lk/h0;->b:I

    if-eq p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 11
    invoke-static {v0, v0, v2, p1, v1}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 12
    :cond_1
    aput-object p2, v0, p1

    .line 13
    iget p1, p0, Lk/h0;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk/h0;->b:I

    return-void

    .line 14
    :cond_2
    const-string p2, "Index "

    const-string v0, " must be in 0.."

    .line 15
    invoke-static {p1, p2, v0}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 16
    iget p0, p0, Lk/h0;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 6

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1, p2}, Lt0/b;->e(ILjava/util/Collection;)Z

    move-result p0

    return p0

    .line 2
    :pswitch_0
    const-string v0, "elements"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    .line 4
    iget v1, p0, Lk/h0;->b:I

    if-gt p1, v1, :cond_5

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v1, p0, Lk/h0;->b:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v3, v1

    .line 7
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    .line 8
    array-length v4, v1

    if-ge v4, v3, :cond_1

    .line 9
    invoke-virtual {p0, v3, v1}, Lk/h0;->m(I[Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    .line 11
    iget v3, p0, Lk/h0;->b:I

    if-eq p1, v3, :cond_2

    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v3, p1

    .line 13
    iget v4, p0, Lk/h0;->b:I

    .line 14
    invoke-static {v1, v1, v3, p1, v4}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    :cond_2
    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    .line 16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_3

    add-int/2addr v2, p1

    .line 17
    aput-object v4, v1, v2

    move v2, v5

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lg5/f;->P()V

    throw v0

    .line 19
    :cond_4
    iget p1, p0, Lk/h0;->b:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lk/h0;->b:I

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 20
    :cond_5
    const-string p2, "Index "

    const-string v1, " must be in 0.."

    .line 21
    invoke-static {p1, p2, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget p0, p0, Lk/h0;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 27
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    .line 28
    iget v0, p0, Lt0/b;->n:I

    .line 29
    invoke-virtual {p0, v0, p1}, Lt0/b;->e(ILjava/util/Collection;)Z

    move-result p0

    return p0

    .line 30
    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    check-cast p1, Ljava/lang/Iterable;

    .line 32
    iget v0, p0, Lk/h0;->b:I

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_0
    iget p0, p0, Lk/h0;->b:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0}, Lt0/b;->g()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0}, Lk/h0;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->h(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt0/b;->h(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p0}, Lt0/c;->a(ILjava/util/List;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget-object p0, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_0
    invoke-static {p1, p0}, Lk/r0;->a(ILjava/util/List;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget p0, p0, Lt0/b;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0}, Lk/h0;->h()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lk/e0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    :pswitch_0
    new-instance v0, Lk/e0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lt0/b;->l:[Ljava/lang/Object;

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    const/4 v0, -0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ge v0, p0, :cond_5

    aget-object v1, p1, p0

    if-nez v1, :cond_2

    :goto_3
    move v0, p0

    goto :goto_5

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    add-int/lit8 p0, p0, -0x1

    :goto_4
    if-ge v0, p0, :cond_5

    aget-object v2, v1, p0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 3

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Lk/e0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    .line 2
    :pswitch_0
    new-instance v0, Lk/e0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Lk/e0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    .line 4
    :pswitch_0
    new-instance v0, Lk/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lk/e0;-><init>(Ljava/util/List;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-static {p1, p0}, Lt0/c;->a(ILjava/util/List;)V

    .line 4
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_0
    invoke-static {p1, p0}, Lk/r0;->a(ILjava/util/List;)V

    .line 6
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lt0/b;->n:I

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt0/b;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget p0, p0, Lt0/b;->n:I

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk/h0;->b:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/h0;->j(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget p0, p0, Lk/h0;->b:I

    if-eq v0, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_1

    iget-object v2, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lt0/b;->k(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lt0/b;->n:I

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk/h0;->b:I

    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    :goto_2
    const/4 v3, -0x1

    if-ge v3, v2, :cond_4

    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Lk/h0;->k(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    iget p0, p0, Lk/h0;->b:I

    if-eq v0, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p0}, Lt0/c;->a(ILjava/util/List;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget-object p0, p0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :pswitch_0
    invoke-static {p1, p0}, Lk/r0;->a(ILjava/util/List;)V

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    if-ltz p1, :cond_0

    iget v0, p0, Lk/h0;->b:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lk/h0;->a:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lk/h0;->n(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget p0, p0, Lt0/b;->n:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lk/h0;

    iget p0, p0, Lk/h0;->b:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lt0/c;->b(Ljava/util/List;II)V

    new-instance v0, Lk/g0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lk/g0;-><init>(Ljava/util/List;III)V

    return-object v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lk/r0;->b(Ljava/util/List;II)V

    new-instance v0, Lk/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lk/g0;-><init>(Ljava/util/List;III)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {p0}, Lj9/m;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    invoke-static {p0}, Lj9/m;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk/f0;->l:I

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-static {p0, p1}, Lj9/m;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_0
    const-string v0, "array"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lj9/m;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
