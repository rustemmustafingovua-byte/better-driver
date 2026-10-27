.class public final Lr1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lr1/g0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr1/f0;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lr1/g0;->u:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lr1/f0;->m:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lw0/d;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lr1/f0;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    new-array v1, v0, [Lw0/k;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lw0/m;

    invoke-direct {v3, p0}, Lw0/m;-><init>(Lr1/f0;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lw0/e;

    invoke-direct {v0, p1, v1}, Lw0/e;-><init>(Lw0/d;[Lw0/k;)V

    iput-object v0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lr1/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    check-cast p0, Lw0/e;

    iget-boolean p0, p0, Lw0/c;->n:Z

    return p0

    :pswitch_0
    iget-object p0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr1/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    check-cast p0, Lw0/e;

    invoke-virtual {p0}, Lw0/e;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr1/i0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget v0, p0, Lr1/f0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr1/f0;->m:Ljava/util/Iterator;

    check-cast p0, Lw0/e;

    invoke-virtual {p0}, Lw0/e;->remove()V

    return-void

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
