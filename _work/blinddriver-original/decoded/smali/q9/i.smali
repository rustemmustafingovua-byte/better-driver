.class public final Lq9/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ly8/c;
.implements Lk9/a;


# instance fields
.field public l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/util/Iterator;

.field public o:Ly8/c;


# virtual methods
.method public final a()Ljava/lang/RuntimeException;
    .locals 3

    iget v0, p0, Lq9/i;->l:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lq9/i;->l:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator has failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lq9/i;->m:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lq9/i;->l:I

    iput-object p2, p0, Lq9/i;->o:Ly8/c;

    sget-object p0, Lz8/a;->l:Lz8/a;

    const-string p0, "frame"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lq9/h;La9/h;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    iput-object p1, p0, Lq9/i;->n:Ljava/util/Iterator;

    const/4 p1, 0x2

    iput p1, p0, Lq9/i;->l:I

    iput-object p2, p0, Lq9/i;->o:Ly8/c;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final getContext()Ly8/h;
    .locals 0

    sget-object p0, Ly8/i;->l:Ly8/i;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lq9/i;->l:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lq9/i;->a()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lq9/i;->n:Ljava/util/Iterator;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lq9/i;->l:I

    return v3

    :cond_3
    iput-object v1, p0, Lq9/i;->n:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lq9/i;->l:I

    iget-object v0, p0, Lq9/i;->o:Ly8/c;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v1, p0, Lq9/i;->o:Ly8/c;

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-interface {v0, v1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lq9/i;->l:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lq9/i;->l:I

    iget-object v0, p0, Lq9/i;->m:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lq9/i;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lq9/i;->a()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iput v1, p0, Lq9/i;->l:I

    iget-object p0, p0, Lq9/i;->n:Ljava/util/Iterator;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lq9/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lq9/i;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lq9/i;->l:I

    return-void
.end method
