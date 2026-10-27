.class public final Lcom/carrotsearch/hppc/f1;
.super Lcom/carrotsearch/hppc/g;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/d1;


# instance fields
.field public final l:Lcom/carrotsearch/hppc/g1;

.field public final synthetic m:Lcom/carrotsearch/hppc/g1;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/g1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/f1;->m:Lcom/carrotsearch/hppc/g1;

    iput-object p1, p0, Lcom/carrotsearch/hppc/f1;->l:Lcom/carrotsearch/hppc/g1;

    return-void
.end method


# virtual methods
.method public final contains(J)Z
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/f1;->l:Lcom/carrotsearch/hppc/g1;

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->containsKey(J)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/f1;->m:Lcom/carrotsearch/hppc/g1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/g1;I)V

    return-object v0
.end method

.method public final removeAll(Lo5/f;)I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/f1;->l:Lcom/carrotsearch/hppc/g1;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/g1;->removeAll(Lo5/f;)I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/f1;->l:Lcom/carrotsearch/hppc/g1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    return p0
.end method
