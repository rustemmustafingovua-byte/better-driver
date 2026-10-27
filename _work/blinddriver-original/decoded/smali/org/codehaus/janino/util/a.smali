.class public final Lorg/codehaus/janino/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/e7;
.implements Lmb/q7;
.implements Lmb/t7;
.implements Lmb/p7;
.implements Lmb/s7;
.implements Lmb/h7;
.implements Lmb/g7;
.implements Lmb/f7;
.implements Lmb/j7;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lmb/x4;


# direct methods
.method public synthetic constructor <init>(Lmb/x4;I)V
    .locals 0

    iput p2, p0, Lorg/codehaus/janino/util/a;->l:I

    iput-object p1, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lmb/r2;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lm2/j;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public B(Lmb/w2;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/w2;->f:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/w2;->g:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0(Lmb/x5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/x5;->g:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public C(Lmb/u4;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/u4;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public D(Lmb/r1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/r1;->f:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/r1;->g:Lmb/y4;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/r1;->h:Lmb/y4;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public D0(Lmb/e3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public E(Lmb/i3;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/i3;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/i3;->g:[Lmb/z5;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v2, v2, Lmb/z5;->e:Lmb/x0;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lmb/x4;->g:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public E0(Lmb/w1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/w1;->h:Lmb/n3;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lorg/codehaus/janino/util/a;->Y(Lmb/n3;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public F(Lmb/a6;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/a6;->h:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public G(Lmb/d0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public G0(Lmb/n1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public H(Lmb/m2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public H0(Lmb/l4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public I0(Lmb/v3;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/v3;->h:Lmb/c1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lmb/x4;->m(Lmb/z2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public J(Lmb/w0;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p1, Lmb/w0;->c:[Lmb/x0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object v3, v3, Lmb/x4;->g:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public J0(Lmb/b3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/d0;->a:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    iget-object p0, p0, Lmb/x4;->h:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public M(Lmb/d1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/d1;->f:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public M0(Lmb/l5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/l5;->e:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/l5;->f:Lmb/f1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public N(Lmb/f4;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/a;

    iget-object v1, p1, Lmb/f4;->f:Lmb/y4;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Lmb/f4;->g:Lmb/s5;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/janino/util/a;

    invoke-virtual {v1, v2}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p1, Lmb/f4;->h:[Lmb/y4;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public N0(Lmb/x2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public O(Lmb/n2;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/n2;->h:Lmb/p2;

    iget-object v0, v0, Lmb/p2;->d:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/n2;->i:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public O0(Lmb/i5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->m(Lmb/z2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public P(Lmb/e1;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lmb/f1;

    iget-object v3, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Q(Lmb/t2;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/t2;->e:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/t2;->f:Lmb/f1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {v0, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/t2;->g:Lmb/f1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public R(Lmb/g4;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p0, p0, Lmb/x4;->k:Ljava/lang/Object;

    check-cast p0, Lmb/a5;

    iget-object v0, p1, Lmb/g4;->f:Lmb/z0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmb/z0;->a(Lmb/a5;)V

    :cond_0
    iget-object p1, p1, Lmb/g4;->g:Lmb/w0;

    invoke-virtual {p1, p0}, Lmb/w0;->a(Lmb/a5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public S(Lmb/v0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public T(Lmb/v1;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public U(Lmb/i1;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public V(Lmb/q5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/q5;->c:Lmb/y4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public X(Lmb/a1;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/a1;->e:Lmb/y4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/a1;->f:Lmb/y4;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Y(Lmb/n3;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lm2/j;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public Z(Lmb/r5;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/a;

    iget-object v1, p1, Lmb/r5;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/p5;

    iget-object v3, p0, Lmb/x4;->j:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-virtual {v2, v3}, Lmb/p5;->x(Lmb/q7;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lmb/r5;->f:Lmb/f1;

    invoke-interface {p0, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    iget-object p0, p1, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/l1;

    iget-object v1, v1, Lmb/l1;->d:Lmb/f1;

    invoke-interface {v1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lmb/r5;->h:Lmb/e1;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lorg/codehaus/janino/util/a;->P(Lmb/e1;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lmb/r3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a0(Lmb/c2;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lmb/p3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lmb/g5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/g5;->f:Lmb/y4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lmb/x4;->i(Lmb/t1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c0(Lmb/d4;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/a;

    iget-object v1, p1, Lmb/d4;->f:Lmb/y4;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Lmb/d4;->g:Lmb/t0;

    iget-object v2, p0, Lmb/x4;->b:Ljava/lang/Object;

    check-cast v2, Lorg/codehaus/janino/util/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lorg/codehaus/janino/util/a;->i0(Lmb/t0;)Ljava/lang/Object;

    iget-object v1, p1, Lmb/d4;->h:[Lmb/y4;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Lmb/k2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->j(Lmb/k2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->j(Lmb/k2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public d0(Lmb/m4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Lmb/q3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public e0(Lmb/o3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/d0;->a:Lmb/s5;

    iget-object p0, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Lmb/s3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public f0(Lmb/y0;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/y0;->f:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Lmb/o0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->i(Lmb/t1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g0(Lmb/w4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/w4;->e:Lmb/y4;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lmb/u2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/a;->P(Lmb/e1;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/a;->P(Lmb/e1;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lmb/x1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/u1;->g:Lmb/f1;

    iget-object v1, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-interface {v0, v1}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/x1;->h:Lmb/y4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public i0(Lmb/t0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p0, p0, Lmb/x4;->k:Ljava/lang/Object;

    check-cast p0, Lmb/a5;

    invoke-virtual {p1, p0}, Lmb/m0;->a(Lmb/a5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Lmb/k1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/k1;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/k1;->g:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j0(Lmb/f5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Lmb/n4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k0(Lmb/e4;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/e4;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/e4;->g:[Lmb/y4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v4, Lorg/codehaus/janino/util/a;

    invoke-virtual {v3, v4}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Lmb/i4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public l0(Lmb/b1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/b1;->f:Lmb/n3;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lorg/codehaus/janino/util/a;->Y(Lmb/n3;)Ljava/lang/Object;

    iget-object v0, p1, Lmb/b1;->h:Lmb/y4;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public n(Lmb/r4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p0(Lmb/g1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public q(Lmb/w3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public r(Lmb/a3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/a3;->g:Lmb/e5;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public r0(Lmb/o4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->l(Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public s(Lmb/o2;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/janino/util/a;

    iget-object p0, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    iget-object v1, p1, Lmb/o2;->h:Lmb/f1;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Lmb/o2;->i:Lmb/y4;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p1, Lmb/o2;->j:[Lmb/y4;

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public s0(Lmb/e2;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/s1;

    iget-object v5, v4, Lmb/s1;->l:Lmb/t1;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v6, Lorg/codehaus/janino/util/a;

    invoke-interface {v5, v6}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v4}, Lmb/x4;->k(Lmb/r2;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lmb/e2;->m:[Lmb/y4;

    if-eqz v0, :cond_2

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lmb/x4;->o(Lmb/y4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lmb/x4;->h(Lmb/m0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public t(Lmb/b5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public u(Lmb/k5;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/k5;->f:Lmb/y4;

    iget-object v1, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/k5;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb/j5;

    iget-object v2, v0, Lmb/j5;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/y4;

    invoke-virtual {v3, v1}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lmb/j5;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/f1;

    iget-object v3, p0, Lmb/x4;->e:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public u0(Lmb/a2;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/a2;->c:[Lmb/z1;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lmb/x4;->h:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public v(Lmb/h2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/h2;->e:Lmb/y4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public v0(Lmb/n5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/n5;->e:Lmb/y4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/codehaus/janino/util/b;

    invoke-direct {v0, p0}, Lorg/codehaus/janino/util/b;-><init>(Lorg/codehaus/janino/util/a;)V

    invoke-virtual {p1, v0}, Lmb/t1;->E(Lmb/i7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitPackage(Lmb/j4;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitType(Lmb/s5;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/codehaus/janino/util/b;

    invoke-direct {v0, p0}, Lorg/codehaus/janino/util/b;-><init>(Lorg/codehaus/janino/util/a;)V

    invoke-virtual {p1, v0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public w(Lmb/o5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/o5;->d:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/o5;->e:Lmb/z5;

    iget-object p1, p1, Lmb/z5;->e:Lmb/x0;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmb/x4;->g:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-interface {p1, p0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public w0(Lmb/p1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/p1;->f:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public x(Lmb/o1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object v0, p1, Lmb/d0;->a:Lmb/s5;

    iget-object v1, p0, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/a;

    invoke-virtual {v0, v1}, Lmb/c1;->x(Lmb/g7;)Ljava/lang/Object;

    iget-object p1, p1, Lmb/h4;->b:[Lmb/b2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lmb/b2;->b:Lmb/z1;

    iget-object v3, p0, Lmb/x4;->h:Ljava/lang/Object;

    check-cast v3, Lorg/codehaus/janino/util/a;

    invoke-interface {v2, v3}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public y(Lmb/m5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->o(Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public y0(Lmb/f3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    iget-object p1, p1, Lmb/f3;->e:Lmb/e3;

    iget-object p0, p0, Lmb/x4;->b:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/codehaus/janino/util/a;->m:Lmb/x4;

    iget-object p0, p0, Lmb/x4;->a:Ljava/lang/Object;

    check-cast p0, Lmb/x4;

    invoke-virtual {p0, p1}, Lmb/x4;->n(Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method
