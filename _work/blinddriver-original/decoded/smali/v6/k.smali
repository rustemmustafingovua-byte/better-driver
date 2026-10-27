.class public final Lv6/k;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final m:Lv6/p;

.field public final synthetic n:Lv6/p;


# direct methods
.method public synthetic constructor <init>(Lv6/p;I)V
    .locals 0

    iput p2, p0, Lv6/k;->l:I

    iput-object p1, p0, Lv6/k;->n:Lv6/p;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lv6/k;->m:Lv6/p;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ConcurrentLinkedHashMap does not allow add to be called on entrySet()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    invoke-virtual {p0}, Lv6/p;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    invoke-virtual {p0}, Lv6/p;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv6/k;->n:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv6/l;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lv6/l;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
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

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lv6/j;

    iget-object p0, p0, Lv6/k;->n:Lv6/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lv6/j;-><init>(Lv6/p;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lv6/j;

    iget-object p0, p0, Lv6/k;->n:Lv6/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv6/j;-><init>(Lv6/p;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    invoke-virtual {p0, p1}, Lv6/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    invoke-virtual {p0, v0, p1}, Lv6/p;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv6/k;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lv6/k;->m:Lv6/p;

    iget-object p0, p0, Lv6/p;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
