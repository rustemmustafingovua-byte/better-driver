.class public final Lr0/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/e2;

.field public final b:[I

.field public final c:I

.field public d:[Ljava/lang/Object;

.field public final e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public final j:Le2/t;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Lr0/e2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/d2;->a:Lr0/e2;

    iget-object v0, p1, Lr0/e2;->l:[I

    iput-object v0, p0, Lr0/d2;->b:[I

    iget v0, p1, Lr0/e2;->m:I

    iput v0, p0, Lr0/d2;->c:I

    iget-object v1, p1, Lr0/e2;->n:[Ljava/lang/Object;

    iput-object v1, p0, Lr0/d2;->d:[Ljava/lang/Object;

    iget p1, p1, Lr0/e2;->o:I

    iput p1, p0, Lr0/d2;->e:I

    iput v0, p0, Lr0/d2;->h:I

    const/4 p1, -0x1

    iput p1, p0, Lr0/d2;->i:I

    new-instance p1, Le2/t;

    invoke-direct {p1}, Le2/t;-><init>()V

    iput-object p1, p0, Lr0/d2;->j:Le2/t;

    return-void
.end method


# virtual methods
.method public final a(I)Lr0/a;
    .locals 2

    iget-object v0, p0, Lr0/d2;->a:Lr0/e2;

    iget-object v0, v0, Lr0/e2;->t:Ljava/util/ArrayList;

    iget p0, p0, Lr0/d2;->c:I

    invoke-static {v0, p1, p0}, Lr0/g2;->e(Ljava/util/ArrayList;II)I

    move-result p0

    if-gez p0, :cond_0

    new-instance v1, Lr0/a;

    invoke-direct {v1, p1}, Lr0/a;-><init>(I)V

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/a;

    return-object p0
.end method

.method public final b([II)Ljava/lang/Object;
    .locals 2

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lr0/d2;->d:[Ljava/lang/Object;

    array-length v1, p1

    if-lt p2, v1, :cond_0

    array-length p1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x4

    aget p1, p1, p2

    shr-int/lit8 p2, v0, 0x1d

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    add-int/2addr p1, p2

    :goto_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    sget-object p0, Lr0/m;->a:Lr0/e;

    return-object p0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/d2;->f:Z

    iget-object v0, p0, Lr0/d2;->a:Lr0/e2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lr0/d2;->a:Lr0/e2;

    if-ne v1, v0, :cond_0

    iget v1, v0, Lr0/e2;->p:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unexpected reader close()"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, v0, Lr0/e2;->p:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lr0/e2;->p:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lr0/d2;->d:[Ljava/lang/Object;

    return-void
.end method

.method public final d(I)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 6

    iget v0, p0, Lr0/d2;->k:I

    if-nez v0, :cond_5

    iget v0, p0, Lr0/d2;->g:I

    iget v1, p0, Lr0/d2;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "endGroup() not called at the end of a group"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lr0/d2;->i:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lr0/d2;->b:[I

    aget v0, v1, v0

    iput v0, p0, Lr0/d2;->i:I

    iget v4, p0, Lr0/d2;->c:I

    if-gez v0, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lr0/g2;->a([II)I

    move-result v5

    add-int/2addr v5, v0

    :goto_1
    iput v5, p0, Lr0/d2;->h:I

    iget-object v5, p0, Lr0/d2;->j:Le2/t;

    invoke-virtual {v5}, Le2/t;->b()I

    move-result v5

    if-gez v5, :cond_3

    iput v2, p0, Lr0/d2;->l:I

    iput v2, p0, Lr0/d2;->m:I

    return-void

    :cond_3
    iput v5, p0, Lr0/d2;->l:I

    sub-int/2addr v4, v3

    if-lt v0, v4, :cond_4

    iget v0, p0, Lr0/d2;->e:I

    goto :goto_2

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    :goto_2
    iput v0, p0, Lr0/d2;->m:I

    :cond_5
    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr0/d2;->g:I

    iget v1, p0, Lr0/d2;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr0/d2;->b:[I

    invoke-virtual {p0, v1, v0}, Lr0/d2;->b([II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Lr0/d2;->g:I

    iget v1, p0, Lr0/d2;->h:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x5

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(II)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr0/d2;->b:[I

    invoke-static {v0, p1}, Lr0/g2;->c([II)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lr0/d2;->c:I

    if-ge p1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lr0/d2;->e:I

    :goto_0
    add-int/2addr v1, p2

    if-ge v1, p1, :cond_1

    iget-object p0, p0, Lr0/d2;->d:[Ljava/lang/Object;

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    sget-object p0, Lr0/m;->a:Lr0/e;

    return-object p0
.end method

.method public final i(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    return p0
.end method

.method public final j(I)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(I)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l(I)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr0/d2;->k:I

    if-gtz v0, :cond_1

    iget v0, p0, Lr0/d2;->l:I

    iget v1, p0, Lr0/d2;->m:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr0/d2;->n:Z

    iget-object v1, p0, Lr0/d2;->d:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lr0/d2;->l:I

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/d2;->n:Z

    sget-object p0, Lr0/m;->a:Lr0/e;

    return-object p0
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 3

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lr0/d2;->b:[I

    aget v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr0/d2;->d:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x4

    aget p1, v1, p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    sget-object p0, Lr0/m;->a:Lr0/e;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public final p([II)Ljava/lang/Object;
    .locals 2

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lr0/d2;->d:[Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    aget p1, p1, p2

    shr-int/lit8 p2, v0, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    add-int/2addr p2, p1

    aget-object p0, p0, p2

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lr0/d2;->b:[I

    aget p0, p0, p1

    return p0
.end method

.method public final r(I)V
    .locals 4

    iget v0, p0, Lr0/d2;->k:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot reposition while in an empty region"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lr0/d2;->g:I

    iget-object v0, p0, Lr0/d2;->b:[I

    iget v2, p0, Lr0/d2;->c:I

    if-ge p1, v2, :cond_2

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    iget v3, p0, Lr0/d2;->i:I

    if-eq p1, v3, :cond_4

    iput p1, p0, Lr0/d2;->i:I

    if-gez p1, :cond_3

    iput v2, p0, Lr0/d2;->h:I

    goto :goto_2

    :cond_3
    invoke-static {v0, p1}, Lr0/g2;->a([II)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lr0/d2;->h:I

    :goto_2
    iput v1, p0, Lr0/d2;->l:I

    iput v1, p0, Lr0/d2;->m:I

    :cond_4
    return-void
.end method

.method public final s()I
    .locals 5

    iget v0, p0, Lr0/d2;->k:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot skip while in an empty region"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lr0/d2;->g:I

    mul-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v1

    iget-object v3, p0, Lr0/d2;->b:[I

    aget v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v1

    aget v1, v3, v2

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    :goto_1
    invoke-static {v3, v0}, Lr0/g2;->a([II)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lr0/d2;->g:I

    return v1
.end method

.method public final t()V
    .locals 2

    iget v0, p0, Lr0/d2;->k:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot skip the enclosing group while in an empty region"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lr0/d2;->h:I

    iput v0, p0, Lr0/d2;->g:I

    iput v1, p0, Lr0/d2;->l:I

    iput v1, p0, Lr0/d2;->m:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotReader(current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lr0/d2;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr0/d2;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr0/d2;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lr0/d2;->h:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 6

    iget v0, p0, Lr0/d2;->k:I

    if-gtz v0, :cond_4

    iget v0, p0, Lr0/d2;->i:I

    iget v1, p0, Lr0/d2;->g:I

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lr0/d2;->b:[I

    aget v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Invalid slot table detected"

    invoke-static {v0}, Lr0/k1;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lr0/d2;->l:I

    iget v2, p0, Lr0/d2;->m:I

    iget-object v5, p0, Lr0/d2;->j:Le2/t;

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Le2/t;->c(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0}, Le2/t;->c(I)V

    :goto_1
    iput v1, p0, Lr0/d2;->i:I

    invoke-static {v3, v1}, Lr0/g2;->a([II)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lr0/d2;->h:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lr0/d2;->g:I

    invoke-static {v3, v1}, Lr0/g2;->c([II)I

    move-result v2

    iput v2, p0, Lr0/d2;->l:I

    iget v2, p0, Lr0/d2;->c:I

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_3

    iget v0, p0, Lr0/d2;->e:I

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    aget v0, v3, v0

    :goto_2
    iput v0, p0, Lr0/d2;->m:I

    :cond_4
    return-void
.end method
