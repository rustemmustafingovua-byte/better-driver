.class public final Lca/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/f;
.implements Lu9/v1;


# instance fields
.field public final l:Lu9/g;

.field public final synthetic m:Lca/c;


# direct methods
.method public constructor <init>(Lca/c;Lu9/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca/b;->m:Lca/c;

    iput-object p2, p0, Lca/b;->l:Lu9/g;

    return-void
.end method


# virtual methods
.method public final a(Lz9/r;I)V
    .locals 0

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    invoke-virtual {p0, p1, p2}, Lu9/g;->a(Lz9/r;I)V

    return-void
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    iget-object p0, p0, Lu9/g;->p:Ly8/h;

    return-object p0
.end method

.method public final i(Ljava/lang/Object;Li9/f;)Lmb/s2;
    .locals 1

    check-cast p1, Lt8/z;

    new-instance p2, Lb0/x2;

    iget-object v0, p0, Lca/b;->m:Lca/c;

    invoke-direct {p2, v0, p0}, Lb0/x2;-><init>(Lca/c;Lca/b;)V

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    invoke-virtual {p0, p1, p2}, Lu9/g;->i(Ljava/lang/Object;Li9/f;)Lmb/s2;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lca/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lca/b;->l:Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
