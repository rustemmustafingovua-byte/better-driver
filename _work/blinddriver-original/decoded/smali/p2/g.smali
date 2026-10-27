.class public final Lp2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lp2/c0;->a:Lg5/c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-object v0, Lu8/r;->l:Lu8/r;

    .line 37
    invoke-direct {p0, p1, v0}, Lp2/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p2, p1}, Lp2/g;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp2/g;->l:Ljava/util/List;

    iput-object p2, p0, Lp2/g;->m:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, p2

    move-object v3, v0

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_5

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 5
    check-cast v5, Lp2/e;

    .line 6
    iget-object v6, v5, Lp2/e;->a:Ljava/lang/Object;

    .line 7
    instance-of v7, v6, Lp2/e0;

    if-eqz v7, :cond_1

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    instance-of v6, v6, Lp2/s;

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v3, v0

    move-object v4, v3

    .line 13
    :cond_5
    iput-object v3, p0, Lp2/g;->n:Ljava/util/ArrayList;

    .line 14
    iput-object v4, p0, Lp2/g;->o:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 15
    new-instance p0, Lp2/f;

    .line 16
    invoke-direct {p0, p2}, Lp2/f;-><init>(I)V

    .line 17
    invoke-static {v4, p0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_c

    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    .line 19
    :cond_7
    invoke-static {p0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp2/e;

    .line 20
    iget p1, p1, Lp2/e;->c:I

    .line 21
    sget-object p2, Lk/j;->a:Lk/w;

    .line 22
    new-instance p2, Lk/w;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lk/w;-><init>(I)V

    .line 23
    invoke-virtual {p2, p1}, Lk/w;->a(I)V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_c

    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/e;

    .line 26
    :goto_4
    iget v3, p2, Lk/w;->b:I

    if-eqz v3, :cond_b

    if-eqz v3, :cond_a

    .line 27
    iget-object v4, p2, Lk/w;->a:[I

    add-int/lit8 v5, v3, -0x1

    .line 28
    aget v4, v4, v5

    .line 29
    iget v5, v2, Lp2/e;->b:I

    iget v6, v2, Lp2/e;->c:I

    if-lt v5, v4, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 30
    invoke-virtual {p2, v3}, Lk/w;->d(I)V

    goto :goto_4

    :cond_8
    if-gt v6, v4, :cond_9

    goto :goto_5

    .line 31
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Paragraph overlap not allowed, end "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " should be less than or equal to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lv2/a;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :cond_a
    const-string p0, "IntList is empty."

    invoke-static {p0}, Ll/a;->e(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_b
    :goto_5
    iget v2, v2, Lp2/e;->c:I

    .line 35
    invoke-virtual {p2, v2}, Lk/w;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lp2/g;->l:Ljava/util/List;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lp2/e;

    iget-object v6, v5, Lp2/e;->a:Ljava/lang/Object;

    instance-of v6, v6, Lp2/m;

    if-eqz v6, :cond_0

    iget v6, v5, Lp2/e;->b:I

    iget v5, v5, Lp2/e;->c:I

    invoke-static {v2, p1, v6, v5}, Lp2/h;->b(IIII)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final b(Li9/c;)Lp2/g;
    .locals 8

    new-instance v0, Lp2/d;

    invoke-direct {v0, p0}, Lp2/d;-><init>(Lp2/g;)V

    iget-object p0, v0, Lp2/d;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/c;

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lp2/c;->a(I)Lp2/e;

    move-result-object v3

    invoke-interface {p1, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/e;

    new-instance v4, Lp2/c;

    iget-object v5, v3, Lp2/e;->a:Ljava/lang/Object;

    iget v6, v3, Lp2/e;->b:I

    iget v7, v3, Lp2/e;->c:I

    iget-object v3, v3, Lp2/e;->d:Ljava/lang/String;

    invoke-direct {v4, v3, v6, v7, v5}, Lp2/c;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {p0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lp2/d;->e()Lp2/g;

    move-result-object p0

    return-object p0
.end method

.method public final c(II)Lp2/g;
    .locals 9

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x29

    const-string v3, "start ("

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") should be less or equal to end ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lp2/g;->m:Ljava/lang/String;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p2, v4, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "substring(...)"

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lp2/h;->a:Lp2/g;

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") should be less than or equal to end ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lp2/g;->l:Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    iget v5, v4, Lp2/e;->b:I

    iget v6, v4, Lp2/e;->c:I

    invoke-static {p1, p2, v5, v6}, Lp2/h;->b(IIII)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lp2/e;

    iget-object v7, v4, Lp2/e;->a:Ljava/lang/Object;

    iget v8, v4, Lp2/e;->b:I

    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v8, p1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, p1

    iget-object v4, v4, Lp2/e;->d:Ljava/lang/String;

    invoke-direct {v5, v4, v8, v6, v7}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_3
    const/4 v2, 0x0

    :cond_7
    new-instance p0, Lp2/g;

    invoke-direct {p0, v2, v1}, Lp2/g;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp2/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp2/g;

    iget-object v1, p1, Lp2/g;->m:Ljava/lang/String;

    iget-object v3, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v3, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lp2/g;->l:Ljava/util/List;

    iget-object p1, p1, Lp2/g;->l:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lp2/g;->l:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/g;->c(II)Lp2/g;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    return-object p0
.end method
