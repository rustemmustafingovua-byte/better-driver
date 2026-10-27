.class public final Lgc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg5/l;

.field public b:Lpb/a;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# virtual methods
.method public final a(IZ)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_3

    iget p0, p0, Lgc/d;->e:I

    return p0

    :cond_0
    iget p0, p0, Lgc/d;->d:I

    return p0

    :cond_1
    iget p0, p0, Lgc/d;->f:I

    return p0

    :cond_2
    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    iget p0, p0, Lgc/d;->i:I

    return p0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget p0, p0, Lgc/d;->h:I

    return p0

    :cond_5
    iget p0, p0, Lgc/d;->j:I

    return p0
.end method

.method public final b(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lgc/d;->a(IZ)I

    move-result v1

    invoke-static {v1}, Lpb/b;->c(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lgc/d;->a(IZ)I

    move-result v1

    invoke-static {v1}, Lpb/b;->c(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lgc/d;->a(IZ)I

    move-result p0

    invoke-static {p0}, Lpb/b;->c(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput v0, p0, Lgc/d;->d:I

    iput v0, p0, Lgc/d;->e:I

    iput v0, p0, Lgc/d;->f:I

    return-void

    :cond_0
    iput v0, p0, Lgc/d;->h:I

    iput v0, p0, Lgc/d;->i:I

    iput v0, p0, Lgc/d;->j:I

    return-void
.end method

.method public final d(IIZ)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iput p2, p0, Lgc/d;->e:I

    return-void

    :cond_1
    iput p2, p0, Lgc/d;->i:I

    return-void

    :cond_2
    if-eqz p3, :cond_3

    iput p2, p0, Lgc/d;->d:I

    return-void

    :cond_3
    iput p2, p0, Lgc/d;->h:I

    return-void

    :cond_4
    if-eqz p3, :cond_5

    iput p2, p0, Lgc/d;->f:I

    return-void

    :cond_5
    iput p2, p0, Lgc/d;->j:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgc/d;->a:Lg5/l;

    iget-object v1, v1, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lpb/a;

    iget-object v2, p0, Lgc/d;->b:Lpb/a;

    invoke-static {v1, v2}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgc/d;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/B:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgc/d;->b(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
