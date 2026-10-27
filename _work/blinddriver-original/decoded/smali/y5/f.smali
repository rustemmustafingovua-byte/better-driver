.class public final Ly5/f;
.super Ls5/m;
.source "SourceFile"


# instance fields
.field public final d:Ly5/f;

.field public e:Lg5/i;

.field public f:Ly5/f;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Object;

.field public i:Z


# direct methods
.method public constructor <init>(ILy5/f;Lg5/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ls5/m;->a:I

    .line 3
    iput-object p2, p0, Ly5/f;->d:Ly5/f;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p2, Ls5/m;->c:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Ls5/m;->c:I

    .line 5
    iput-object p3, p0, Ly5/f;->e:Lg5/i;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Ls5/m;->b:I

    return-void
.end method

.method public constructor <init>(ILy5/f;Lg5/i;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Ls5/m;->a:I

    .line 9
    iput-object p2, p0, Ly5/f;->d:Ly5/f;

    .line 10
    iget p1, p2, Ls5/m;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls5/m;->c:I

    .line 11
    iput-object p3, p0, Ly5/f;->e:Lg5/i;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Ls5/m;->b:I

    .line 13
    iput-object p4, p0, Ly5/f;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly5/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly5/f;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ls5/m;
    .locals 0

    iget-object p0, p0, Ly5/f;->d:Ly5/f;

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ly5/f;->h:Ljava/lang/Object;

    return-void
.end method

.method public final i()Ly5/f;
    .locals 4

    iget-object v0, p0, Ly5/f;->f:Ly5/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ly5/f;

    iget-object v3, p0, Ly5/f;->e:Lg5/i;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Ly5/f;-><init>(ILy5/f;Lg5/i;)V

    iput-object v0, p0, Ly5/f;->f:Ly5/f;

    return-object v0

    :cond_1
    iput v2, v0, Ls5/m;->a:I

    const/4 p0, -0x1

    iput p0, v0, Ls5/m;->b:I

    iput-object v1, v0, Ly5/f;->g:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly5/f;->i:Z

    iput-object v1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object p0, v0, Ly5/f;->e:Lg5/i;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Ly5/f;
    .locals 4

    iget-object v0, p0, Ly5/f;->f:Ly5/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ly5/f;

    iget-object v3, p0, Ly5/f;->e:Lg5/i;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1, p1}, Ly5/f;-><init>(ILy5/f;Lg5/i;Ljava/lang/Object;)V

    iput-object v0, p0, Ly5/f;->f:Ly5/f;

    return-object v0

    :cond_1
    iput v2, v0, Ls5/m;->a:I

    const/4 p0, -0x1

    iput p0, v0, Ls5/m;->b:I

    iput-object v1, v0, Ly5/f;->g:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly5/f;->i:Z

    iput-object p1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object p0, v0, Ly5/f;->e:Lg5/i;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final k()Ly5/f;
    .locals 4

    iget-object v0, p0, Ly5/f;->f:Ly5/f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    new-instance v0, Ly5/f;

    iget-object v3, p0, Ly5/f;->e:Lg5/i;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Ly5/f;-><init>(ILy5/f;Lg5/i;)V

    iput-object v0, p0, Ly5/f;->f:Ly5/f;

    return-object v0

    :cond_1
    iput v2, v0, Ls5/m;->a:I

    const/4 p0, -0x1

    iput p0, v0, Ls5/m;->b:I

    iput-object v1, v0, Ly5/f;->g:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly5/f;->i:Z

    iput-object v1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object p0, v0, Ly5/f;->e:Lg5/i;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final l(Ljava/lang/Object;)Ly5/f;
    .locals 4

    iget-object v0, p0, Ly5/f;->f:Ly5/f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    new-instance v0, Ly5/f;

    iget-object v3, p0, Ly5/f;->e:Lg5/i;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1, p1}, Ly5/f;-><init>(ILy5/f;Lg5/i;Ljava/lang/Object;)V

    iput-object v0, p0, Ly5/f;->f:Ly5/f;

    return-object v0

    :cond_1
    iput v2, v0, Ls5/m;->a:I

    const/4 p0, -0x1

    iput p0, v0, Ls5/m;->b:I

    iput-object v1, v0, Ly5/f;->g:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Ly5/f;->i:Z

    iput-object p1, v0, Ly5/f;->h:Ljava/lang/Object;

    iget-object p0, v0, Ly5/f;->e:Lg5/i;

    if-eqz p0, :cond_2

    iput-object v1, p0, Lg5/i;->n:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    iput-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final m(Ljava/lang/String;)I
    .locals 3

    iget v0, p0, Ls5/m;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Ly5/f;->i:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly5/f;->i:Z

    iput-object p1, p0, Ly5/f;->g:Ljava/lang/String;

    iget-object v1, p0, Ly5/f;->e:Lg5/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lg5/i;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, v1, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    new-instance v0, Ls5/e;

    const-string v1, "Duplicate field \'"

    const-string v2, "\'"

    invoke-static {v1, p1, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v1, p0, Ls5/g;

    if-eqz v1, :cond_1

    check-cast p0, Ls5/g;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p1, p0}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw v0

    :cond_2
    iget p0, p0, Ls5/m;->b:I

    if-gez p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x4

    return p0
.end method

.method public final n()I
    .locals 4

    iget v0, p0, Ls5/m;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Ly5/f;->i:Z

    if-nez v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iput-boolean v1, p0, Ly5/f;->i:Z

    iget v0, p0, Ls5/m;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Ls5/m;->b:I

    return v3

    :cond_1
    if-ne v0, v2, :cond_3

    iget v0, p0, Ls5/m;->b:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Ls5/m;->b:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    iget v0, p0, Ls5/m;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Ls5/m;->b:I

    if-nez v0, :cond_4

    :goto_0
    return v1

    :cond_4
    const/4 p0, 0x3

    return p0
.end method
