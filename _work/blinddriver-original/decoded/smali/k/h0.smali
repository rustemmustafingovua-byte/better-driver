.class public final Lk/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Lk/f0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 5
    invoke-direct {p0, v0}, Lk/h0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lk/r0;->a:[Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    :goto_0
    iput-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lk/h0;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lk/h0;->m(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, p0, Lk/h0;->b:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/h0;->b:I

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lk/h0;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lk/h0;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Lk/h0;->m(I[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    add-int v4, v3, v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lk/h0;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lk/h0;->b:I

    :goto_1
    return-void
.end method

.method public final c(Lk/h0;)V
    .locals 5

    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lk/h0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lk/h0;->b:I

    iget v1, p1, Lk/h0;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v0, v1}, Lk/h0;->m(I[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget-object v1, p1, Lk/h0;->a:[Ljava/lang/Object;

    iget v2, p0, Lk/h0;->b:I

    iget v3, p1, Lk/h0;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4, v3}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget v0, p0, Lk/h0;->b:I

    iget p1, p1, Lk/h0;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lk/h0;->b:I

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, p0, Lk/h0;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lu8/l;->p0(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v2, p0, Lk/h0;->b:I

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lk/h0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lk/h0;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, "ObjectList is empty."

    invoke-static {p0}, Ll/a;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lk/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lk/h0;

    iget v0, p1, Lk/h0;->b:I

    iget v2, p0, Lk/h0;->b:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget-object p1, p1, Lk/h0;->a:[Ljava/lang/Object;

    invoke-static {v1, v2}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v0

    iget v2, v0, Lo9/b;->l:I

    iget v0, v0, Lo9/b;->m:I

    if-gt v2, v0, :cond_2

    :goto_0
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lk/h0;->b:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lk/h0;->a:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lk/h0;->n(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    :goto_1
    if-ge v0, p0, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final h()Z
    .locals 0

    iget p0, p0, Lk/h0;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final i()Z
    .locals 0

    iget p0, p0, Lk/h0;->b:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lk/h0;->k(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(I)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget v1, p0, Lk/h0;->b:I

    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lk/h0;->a:[Ljava/lang/Object;

    aget-object v3, v2, p1

    add-int/lit8 v4, v1, -0x1

    if-eq p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v2, v2, p1, v4, v1}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_0
    iget p1, p0, Lk/h0;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lk/h0;->b:I

    aput-object v0, v2, p1

    return-object v3

    :cond_1
    invoke-virtual {p0, p1}, Lk/h0;->n(I)V

    throw v0
.end method

.method public final l(II)V
    .locals 4

    const-string v0, "Start ("

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    iget v2, p0, Lk/h0;->b:I

    if-gt p1, v2, :cond_3

    if-ltz p2, :cond_3

    if-gt p2, v2, :cond_3

    if-lt p2, p1, :cond_2

    if-eq p2, p1, :cond_1

    if-ge p2, v2, :cond_0

    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, p2, v2}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_0
    iget v0, p0, Lk/h0;->b:I

    sub-int/2addr p2, p1

    sub-int p1, v0, p2

    iget-object p2, p0, Lk/h0;->a:[Ljava/lang/Object;

    invoke-static {p1, v0, v1, p2}, Lu8/l;->p0(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput p1, p0, Lk/h0;->b:I

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is more than end ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v2, ") and end ("

    const-string v3, ") must be in 0.."

    invoke-static {v0, p1, v2, p2, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lk/h0;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(I[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "oldContent"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v1, v0}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput-object p1, p0, Lk/h0;->a:[Ljava/lang/Object;

    return-void
.end method

.method public final n(I)V
    .locals 2

    const-string v0, "Index "

    const-string v1, " must be in 0.."

    invoke-static {p1, v0, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lk/h0;->b:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Landroidx/fragment/app/t;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget p0, p0, Lk/h0;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    aget-object v4, v2, v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const-string p0, "..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
