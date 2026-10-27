.class public final Ly7/k;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ly7/m;


# direct methods
.method public synthetic constructor <init>(Ly7/m;I)V
    .locals 0

    iput p2, p0, Ly7/k;->l:I

    iput-object p1, p0, Ly7/k;->m:Ly7/m;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Ly7/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    invoke-virtual {p0}, Ly7/m;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    invoke-virtual {p0}, Ly7/m;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Ly7/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    invoke-virtual {p0, p1}, Ly7/m;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ly7/m;->a(Ljava/lang/Object;Z)Ly7/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Ly7/l;->s:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v2, p0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Ly7/k;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ly7/j;

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ly7/j;-><init>(Ly7/m;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Ly7/j;

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ly7/j;-><init>(Ly7/m;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Ly7/k;->l:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ly7/m;->a(Ljava/lang/Object;Z)Ly7/l;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p1}, Ly7/m;->c(Ly7/l;Z)V

    :cond_1
    if-eqz v1, :cond_2

    move v0, p1

    :cond_2
    return v0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ly7/m;->a(Ljava/lang/Object;Z)Ly7/l;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_4
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, v0, Ly7/l;->s:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v2, v0

    :cond_5
    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Ly7/m;->c(Ly7/l;Z)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ly7/k;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    iget p0, p0, Ly7/m;->o:I

    return p0

    :pswitch_0
    iget-object p0, p0, Ly7/k;->m:Ly7/m;

    iget p0, p0, Ly7/m;->o:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
