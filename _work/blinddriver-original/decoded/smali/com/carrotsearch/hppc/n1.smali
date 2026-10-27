.class public final Lcom/carrotsearch/hppc/n1;
.super Lcom/carrotsearch/hppc/c;
.source "SourceFile"


# instance fields
.field public final l:Lcom/carrotsearch/hppc/o1;

.field public final synthetic m:Lcom/carrotsearch/hppc/o1;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/n1;->m:Lcom/carrotsearch/hppc/o1;

    iput-object p1, p0, Lcom/carrotsearch/hppc/n1;->l:Lcom/carrotsearch/hppc/o1;

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 1

    iget-object p0, p0, Lcom/carrotsearch/hppc/n1;->l:Lcom/carrotsearch/hppc/o1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/o1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/k;

    iget v0, v0, Ln5/k;->c:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/n1;->m:Lcom/carrotsearch/hppc/o1;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/o1;I)V

    return-object v0
.end method

.method public final removeAll(Lo5/c;)I
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/b;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/b;-><init>(Lo5/c;)V

    iget-object p0, p0, Lcom/carrotsearch/hppc/n1;->l:Lcom/carrotsearch/hppc/o1;

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/o1;->removeAll(Lo5/g;)I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/n1;->l:Lcom/carrotsearch/hppc/o1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/o1;->size()I

    move-result p0

    return p0
.end method
