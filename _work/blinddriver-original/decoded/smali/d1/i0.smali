.class public abstract Ld1/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/h0;


# instance fields
.field public final l:Lz0/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ld1/i0;->l:Lz0/a;

    return-void
.end method


# virtual methods
.method public final e(I)Z
    .locals 0

    iget-object p0, p0, Ld1/i0;->l:Lz0/a;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Ld1/i0;->l:Lz0/a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    and-int v2, v1, p1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    or-int v2, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void
.end method
