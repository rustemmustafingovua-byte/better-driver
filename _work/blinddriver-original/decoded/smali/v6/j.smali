.class public final Lv6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/util/Iterator;

.field public n:Ljava/lang/Object;

.field public final synthetic o:Lv6/p;


# direct methods
.method public constructor <init>(Lv6/p;I)V
    .locals 0

    iput p2, p0, Lv6/j;->l:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/j;->o:Lv6/p;

    iget-object p1, p1, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lv6/j;->m:Ljava/util/Iterator;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/j;->o:Lv6/p;

    iget-object p1, p1, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lv6/j;->m:Ljava/util/Iterator;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/j;->o:Lv6/p;

    iget-object p1, p1, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lv6/j;->m:Ljava/util/Iterator;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lv6/j;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv6/j;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv6/l;

    iput-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Lv6/l;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lv6/j;->m:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv6/l;

    iput-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    new-instance v0, Lv6/o;

    iget-object v1, p0, Lv6/j;->n:Ljava/lang/Object;

    check-cast v1, Lv6/l;

    iget-object p0, p0, Lv6/j;->o:Lv6/p;

    invoke-direct {v0, p0, v1}, Lv6/o;-><init>(Lv6/p;Lv6/l;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 5

    iget v0, p0, Lv6/j;->l:I

    const/4 v1, 0x0

    iget-object v2, p0, Lv6/j;->o:Lv6/p;

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    sget v4, Lv6/p;->z:I

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lv6/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lv6/j;->n:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    check-cast v0, Lv6/l;

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    sget v4, Lv6/p;->z:I

    if-eqz v3, :cond_3

    iget-object v0, v0, Lv6/l;->l:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lv6/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lv6/j;->n:Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lv6/j;->n:Ljava/lang/Object;

    check-cast v0, Lv6/l;

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    sget v4, Lv6/p;->z:I

    if-eqz v3, :cond_5

    iget-object v0, v0, Lv6/l;->l:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lv6/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lv6/j;->n:Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
