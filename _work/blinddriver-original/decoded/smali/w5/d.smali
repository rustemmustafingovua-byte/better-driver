.class public final Lw5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public A:Z

.field public final l:Lw5/c;

.field public final m:Ljava/lang/Object;

.field public n:I

.field public final o:Z

.field public final p:La6/b;

.field public q:Z

.field public final r:Ls5/c;

.field public final s:Ls5/c;

.field public final t:Ls5/c;

.field public u:[B

.field public v:[B

.field public w:[B

.field public x:[C

.field public y:[C

.field public z:[C


# direct methods
.method public constructor <init>(Ls5/c;Ls5/c;Ls5/c;La6/b;Lw5/c;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw5/d;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw5/d;->A:Z

    iput-object p1, p0, Lw5/d;->r:Ls5/c;

    iput-object p2, p0, Lw5/d;->s:Ls5/c;

    iput-object p3, p0, Lw5/d;->t:Ls5/c;

    iput-object p4, p0, Lw5/d;->p:La6/b;

    iput-object p5, p0, Lw5/d;->l:Lw5/c;

    iget-object p1, p5, Lw5/c;->l:Ljava/lang/Object;

    iput-object p1, p0, Lw5/d;->m:Ljava/lang/Object;

    iput-boolean p6, p0, Lw5/d;->o:Z

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()[B
    .locals 2

    iget-object v0, p0, Lw5/d;->w:[B

    invoke-static {v0}, Lw5/d;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lw5/d;->p:La6/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, La6/b;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lw5/d;->w:[B

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lw5/d;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw5/d;->A:Z

    iget-boolean v0, p0, Lw5/d;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw5/d;->q:Z

    iget-object p0, p0, Lw5/d;->p:La6/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final d([B)V
    .locals 2

    iget-object v0, p0, Lw5/d;->w:[B

    if-eq p1, v0, :cond_1

    array-length v1, p1

    array-length v0, v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to release buffer smaller than original"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw5/d;->w:[B

    iget-object p0, p0, Lw5/d;->p:La6/b;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, La6/b;->c(I[B)V

    return-void
.end method

.method public final e([B)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lw5/d;->u:[B

    if-eq p1, v0, :cond_1

    array-length v1, p1

    array-length v0, v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to release buffer smaller than original"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw5/d;->u:[B

    iget-object p0, p0, Lw5/d;->p:La6/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, La6/b;->c(I[B)V

    :cond_2
    return-void
.end method
