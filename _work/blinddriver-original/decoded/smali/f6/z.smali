.class public final Lf6/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls5/k;

.field public final b:Lb6/i;

.field public final c:Lf6/r;

.field public final d:[Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final g:Ljava/util/BitSet;

.field public h:Lf2/b;

.field public i:Ljava/lang/Object;

.field public final j:Le6/w;

.field public k:Lf6/x;


# direct methods
.method public constructor <init>(Ls5/k;Lb6/i;ILf6/r;Le6/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6/z;->a:Ls5/k;

    iput-object p2, p0, Lf6/z;->b:Lb6/i;

    iput p3, p0, Lf6/z;->e:I

    iput-object p4, p0, Lf6/z;->c:Lf6/r;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lf6/z;->d:[Ljava/lang/Object;

    const/16 p1, 0x20

    const/4 p2, 0x0

    if-ge p3, p1, :cond_0

    iput-object p2, p0, Lf6/z;->g:Ljava/util/BitSet;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lf6/z;->g:Ljava/util/BitSet;

    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Le6/w;->e()I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lf6/z;->j:Le6/w;

    return-void

    :cond_2
    :goto_1
    iput-object p2, p0, Lf6/z;->j:Le6/w;

    return-void
.end method


# virtual methods
.method public final a(Le6/y;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lf6/z;->j:Le6/w;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Le6/y;->o()I

    move-result v2

    invoke-virtual {v1}, Le6/w;->e()I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lf6/z;->k:Lf6/x;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Le6/y;->p()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Le6/y;->n:Lb6/i0;

    iget-object p0, p0, Lf6/z;->b:Lb6/i;

    if-nez v1, :cond_6

    iget-object v1, p1, Lj6/y;->l:Lb6/h0;

    iget-object v1, v1, Lb6/h0;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1}, Le6/y;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Missing required creator property \'%s\' (index %d)"

    invoke-virtual {p0, p1, v2, v1}, Lb6/i;->u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v1, Lb6/j;->y:Lb6/j;

    invoke-virtual {p0, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_0
    iget-object v0, p1, Le6/y;->s:Le6/r;

    invoke-interface {v0, p0}, Le6/r;->getAbsentValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Le6/y;->s()Lb6/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb6/n;->getAbsentValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, v2, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    throw p0

    :cond_5
    iget-object v1, v2, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1}, Le6/y;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Missing creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled"

    invoke-virtual {p0, p1, v2, v1}, Lb6/i;->u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Le6/y;->p()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/i;->U(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final b(Le6/y;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Le6/y;->o()I

    move-result p1

    iget-object v0, p0, Lf6/z;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lf6/z;->g:Ljava/util/BitSet;

    if-nez v1, :cond_2

    iget v1, p0, Lf6/z;->f:I

    shl-int p1, v0, p1

    or-int/2addr p1, v1

    if-eq v1, p1, :cond_3

    iput p1, p0, Lf6/z;->f:I

    iget p1, p0, Lf6/z;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lf6/z;->e:I

    if-gtz p1, :cond_3

    iget-object p1, p0, Lf6/z;->c:Lf6/r;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lf6/z;->i:Ljava/lang/Object;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    iget p1, p0, Lf6/z;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lf6/z;->e:I

    :cond_3
    return p2
.end method

.method public final c(Le6/y;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lf6/y;

    iget-object v1, p0, Lf6/z;->h:Lf2/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, p1, v2}, Lf6/y;-><init>(Lf2/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lf6/z;->h:Lf2/b;

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lf6/z;->c:Lf6/r;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lf6/r;->m:Lb6/i0;

    iget-object v1, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf6/z;->b:Lb6/i;

    iget-object v0, v0, Lf6/r;->o:Lb6/n;

    iget-object v1, p0, Lf6/z;->a:Ls5/k;

    invoke-virtual {v0, v1, p1}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lf6/z;->i:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
