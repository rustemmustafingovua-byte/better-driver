.class public final Lp6/a;
.super Lp6/f;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lp6/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lp6/f;-><init>(Lp6/m;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp6/a;->m:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final D()Lb6/q;
    .locals 0

    sget-object p0, Lp6/o;->l:Lp6/o;

    return-object p0
.end method

.method public final H(Lb6/q;)V
    .locals 0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 4

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p3, p0, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lb6/q;

    check-cast v3, Lp6/b;

    invoke-virtual {v3, p1, p2}, Lp6/b;->d(Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->w:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 3

    iget-object v0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, p0}, Ls5/g;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/q;

    invoke-interface {v2, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls5/g;->P()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lp6/a;

    if-eqz v0, :cond_2

    check-cast p1, Lp6/a;

    iget-object p1, p1, Lp6/a;->m:Ljava/util/ArrayList;

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final w()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final y(I)Lb6/q;
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lb6/q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
