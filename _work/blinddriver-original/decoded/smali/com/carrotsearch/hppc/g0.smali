.class public final Lcom/carrotsearch/hppc/g0;
.super Lcom/carrotsearch/hppc/c;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/j0;


# instance fields
.field public final l:Lcom/carrotsearch/hppc/i0;

.field public final synthetic m:Lcom/carrotsearch/hppc/i0;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/g0;->m:Lcom/carrotsearch/hppc/i0;

    iput-object p1, p0, Lcom/carrotsearch/hppc/g0;->l:Lcom/carrotsearch/hppc/i0;

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/g0;->l:Lcom/carrotsearch/hppc/i0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/i0;->containsKey(I)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/g0;->m:Lcom/carrotsearch/hppc/i0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/i0;I)V

    return-object v0
.end method

.method public final removeAll(Lo5/c;)I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/g0;->l:Lcom/carrotsearch/hppc/i0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/i0;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/g0;->l:Lcom/carrotsearch/hppc/i0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/i0;->size()I

    move-result p0

    return p0
.end method
