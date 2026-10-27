.class public abstract Lcom/carrotsearch/hppc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public l:I

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/carrotsearch/hppc/d;->l:I

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/carrotsearch/hppc/d;->m:Ljava/lang/Object;

    :cond_0
    iget p0, p0, Lcom/carrotsearch/hppc/d;->l:I

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/d;->l:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/d;->m:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
