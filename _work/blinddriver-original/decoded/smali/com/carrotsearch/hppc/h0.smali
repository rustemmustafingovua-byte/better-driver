.class public final Lcom/carrotsearch/hppc/h0;
.super Lcom/carrotsearch/hppc/g;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/carrotsearch/hppc/h0;->l:I

    iput-object p2, p0, Lcom/carrotsearch/hppc/h0;->n:Ljava/lang/Object;

    iput-object p2, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(J)Z
    .locals 2

    iget v0, p0, Lcom/carrotsearch/hppc/h0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/c1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/h;

    iget-wide v0, v0, Ln5/h;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/i0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/i0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/d;

    iget-wide v0, v0, Ln5/d;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/carrotsearch/hppc/h0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/carrotsearch/hppc/b1;

    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->n:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/c1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b1;-><init>(Lcom/carrotsearch/hppc/c1;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/carrotsearch/hppc/b0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->n:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/i0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/i0;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Lo5/f;)I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/h0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/c1;

    new-instance v0, Lcom/carrotsearch/hppc/f;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/f;-><init>(Lo5/f;)V

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c1;->removeAll(Lo5/d;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/i0;

    new-instance v0, Lcom/carrotsearch/hppc/f;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/f;-><init>(Lo5/f;)V

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/i0;->removeAll(Lo5/a;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/h0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/c1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c1;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/h0;->m:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/i0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/i0;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
