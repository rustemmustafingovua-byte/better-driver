.class public final Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/q;

.field public b:Ls0/a;

.field public c:Z

.field public final d:Le2/t;

.field public e:Z

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lr0/q;Ls0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/b;->a:Lr0/q;

    iput-object p2, p0, Ls0/b;->b:Ls0/a;

    new-instance p1, Le2/t;

    invoke-direct {p1}, Le2/t;-><init>()V

    iput-object p1, p0, Ls0/b;->d:Le2/t;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls0/b;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls0/b;->h:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Ls0/b;->i:I

    iput p1, p0, Ls0/b;->j:I

    iput p1, p0, Ls0/b;->k:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Ls0/b;->c()V

    iget-object v0, p0, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    iget v0, p0, Ls0/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls0/b;->g:I

    return-void
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Ls0/b;->g:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Ls0/b;->b:Ls0/a;

    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    sget-object v3, Ls0/h0;->c:Ls0/h0;

    invoke-virtual {v2, v3}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v3, v2, Ls0/m0;->e:[I

    iget v4, v2, Ls0/m0;->f:I

    iget-object v5, v2, Ls0/m0;->c:[Ls0/j0;

    iget v2, v2, Ls0/m0;->d:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v5, v2

    iget v2, v2, Ls0/j0;->a:I

    sub-int/2addr v4, v2

    aput v0, v3, v4

    iput v1, p0, Ls0/b;->g:I

    :cond_0
    iget-object v0, p0, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Ls0/b;->b:Ls0/a;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/k;->c:Ls0/k;

    invoke-virtual {p0, v2}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p0, v1, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 8

    iget v0, p0, Ls0/b;->l:I

    if-lez v0, :cond_1

    iget v1, p0, Ls0/b;->i:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ls0/b;->b()V

    iget-object v3, p0, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v4, Ls0/z;->c:Ls0/z;

    invoke-virtual {v3, v4}, Ls0/m0;->G(Ls0/j0;)V

    iget v4, v3, Ls0/m0;->f:I

    iget-object v5, v3, Ls0/m0;->c:[Ls0/j0;

    iget v6, v3, Ls0/m0;->d:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Ls0/j0;->a:I

    sub-int/2addr v4, v5

    iget-object v3, v3, Ls0/m0;->e:[I

    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput v0, v3, v4

    iput v2, p0, Ls0/b;->i:I

    goto :goto_0

    :cond_0
    iget v1, p0, Ls0/b;->k:I

    iget v3, p0, Ls0/b;->j:I

    invoke-virtual {p0}, Ls0/b;->b()V

    iget-object v4, p0, Ls0/b;->b:Ls0/a;

    iget-object v4, v4, Ls0/a;->c:Ls0/m0;

    sget-object v5, Ls0/v;->c:Ls0/v;

    invoke-virtual {v4, v5}, Ls0/m0;->G(Ls0/j0;)V

    iget v5, v4, Ls0/m0;->f:I

    iget-object v6, v4, Ls0/m0;->c:[Ls0/j0;

    iget v7, v4, Ls0/m0;->d:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Ls0/j0;->a:I

    sub-int/2addr v5, v6

    iget-object v4, v4, Ls0/m0;->e:[I

    add-int/lit8 v6, v5, 0x1

    aput v1, v4, v6

    aput v3, v4, v5

    add-int/lit8 v5, v5, 0x2

    aput v0, v4, v5

    iput v2, p0, Ls0/b;->j:I

    iput v2, p0, Ls0/b;->k:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ls0/b;->l:I

    :cond_1
    return-void
.end method

.method public final d(Z)V
    .locals 5

    iget-object v0, p0, Ls0/b;->a:Lr0/q;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lr0/q;->G:Lr0/d2;

    iget p1, p1, Lr0/d2;->i:I

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lr0/q;->G:Lr0/d2;

    iget p1, p1, Lr0/d2;->g:I

    :goto_0
    iget v0, p0, Ls0/b;->f:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Tried to seek backward"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_1
    if-lez v0, :cond_2

    iget-object v1, p0, Ls0/b;->b:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/d;->c:Ls0/d;

    invoke-virtual {v1, v2}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v2, v1, Ls0/m0;->e:[I

    iget v3, v1, Ls0/m0;->f:I

    iget-object v4, v1, Ls0/m0;->c:[Ls0/j0;

    iget v1, v1, Ls0/m0;->d:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    iget v1, v1, Ls0/j0;->a:I

    sub-int/2addr v3, v1

    aput v0, v2, v3

    iput p1, p0, Ls0/b;->f:I

    :cond_2
    return-void
.end method

.method public final e(II)V
    .locals 2

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid remove index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Ls0/b;->i:I

    if-ne v0, p1, :cond_2

    iget p1, p0, Ls0/b;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Ls0/b;->l:I

    return-void

    :cond_2
    invoke-virtual {p0}, Ls0/b;->c()V

    iput p1, p0, Ls0/b;->i:I

    iput p2, p0, Ls0/b;->l:I

    :cond_3
    return-void
.end method
