.class public final Lk/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/h;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lk/k0;->l:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lk/k0;->o:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 9
    iput p1, p0, Lk/k0;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lk/k0;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/k0;->n:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lk/k0;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/l0;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lk/k0;->l:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lk/k0;->o:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lk/k0;->m:I

    .line 17
    new-instance v0, Lk/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lk/j0;-><init>(Lk/l0;Lk/k0;Ly8/c;)V

    invoke-static {v0}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p1

    iput-object p1, p0, Lk/k0;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/p0;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lk/k0;->l:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lk/k0;->o:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lk/k0;->m:I

    .line 13
    new-instance v0, Lk/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lk/o0;-><init>(Lk/p0;Lk/k0;Ly8/c;)V

    invoke-static {v0}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p1

    iput-object p1, p0, Lk/k0;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq9/n;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lk/k0;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk/k0;->o:Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lq9/n;->a:Lq9/h;

    .line 6
    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lk/k0;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v0, Lf9/h;

    iget v1, p0, Lk/k0;->m:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lf9/h;->b:Ljava/lang/Object;

    check-cast v0, Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lf9/h;->c:Ljava/lang/Object;

    check-cast v0, Li9/c;

    iget-object v1, p0, Lk/k0;->n:Ljava/lang/Object;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lk/k0;->n:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lk/k0;->m:I

    return-void
.end method

.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lk/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lk/k0;->m:I

    iget-object p0, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v0, Lq9/n;

    iget-object v1, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    :goto_1
    iget v2, p0, Lk/k0;->m:I

    iget v3, v0, Lq9/n;->b:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v2, p0, Lk/k0;->m:I

    add-int/2addr v2, v4

    iput v2, p0, Lk/k0;->m:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lk/k0;->m:I

    iget v0, v0, Lq9/n;->c:I

    if-ge p0, v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4

    :pswitch_1
    iget v0, p0, Lk/k0;->m:I

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lk/k0;->a()V

    :cond_3
    iget p0, p0, Lk/k0;->m:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_2
    iget-object p0, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast p0, Lq9/i;

    invoke-virtual {p0}, Lq9/i;->hasNext()Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast p0, Lq9/i;

    invoke-virtual {p0}, Lq9/i;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk/k0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lk/k0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/k0;->n:Ljava/lang/Object;

    iget v1, p0, Lk/k0;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/k0;->m:I

    iget-object v1, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lx0/a;

    iget-object v1, v1, Lx0/a;->b:Ljava/lang/Object;

    iput-object v1, p0, Lk/k0;->n:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash code of an element ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") has changed after it was added to the persistent set."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v0, Lq9/n;

    iget-object v1, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    :goto_0
    iget v2, p0, Lk/k0;->m:I

    iget v3, v0, Lq9/n;->b:I

    if-ge v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v2, p0, Lk/k0;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk/k0;->m:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lk/k0;->m:I

    iget v0, v0, Lq9/n;->c:I

    if-ge v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk/k0;->m:I

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Lk/k0;->m:I

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lk/k0;->a()V

    :cond_4
    iget v0, p0, Lk/k0;->m:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lk/k0;->n:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lk/k0;->m:I

    return-object v0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_2
    iget-object p0, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast p0, Lq9/i;

    invoke-virtual {p0}, Lq9/i;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lk/k0;->n:Ljava/lang/Object;

    check-cast p0, Lq9/i;

    invoke-virtual {p0}, Lq9/i;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lk/k0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    iget v0, p0, Lk/k0;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v2, Lk/p0;

    iget-object v2, v2, Lk/p0;->m:Lk/n0;

    invoke-virtual {v2, v0}, Lk/n0;->m(I)V

    iput v1, p0, Lk/k0;->m:I

    :cond_0
    return-void

    :pswitch_3
    iget v0, p0, Lk/k0;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lk/k0;->o:Ljava/lang/Object;

    check-cast v2, Lk/l0;

    iget-object v2, v2, Lk/l0;->m:Lk/i0;

    invoke-virtual {v2, v0}, Lk/i0;->h(I)V

    iput v1, p0, Lk/k0;->m:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
