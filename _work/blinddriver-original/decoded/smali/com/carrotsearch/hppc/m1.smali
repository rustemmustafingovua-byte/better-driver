.class public final Lcom/carrotsearch/hppc/m1;
.super Lcom/carrotsearch/hppc/h;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/k1;


# instance fields
.field public final l:Lcom/carrotsearch/hppc/o1;

.field public final synthetic m:Lcom/carrotsearch/hppc/o1;


# direct methods
.method public constructor <init>(Lcom/carrotsearch/hppc/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/carrotsearch/hppc/m1;->m:Lcom/carrotsearch/hppc/o1;

    iput-object p1, p0, Lcom/carrotsearch/hppc/m1;->l:Lcom/carrotsearch/hppc/o1;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/m1;->l:Lcom/carrotsearch/hppc/o1;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/o1;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/m1;->m:Lcom/carrotsearch/hppc/o1;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/o1;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/m1;->l:Lcom/carrotsearch/hppc/o1;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/o1;->size()I

    move-result p0

    return p0
.end method
