.class public final Lr0/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr0/p2;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr0/p2;->q:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lr0/p2;->m:I

    .line 4
    iget-object p1, p1, Lf9/h;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lg6/c1;->f(III)I

    move-result p1

    iput p1, p0, Lr0/p2;->n:I

    .line 6
    iput p1, p0, Lr0/p2;->o:I

    return-void
.end method

.method public constructor <init>(Lr0/e2;ILr0/l0;Lr0/r;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lr0/p2;->l:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lr0/p2;->p:Ljava/lang/Object;

    .line 9
    iput p2, p0, Lr0/p2;->m:I

    .line 10
    iput-object p4, p0, Lr0/p2;->q:Ljava/lang/Object;

    .line 11
    iget p1, p1, Lr0/e2;->s:I

    .line 12
    iput p1, p0, Lr0/p2;->n:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lr0/p2;->q:Ljava/lang/Object;

    check-cast v0, Lf9/h;

    iget-object v1, v0, Lf9/h;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p0, Lr0/p2;->o:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lr0/p2;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/p2;->p:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Lo9/d;

    iget v2, p0, Lr0/p2;->n:I

    invoke-static {v1}, Lr9/k;->a0(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lo9/b;-><init>(III)V

    iput-object v0, p0, Lr0/p2;->p:Ljava/lang/Object;

    iput v5, p0, Lr0/p2;->o:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lf9/h;->c:Ljava/lang/Object;

    check-cast v0, Li9/e;

    iget v2, p0, Lr0/p2;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt8/j;

    if-nez v0, :cond_2

    new-instance v0, Lo9/d;

    iget v2, p0, Lr0/p2;->n:I

    invoke-static {v1}, Lr9/k;->a0(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lo9/b;-><init>(III)V

    iput-object v0, p0, Lr0/p2;->p:Ljava/lang/Object;

    iput v5, p0, Lr0/p2;->o:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lr0/p2;->n:I

    invoke-static {v2, v1}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v2

    iput-object v2, p0, Lr0/p2;->p:Ljava/lang/Object;

    add-int/2addr v1, v0

    iput v1, p0, Lr0/p2;->n:I

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lr0/p2;->o:I

    :goto_0
    iput v6, p0, Lr0/p2;->m:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lr0/p2;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lr0/p2;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr0/p2;->a()V

    :cond_0
    iget p0, p0, Lr0/p2;->m:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr0/p2;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lr0/p2;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr0/p2;->a()V

    :cond_0
    iget v0, p0, Lr0/p2;->m:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/p2;->p:Ljava/lang/Object;

    check-cast v0, Lo9/d;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lr0/p2;->p:Ljava/lang/Object;

    iput v1, p0, Lr0/p2;->m:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lr0/p2;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
