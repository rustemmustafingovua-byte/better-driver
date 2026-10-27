.class public abstract Le2/k;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public A:Lf1/q;

.field public final z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf1/q;-><init>()V

    invoke-static {p0}, Le2/i1;->e(Lf1/q;)I

    move-result v0

    iput v0, p0, Le2/k;->z:I

    return-void
.end method


# virtual methods
.method public final C0()V
    .locals 2

    invoke-super {p0}, Lf1/q;->C0()V

    iget-object v0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lf1/q;->s:Le2/h1;

    invoke-virtual {v0, v1}, Lf1/q;->L0(Le2/h1;)V

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lf1/q;->C0()V

    :cond_0
    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final D0()V
    .locals 1

    iget-object v0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf1/q;->D0()V

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lf1/q;->D0()V

    return-void
.end method

.method public final H0()V
    .locals 0

    invoke-super {p0}, Lf1/q;->H0()V

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf1/q;->H0()V

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I0()V
    .locals 1

    iget-object v0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf1/q;->I0()V

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lf1/q;->I0()V

    return-void
.end method

.method public final J0()V
    .locals 0

    invoke-super {p0}, Lf1/q;->J0()V

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf1/q;->J0()V

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final K0(Lf1/q;)V
    .locals 0

    iput-object p1, p0, Lf1/q;->l:Lf1/q;

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lf1/q;->K0(Lf1/q;)V

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final L0(Le2/h1;)V
    .locals 0

    iput-object p1, p0, Lf1/q;->s:Le2/h1;

    iget-object p0, p0, Le2/k;->A:Lf1/q;

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lf1/q;->L0(Le2/h1;)V

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final M0(Le2/j;)Le2/j;
    .locals 7

    move-object v0, p1

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    instance-of v2, p1, Lf1/q;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lf1/q;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, v2, Lf1/q;->p:Lf1/q;

    :cond_1
    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    if-ne v0, v2, :cond_2

    invoke-static {v1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot delegate to an already delegated node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean v2, v0, Lf1/q;->y:Z

    if-eqz v2, :cond_4

    const-string v2, "Cannot delegate to an already attached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    invoke-virtual {v0, v2}, Lf1/q;->K0(Lf1/q;)V

    iget v2, p0, Lf1/q;->n:I

    invoke-static {v0}, Le2/i1;->f(Lf1/q;)I

    move-result v3

    iput v3, v0, Lf1/q;->n:I

    iget v4, p0, Lf1/q;->n:I

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_5

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    instance-of v4, p0, Le2/x;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\nDelegate Node: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Le2/k;->A:Lf1/q;

    iput-object v4, v0, Lf1/q;->q:Lf1/q;

    iput-object v0, p0, Le2/k;->A:Lf1/q;

    iput-object p0, v0, Lf1/q;->p:Lf1/q;

    iget v4, p0, Lf1/q;->n:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Le2/k;->O0(IZ)V

    iget-boolean v3, p0, Lf1/q;->y:Z

    if-eqz v3, :cond_9

    if-eqz v5, :cond_7

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    iget-object v2, v2, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    invoke-virtual {p0, v1}, Lf1/q;->L0(Le2/h1;)V

    invoke-virtual {v2}, Le2/c1;->g()V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, Lf1/q;->s:Le2/h1;

    invoke-virtual {p0, v1}, Le2/k;->L0(Le2/h1;)V

    :goto_2
    invoke-virtual {v0}, Lf1/q;->C0()V

    invoke-virtual {v0}, Lf1/q;->I0()V

    iget-boolean p0, v0, Lf1/q;->y:Z

    if-nez p0, :cond_8

    const-string p0, "autoInvalidateInsertedNode called on unattached node"

    invoke-static {p0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_8
    const/4 p0, -0x1

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Le2/i1;->a(Lf1/q;II)V

    :cond_9
    :goto_3
    return-object p1
.end method

.method public final N0(Le2/j;)V
    .locals 6

    iget-object v0, p0, Le2/k;->A:Lf1/q;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_5

    iget-boolean p1, v0, Lf1/q;->y:Z

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    sget-object v4, Le2/i1;->a:Lk/d0;

    if-nez p1, :cond_0

    const-string p1, "autoInvalidateRemovedNode called on unattached node"

    invoke-static {p1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    invoke-static {v0, p1, v3}, Le2/i1;->a(Lf1/q;II)V

    invoke-virtual {v0}, Lf1/q;->J0()V

    invoke-virtual {v0}, Lf1/q;->D0()V

    :cond_1
    invoke-virtual {v0, v0}, Lf1/q;->K0(Lf1/q;)V

    const/4 p1, 0x0

    iput p1, v0, Lf1/q;->o:I

    if-nez v2, :cond_2

    iget-object p1, v0, Lf1/q;->q:Lf1/q;

    iput-object p1, p0, Le2/k;->A:Lf1/q;

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lf1/q;->q:Lf1/q;

    iput-object p1, v2, Lf1/q;->q:Lf1/q;

    :goto_1
    iput-object v1, v0, Lf1/q;->q:Lf1/q;

    iput-object v1, v0, Lf1/q;->p:Lf1/q;

    iget p1, p0, Lf1/q;->n:I

    invoke-static {p0}, Le2/i1;->f(Lf1/q;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Le2/k;->O0(IZ)V

    iget-boolean v2, p0, Lf1/q;->y:Z

    if-eqz v2, :cond_4

    and-int/2addr p1, v3

    if-eqz p1, :cond_4

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    iget-object p1, p1, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    invoke-virtual {p0, v1}, Lf1/q;->L0(Le2/h1;)V

    invoke-virtual {p1}, Le2/c1;->g()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v2, v0, Lf1/q;->q:Lf1/q;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find delegate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O0(IZ)V
    .locals 2

    iget v0, p0, Lf1/q;->n:I

    iput p1, p0, Lf1/q;->n:I

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    if-ne v0, p0, :cond_0

    iput p1, p0, Lf1/q;->o:I

    :cond_0
    iget-boolean v1, p0, Lf1/q;->y:Z

    if-eqz v1, :cond_4

    :goto_0
    if-eqz p0, :cond_1

    iget v1, p0, Lf1/q;->n:I

    or-int/2addr p1, v1

    iput p1, p0, Lf1/q;->n:I

    if-eq p0, v0, :cond_1

    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-ne p0, v0, :cond_2

    invoke-static {v0}, Le2/i1;->f(Lf1/q;)I

    move-result p1

    iput p1, v0, Lf1/q;->n:I

    :cond_2
    if-eqz p0, :cond_3

    iget-object p2, p0, Lf1/q;->q:Lf1/q;

    if-eqz p2, :cond_3

    iget p2, p2, Lf1/q;->o:I

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    :goto_2
    if-eqz p0, :cond_4

    iget p2, p0, Lf1/q;->n:I

    or-int/2addr p1, p2

    iput p1, p0, Lf1/q;->o:I

    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_4
    return-void
.end method
