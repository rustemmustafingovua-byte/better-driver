.class public final Ld1/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final l:Ld1/y;

.field public final m:Ljava/util/Iterator;

.field public n:I

.field public o:Ljava/util/Map$Entry;

.field public p:Ljava/util/Map$Entry;

.field public final synthetic q:I


# direct methods
.method public constructor <init>(Ld1/y;Ljava/util/Iterator;I)V
    .locals 0

    iput p3, p0, Ld1/g0;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/g0;->l:Ld1/y;

    iput-object p2, p0, Ld1/g0;->m:Ljava/util/Iterator;

    invoke-virtual {p1}, Ld1/y;->e()Ld1/x;

    move-result-object p1

    iget p1, p1, Ld1/x;->d:I

    iput p1, p0, Ld1/g0;->n:I

    invoke-virtual {p0}, Ld1/g0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ld1/g0;->p:Ljava/util/Map$Entry;

    iput-object v0, p0, Ld1/g0;->o:Ljava/util/Map$Entry;

    iget-object v0, p0, Ld1/g0;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ld1/g0;->p:Ljava/util/Map$Entry;

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Ld1/g0;->p:Ljava/util/Map$Entry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld1/g0;->q:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/g0;->p:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld1/g0;->a()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Ld1/g0;->p:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld1/g0;->a()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Ld1/g0;->a()V

    iget-object v0, p0, Ld1/g0;->o:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    new-instance v0, Ld1/f0;

    invoke-direct {v0, p0}, Ld1/f0;-><init>(Ld1/g0;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Ld1/g0;->l:Ld1/y;

    invoke-virtual {v0}, Ld1/y;->e()Ld1/x;

    move-result-object v1

    iget v1, v1, Ld1/x;->d:I

    iget v2, p0, Ld1/g0;->n:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ld1/g0;->o:Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ld1/g0;->o:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ld1/y;->e()Ld1/x;

    move-result-object v0

    iget v0, v0, Ld1/x;->d:I

    iput v0, p0, Ld1/g0;->n:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
