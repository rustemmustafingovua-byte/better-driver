.class public final Ld1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld1/v;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld1/d0;->l:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/d0;->p:Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    .line 10
    iput p2, p0, Ld1/d0;->m:I

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Ld1/d0;->n:I

    .line 12
    invoke-static {p1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void
.end method

.method public constructor <init>(Le2/q;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld1/d0;->l:I

    and-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p2, v0

    .line 1
    :cond_0
    iget-object p3, p1, Le2/q;->l:Lk/h0;

    .line 2
    iget p3, p3, Lk/h0;->b:I

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Ld1/d0;-><init>(Le2/q;III)V

    return-void
.end method

.method public constructor <init>(Le2/q;III)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld1/d0;->l:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/d0;->p:Ljava/lang/Object;

    .line 14
    iput p2, p0, Ld1/d0;->m:I

    .line 15
    iput p3, p0, Ld1/d0;->n:I

    .line 16
    iput p4, p0, Ld1/d0;->o:I

    return-void
.end method

.method public constructor <init>(Lv8/a;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld1/d0;->l:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ld1/d0;->p:Ljava/lang/Object;

    .line 19
    iput p2, p0, Ld1/d0;->m:I

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Ld1/d0;->n:I

    .line 21
    invoke-static {p1}, Lv8/a;->c(Lv8/a;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void
.end method

.method public constructor <init>(Lv8/b;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ld1/d0;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ld1/d0;->p:Ljava/lang/Object;

    .line 6
    iput p2, p0, Ld1/d0;->m:I

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Ld1/d0;->n:I

    .line 8
    invoke-static {p1}, Lv8/b;->c(Lv8/b;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/a;

    iget-object v0, v0, Lv8/a;->p:Lv8/b;

    invoke-static {v0}, Lv8/b;->c(Lv8/b;)I

    move-result v0

    iget p0, p0, Ld1/d0;->o:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ld1/d0;->b()V

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/b;

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld1/d0;->m:I

    invoke-virtual {v0, v1, p1}, Lv8/b;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ld1/d0;->n:I

    invoke-static {v0}, Lv8/b;->c(Lv8/b;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ld1/d0;->a()V

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/a;

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld1/d0;->m:I

    invoke-virtual {v0, v1, p1}, Lv8/a;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ld1/d0;->n:I

    invoke-static {v0}, Lv8/a;->c(Lv8/a;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Ld1/d0;->c()V

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Ld1/v;

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ld1/v;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ld1/d0;->n:I

    iget p1, p0, Ld1/d0;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld1/d0;->m:I

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/b;

    invoke-static {v0}, Lv8/b;->c(Lv8/b;)I

    move-result v0

    iget p0, p0, Ld1/d0;->o:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Ld1/v;

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result v0

    iget p0, p0, Ld1/d0;->o:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Ld1/d0;->m:I

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/b;

    iget p0, p0, Lv8/b;->m:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget v0, p0, Ld1/d0;->m:I

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/a;

    iget p0, p0, Lv8/a;->n:I

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Ld1/d0;->m:I

    iget p0, p0, Ld1/d0;->o:I

    if-ge v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget v0, p0, Ld1/d0;->m:I

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Ld1/v;

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Ld1/d0;->m:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget p0, p0, Ld1/d0;->m:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Ld1/d0;->m:I

    iget p0, p0, Ld1/d0;->n:I

    if-le v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget p0, p0, Ld1/d0;->m:I

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ld1/d0;->b()V

    iget v0, p0, Ld1/d0;->m:I

    iget-object v1, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v1, Lv8/b;

    iget v2, v1, Lv8/b;->m:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ld1/d0;->m:I

    iput v0, p0, Ld1/d0;->n:I

    iget-object p0, v1, Lv8/b;->l:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ld1/d0;->a()V

    iget v0, p0, Ld1/d0;->m:I

    iget-object v1, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v1, Lv8/a;

    iget v2, v1, Lv8/a;->n:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ld1/d0;->m:I

    iput v0, p0, Ld1/d0;->n:I

    iget-object p0, v1, Lv8/a;->l:[Ljava/lang/Object;

    iget v1, v1, Lv8/a;->m:I

    add-int/2addr v1, v0

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Le2/q;

    iget-object v0, v0, Le2/q;->l:Lk/h0;

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ld1/d0;->m:I

    invoke-virtual {v0, v1}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lf1/q;

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Ld1/d0;->c()V

    iget v0, p0, Ld1/d0;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld1/d0;->n:I

    iget-object v1, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v1, Ld1/v;

    invoke-virtual {v1}, Ld1/v;->size()I

    move-result v2

    invoke-static {v0, v2}, Ld1/w;->a(II)V

    invoke-virtual {v1, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Ld1/d0;->m:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Ld1/d0;->m:I

    return p0

    :pswitch_0
    iget p0, p0, Ld1/d0;->m:I

    return p0

    :pswitch_1
    iget v0, p0, Ld1/d0;->m:I

    iget p0, p0, Ld1/d0;->n:I

    sub-int/2addr v0, p0

    return v0

    :pswitch_2
    iget p0, p0, Ld1/d0;->m:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ld1/d0;->b()V

    iget v0, p0, Ld1/d0;->m:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld1/d0;->m:I

    iput v0, p0, Ld1/d0;->n:I

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/b;

    iget-object p0, p0, Lv8/b;->l:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ld1/d0;->a()V

    iget v0, p0, Ld1/d0;->m:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld1/d0;->m:I

    iput v0, p0, Ld1/d0;->n:I

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/a;

    iget-object v1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget p0, p0, Lv8/a;->m:I

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Le2/q;

    iget-object v0, v0, Le2/q;->l:Lk/h0;

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld1/d0;->m:I

    invoke-virtual {v0, v1}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lf1/q;

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Ld1/d0;->c()V

    iget v0, p0, Ld1/d0;->m:I

    iget-object v1, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v1, Ld1/v;

    invoke-virtual {v1}, Ld1/v;->size()I

    move-result v2

    invoke-static {v0, v2}, Ld1/w;->a(II)V

    iget v0, p0, Ld1/d0;->m:I

    iput v0, p0, Ld1/d0;->n:I

    invoke-virtual {v1, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ld1/d0;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld1/d0;->m:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Ld1/d0;->m:I

    :goto_0
    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_0
    iget p0, p0, Ld1/d0;->m:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Ld1/d0;->m:I

    iget p0, p0, Ld1/d0;->n:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0

    :pswitch_2
    iget p0, p0, Ld1/d0;->m:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/b;

    invoke-virtual {p0}, Ld1/d0;->b()V

    iget v1, p0, Ld1/d0;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lv8/b;->b(I)Ljava/lang/Object;

    iget v1, p0, Ld1/d0;->n:I

    iput v1, p0, Ld1/d0;->m:I

    iput v2, p0, Ld1/d0;->n:I

    invoke-static {v0}, Lv8/b;->c(Lv8/b;)I

    move-result v0

    iput v0, p0, Ld1/d0;->o:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Lv8/a;

    invoke-virtual {p0}, Ld1/d0;->a()V

    iget v1, p0, Ld1/d0;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lv8/a;->b(I)Ljava/lang/Object;

    iget v1, p0, Ld1/d0;->n:I

    iput v1, p0, Ld1/d0;->m:I

    iput v2, p0, Ld1/d0;->n:I

    invoke-static {v0}, Lv8/a;->c(Lv8/a;)I

    move-result v0

    iput v0, p0, Ld1/d0;->o:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Ld1/d0;->c()V

    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Ld1/v;

    iget v1, p0, Ld1/d0;->n:I

    invoke-virtual {v0, v1}, Ld1/v;->remove(I)Ljava/lang/Object;

    iget v1, p0, Ld1/d0;->m:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Ld1/d0;->m:I

    iput v2, p0, Ld1/d0;->n:I

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result v0

    iput v0, p0, Ld1/d0;->o:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ld1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ld1/d0;->b()V

    iget v0, p0, Ld1/d0;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/b;

    invoke-virtual {p0, v0, p1}, Lv8/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ld1/d0;->a()V

    iget v0, p0, Ld1/d0;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast p0, Lv8/a;

    invoke-virtual {p0, v0, p1}, Lv8/a;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    iget-object v0, p0, Ld1/d0;->p:Ljava/lang/Object;

    check-cast v0, Ld1/v;

    invoke-virtual {p0}, Ld1/d0;->c()V

    iget v1, p0, Ld1/d0;->n:I

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1, p1}, Ld1/v;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/d0;->o:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
