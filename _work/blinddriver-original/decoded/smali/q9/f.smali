.class public final Lq9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/util/Iterator;

.field public n:I

.field public o:Ljava/lang/Object;

.field public final synthetic p:Lq9/h;


# direct methods
.method public constructor <init>(Lf9/h;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq9/f;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq9/f;->p:Lq9/h;

    .line 3
    iget-object p1, p1, Lf9/h;->b:Ljava/lang/Object;

    check-cast p1, Lf9/l;

    .line 4
    iget-object p1, p1, Lf9/l;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lq9/f;->m:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lq9/f;->n:I

    return-void
.end method

.method public constructor <init>(Lq9/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq9/f;->l:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lq9/f;->p:Lq9/h;

    .line 9
    iget-object p1, p1, Lq9/g;->a:Lq9/h;

    .line 10
    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lq9/f;->m:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lq9/f;->p:Lq9/h;

    check-cast v0, Lf9/h;

    :cond_0
    iget-object v1, p0, Lq9/f;->m:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lf9/h;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/t;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput-object v1, p0, Lq9/f;->o:Ljava/lang/Object;

    iput v3, p0, Lq9/f;->n:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lq9/f;->n:I

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lq9/f;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lq9/f;->n:I

    return v1

    :cond_0
    iget-object v0, p0, Lq9/f;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lq9/f;->p:Lq9/h;

    check-cast v2, Lq9/g;

    iget-object v3, v2, Lq9/g;->c:Li9/c;

    iget-object v2, v2, Lq9/g;->b:Li9/c;

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lq9/f;->o:Ljava/lang/Object;

    iput v1, p0, Lq9/f;->n:I

    return v1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lq9/f;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lq9/f;->o:Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lq9/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lq9/f;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq9/f;->b()Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lq9/f;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lq9/f;->a()V

    :cond_2
    iget p0, p0, Lq9/f;->n:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lq9/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lq9/f;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lq9/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lq9/f;->n:I

    iget-object p0, p0, Lq9/f;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    iget v0, p0, Lq9/f;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lq9/f;->a()V

    :cond_3
    iget v0, p0, Lq9/f;->n:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lq9/f;->o:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lq9/f;->o:Ljava/lang/Object;

    iput v1, p0, Lq9/f;->n:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lq9/f;->l:I

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
