.class public abstract La9/c;
.super La9/a;
.source "SourceFile"


# instance fields
.field private final _context:Ly8/h;

.field private transient intercepted:Ly8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly8/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, La9/c;-><init>(Ly8/c;Ly8/h;)V

    return-void
.end method

.method public constructor <init>(Ly8/c;Ly8/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La9/a;-><init>(Ly8/c;)V

    .line 2
    iput-object p2, p0, La9/c;->_context:Ly8/h;

    return-void
.end method


# virtual methods
.method public getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, La9/c;->_context:Ly8/h;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Ly8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly8/c;"
        }
    .end annotation

    iget-object v0, p0, La9/c;->intercepted:Ly8/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, La9/c;->getContext()Ly8/h;

    move-result-object v0

    sget-object v1, Ly8/d;->l:Ly8/d;

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Ly8/e;

    if-eqz v0, :cond_0

    check-cast v0, Lu9/p;

    new-instance v1, Lz9/g;

    invoke-direct {v1, v0, p0}, Lz9/g;-><init>(Lu9/p;La9/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iput-object v1, p0, La9/c;->intercepted:Ly8/c;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 4

    iget-object v0, p0, La9/c;->intercepted:Ly8/c;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, La9/c;->getContext()Ly8/h;

    move-result-object v1

    sget-object v2, Ly8/d;->l:Ly8/d;

    invoke-interface {v1, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v1, Ly8/e;

    check-cast v0, Lz9/g;

    sget-object v1, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lz9/b;->c:Lmb/s2;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lu9/g;

    if-eqz v1, :cond_1

    check-cast v0, Lu9/g;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu9/g;->m()V

    :cond_2
    sget-object v0, La9/b;->l:La9/b;

    iput-object v0, p0, La9/c;->intercepted:Ly8/c;

    return-void
.end method
