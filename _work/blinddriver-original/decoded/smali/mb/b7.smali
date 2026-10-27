.class public final Lmb/b7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/p7;
.implements Lmb/n7;
.implements Lmb/j7;
.implements Lmb/e7;
.implements Lmb/o7;
.implements Lmb/l7;
.implements Lmb/q7;
.implements Lmb/d7;
.implements Lmb/m7;
.implements Lmb/t7;
.implements Lmb/s7;
.implements Lmb/h7;
.implements Lmb/g7;
.implements Lmb/u7;
.implements Lmb/f7;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lmb/c7;


# direct methods
.method public synthetic constructor <init>(Lmb/c7;I)V
    .locals 0

    iput p2, p0, Lmb/b7;->l:I

    iput-object p1, p0, Lmb/b7;->m:Lmb/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Lmb/r2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->q:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/r2;->x(Lmb/l7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public A0(Lmb/p0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/p0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public B(Lmb/w2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/w2;->f:Lmb/y4;

    const-string v1, "instanceof"

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/w2;->g:Lmb/s5;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0(Lmb/x5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/x5;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/x5;->g:Lmb/y4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmb/c7;->j(Ljava/lang/String;Lmb/c1;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lmb/c7;->l(Lmb/c1;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public C(Lmb/u4;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p1, Lmb/u4;->f:Lmb/s5;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string p1, ".this"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public C0(Lmb/s1;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    iget-object v0, p1, Lmb/l0;->d:[Lmb/x3;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p1, Lmb/l0;->c:Lmb/v5;

    check-cast v0, Lmb/e0;

    iget-object v1, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    instance-of v2, v0, Lmb/b4;

    if-eqz v2, :cond_0

    check-cast v0, Lmb/b4;

    iget-object v0, v0, Lmb/b4;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "UNNAMED"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/c7;->t(Lmb/r2;)V

    iget-object v0, p1, Lmb/r2;->i:Ljava/util/List;

    const/16 v2, 0x3b

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p1, Lmb/s1;->l:Lmb/t1;

    const-string v3, "\ufffc}"

    const v4, 0xfffd

    const/16 v5, 0x7b

    if-eqz p1, :cond_3

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {p1, v4}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(C)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, v0}, Lmb/c7;->v(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "{}"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Lmb/c7;->v(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public D(Lmb/r1;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lmb/r1;->f:Lmb/y4;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    const-string v1, "?:"

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v2, " ? "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Lmb/r1;->g:Lmb/y4;

    invoke-static {p0, v2, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/r1;->h:Lmb/y4;

    invoke-static {p0, p1, v1}, Lmb/c7;->c(Lmb/c7;Lmb/y4;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public D0(Lmb/e3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->d(Lmb/c7;Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public E(Lmb/i3;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lmb/i3;->e:[Lmb/x3;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p1, Lmb/i3;->f:Lmb/s5;

    invoke-virtual {p0, v0}, Lmb/c7;->w(Lmb/s5;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p1, Lmb/i3;->g:[Lmb/z5;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lmb/c7;->z(Lmb/z5;)V

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lmb/c7;->z(Lmb/z5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public E0(Lmb/w1;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-boolean v1, p1, Lmb/w1;->f:Z

    iget-object v2, p1, Lmb/w1;->h:Lmb/n3;

    iget-object p1, p1, Lmb/w1;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "x"

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lmb/c7;->j(Ljava/lang/String;Lmb/c1;)I

    move-result p1

    if-gez p1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p0, v2, v3}, Lmb/c7;->l(Lmb/c1;Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lmb/c7;->j(Ljava/lang/String;Lmb/c1;)I

    move-result v1

    if-gez v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p0, v2, v3}, Lmb/c7;->l(Lmb/c1;Z)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public F(Lmb/a6;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/a6;->h:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public F0(Lmb/i2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/i2;->f:Lmb/c1;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    const-string v1, "."

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/i2;->g:Lmb/s;

    invoke-virtual {p1}, Lmb/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public G(Lmb/d0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->m:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public G0(Lmb/n1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public H(Lmb/m2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public H0(Lmb/l4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->i(Lmb/c7;Lmb/s0;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public I(Lmb/t4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget p1, p1, Lmb/t4;->d:I

    invoke-static {p1}, Lm/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public I0(Lmb/v3;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/v3;->h:Lmb/c1;

    if-eqz v1, :cond_0

    const-string v2, "."

    invoke-static {p0, v1, v2}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    iget-object v1, p1, Lmb/z2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/z2;->g:[Lmb/y4;

    invoke-static {p0, p1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public J(Lmb/w0;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->i:Lmb/b7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/w0;->c:[Lmb/x0;

    array-length v1, p1

    if-nez v1, :cond_0

    const-string p1, "{}"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "{ "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v1, v0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-interface {v2, v0}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, " }"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public J0(Lmb/b3;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/b3;->f:Lmb/c3;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v1, p0, Lmb/c7;->o:Lmb/b7;

    invoke-interface {v0, v1}, Lmb/c3;->d(Lmb/b7;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/b3;->g:Lm2/j;

    iget-object p0, p0, Lmb/c7;->p:Lmb/b7;

    iget v0, p1, Lm2/j;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lm2/j;->m:Ljava/lang/Object;

    check-cast p1, Lmb/y4;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmb/c7;->l(Lmb/c1;Z)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lm2/j;->m:Ljava/lang/Object;

    check-cast p1, Lmb/e1;

    invoke-virtual {p0, p1}, Lmb/c7;->n(Lmb/e1;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public K(Lmb/d5;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->m:Lmb/b7;

    invoke-virtual {p0, p1}, Lmb/b7;->K(Lmb/d5;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p1, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {v2}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d5;->b:Lmb/z1;

    iget-object p0, p0, Lmb/c7;->l:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public K0(Lmb/h0;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/h0;->c:[Ljava/lang/String;

    const-string v1, "."

    array-length v2, p1

    invoke-static {v2, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public L(Lmb/q1;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/q1;->c:Lmb/k4;

    iget-object v2, p1, Lmb/k0;->b:[Lmb/f0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lmb/k4;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    array-length v1, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v2, v4

    iget-object v6, p0, Lmb/c7;->c:Lmb/b7;

    invoke-virtual {v5, v6}, Lmb/f0;->x(Lmb/m7;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lmb/p4;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, v2}, Lmb/c7;->x(Lmb/v5;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public L0(Lmb/u3;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p1, Lmb/r2;->i:Ljava/util/List;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->q(Lmb/y1;)V

    iget-object v1, p1, Lmb/l0;->d:[Lmb/x3;

    invoke-virtual {p0, v1}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v1, p1, Lmb/u3;->k:[Lmb/w5;

    iget-object v2, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    const-string v5, ", "

    if-lez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    aget-object v6, v1, v4

    iget-object v7, v6, Lmb/w5;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v6, Lmb/w5;->b:[Lmb/v4;

    if-eqz v6, :cond_3

    const-string v7, " extends "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v7, v3

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_3

    if-lez v7, :cond_2

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    aget-object v8, v6, v7

    invoke-virtual {p0, v8}, Lmb/c7;->w(Lmb/s5;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "> "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p1, Lmb/r2;->e:Lmb/s5;

    invoke-virtual {p0, v1}, Lmb/c7;->w(Lmb/s5;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lmb/r2;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/c7;->t(Lmb/r2;)V

    if-nez v0, :cond_5

    const/16 p0, 0x3b

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, " {}"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, " {"

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const p1, 0xfffd

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Lmb/c7;->v(Ljava/util/List;)V

    const p0, 0xfffc

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->print(C)V

    const/16 p0, 0x7d

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->print(C)V

    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public M(Lmb/d1;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lmb/d1;->f:Lmb/y4;

    iget-object v1, p1, Lmb/d1;->g:Ljava/lang/String;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/d1;->h:Lmb/y4;

    invoke-static {p0, p1, v1}, Lmb/c7;->c(Lmb/c7;Lmb/y4;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public M0(Lmb/l5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/l5;->e:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/l5;->f:Lmb/f1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public N(Lmb/f4;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/f4;->f:Lmb/y4;

    if-eqz v1, :cond_0

    const-string v2, "."

    invoke-static {p0, v1, v2}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lmb/f4;->g:Lmb/s5;

    invoke-virtual {v2}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/f4;->h:[Lmb/y4;

    invoke-static {p0, p1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public N0(Lmb/x2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public O(Lmb/n2;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/n2;->h:Lmb/p2;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmb/c7;->r(Lmb/p2;Z)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/n2;->i:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public O0(Lmb/i5;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "super."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lmb/z2;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/z2;->g:[Lmb/y4;

    invoke-static {p0, p1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public P(Lmb/e1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->n(Lmb/e1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public P0(Lmb/z4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/z4;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public Q(Lmb/t2;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/t2;->e:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/t2;->f:Lmb/f1;

    invoke-virtual {p0, v1}, Lmb/c7;->o(Lmb/f1;)V

    iget-object p1, p1, Lmb/t2;->g:Lmb/f1;

    if-eqz p1, :cond_0

    const-string v1, " else"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {p1, p0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public R(Lmb/g4;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/g4;->f:Lmb/z0;

    invoke-virtual {p0, v1}, Lmb/c7;->w(Lmb/s5;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/g4;->g:Lmb/w0;

    iget-object p0, p0, Lmb/c7;->i:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/w0;->f(Lmb/f7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public S(Lmb/v0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/v0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public T(Lmb/v1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/v1;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public U(Lmb/i1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/i1;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public V(Lmb/q5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/q5;->c:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public W(Lmb/z0;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p1, Lmb/z0;->d:Lmb/s5;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string p1, "[]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public X(Lmb/a1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/a1;->e:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    iget-object p1, p1, Lmb/a1;->f:Lmb/y4;

    if-eqz p1, :cond_0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/y4;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public Y(Lmb/n3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->k:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/n3;->F(Lmb/n7;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public Z(Lmb/r5;)Ljava/lang/Object;
    .locals 9

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/r5;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, ") "

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lmb/p5;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/p5;

    move v2, v4

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    if-lez v2, :cond_0

    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    aget-object v5, v1, v2

    iget-object v6, p0, Lmb/c7;->r:Lmb/b7;

    invoke-virtual {v5, v6}, Lmb/p5;->x(Lmb/q7;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lmb/r5;->f:Lmb/f1;

    invoke-virtual {p0, v1}, Lmb/c7;->o(Lmb/f1;)V

    iget-object v1, p1, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/l1;

    const-string v5, " catch ("

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lmb/l1;->c:Lmb/m1;

    iget-boolean v6, v5, Lmb/m1;->c:Z

    iget-object v7, v5, Lmb/m1;->d:[Lmb/s5;

    if-eqz v6, :cond_3

    const-string v6, "final "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    aget-object v6, v7, v4

    invoke-virtual {v6}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    array-length v8, v7

    if-ge v6, v8, :cond_4

    const-string v8, " | "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    aget-object v8, v7, v6

    invoke-virtual {v8}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, v5, Lmb/m1;->e:Ljava/lang/String;

    const-string v6, " \uffff"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v2, Lmb/l1;->d:Lmb/f1;

    invoke-virtual {p0, v2}, Lmb/c7;->o(Lmb/f1;)V

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lmb/r5;->h:Lmb/e1;

    if-eqz p1, :cond_6

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->f:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/e1;->u(Lmb/h7;)Ljava/lang/Object;

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lmb/r3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->h(Lmb/c7;Lmb/f2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->h(Lmb/c7;Lmb/f2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public a0(Lmb/c2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lmb/p3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->i(Lmb/c7;Lmb/s0;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->i(Lmb/c7;Lmb/s0;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public b0(Lmb/j0;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/j0;->c:[Ljava/lang/String;

    const-string v1, "."

    array-length v2, p1

    invoke-static {v2, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lmb/g5;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/g5;->f:Lmb/y4;

    if-eqz v1, :cond_0

    const-string v2, "."

    invoke-static {p0, v1, v2}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    const-string v1, "super"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/t1;->c:[Lmb/y4;

    invoke-static {p0, p1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c0(Lmb/d4;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/d4;->f:Lmb/y4;

    iget-object v2, p1, Lmb/d4;->h:[Lmb/y4;

    iget-object p1, p1, Lmb/d4;->g:Lmb/t0;

    if-eqz v1, :cond_0

    const-string v3, "."

    invoke-static {p0, v1, v3}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "new "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lmb/t0;->l:Lmb/s5;

    invoke-virtual {v3}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lmb/c7;->m(Lmb/c1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->p(Lmb/e0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Lmb/k2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->a(Lmb/c7;Lmb/k2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->a(Lmb/c7;Lmb/k2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public d0(Lmb/m4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->d(Lmb/c7;Lmb/b4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Lmb/q3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->d(Lmb/c7;Lmb/b4;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->d(Lmb/c7;Lmb/b4;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public e0(Lmb/o3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->m:Lmb/b7;

    invoke-virtual {p0, p1}, Lmb/b7;->e0(Lmb/o3;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object p0

    iget-object p1, p1, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {p1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lmb/s3;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->e(Lmb/c7;Lmb/y2;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->e(Lmb/c7;Lmb/y2;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public f0(Lmb/y0;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p1, Lmb/y0;->f:Lmb/y4;

    const-string v0, "."

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1, v0}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string p1, ".length"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Lmb/o0;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/t1;->c:[Lmb/y4;

    invoke-static {p0, p1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g0(Lmb/w4;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/w4;->e:Lmb/y4;

    if-eqz p1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object p0, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/y4;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lmb/u2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lmb/l0;->d:[Lmb/x3;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object v0, p1, Lmb/l0;->d:[Lmb/x3;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public h0(Lmb/n0;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lmb/n0;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Lmb/x1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, v1}, Lmb/c7;->o(Lmb/f1;)V

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/x1;->h:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    const-string p0, ");"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i0(Lmb/t0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/t0;->l:Lmb/s5;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, v0}, Lmb/c7;->w(Lmb/s5;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->p(Lmb/e0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Lmb/k1;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p1, Lmb/k1;->f:Lmb/s5;

    invoke-virtual {p0, v1}, Lmb/c7;->w(Lmb/s5;)V

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/k1;->g:Lmb/y4;

    const-string v0, "cast"

    invoke-static {p0, p1, v0}, Lmb/c7;->c(Lmb/c7;Lmb/y4;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public j0(Lmb/f5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Lmb/n4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->h(Lmb/c7;Lmb/f2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k0(Lmb/e4;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/e4;->f:Lmb/s5;

    invoke-virtual {p0, v1}, Lmb/c7;->w(Lmb/s5;)V

    iget-object v1, p1, Lmb/e4;->g:[Lmb/y4;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v5}, Lmb/c7;->m(Lmb/c1;)V

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p0, p1, Lmb/e4;->h:I

    if-ge v3, p0, :cond_1

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Lmb/i4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public l0(Lmb/b1;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lmb/b1;->f:Lmb/n3;

    iget-object v1, p1, Lmb/b1;->g:Ljava/lang/String;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/b1;->h:Lmb/y4;

    invoke-static {p0, p1, v1}, Lmb/c7;->c(Lmb/c7;Lmb/y4;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Lmb/h5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/h5;->f:Lmb/s5;

    iget-object p1, p1, Lmb/h5;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lmb/c7;->h:Lmb/b7;

    invoke-virtual {v1, p0}, Lmb/s5;->E(Lmb/u7;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ".super."

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "super."

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public m0(Lmb/c5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/c5;->d:Lmb/b0;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public n(Lmb/r4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/r4;->f:Lmb/p2;

    iget-object p1, p1, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public n0(Lmb/u0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/u0;->f:Lmb/y4;

    const-string v1, "[ ]"

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p1, Lmb/u0;->g:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public o(Lmb/g0;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import static "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/g0;->c:[Ljava/lang/String;

    const-string v1, "."

    array-length v2, p1

    invoke-static {v2, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public o0(Lmb/i0;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import static "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/i0;->c:[Ljava/lang/String;

    const-string v1, "."

    array-length v2, p1

    invoke-static {v2, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Lmb/v4;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lmb/v4;->d:[Lmb/r0;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0}, Lmb/c7;->f(Lmb/c7;[Lmb/r0;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/v4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p0(Lmb/g1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/d3;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public q(Lmb/w3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/w3;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public q0(Lmb/s4;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p1, Lmb/s4;->f:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public r(Lmb/a3;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lmb/a3;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/a3;->g:Lmb/e5;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public r0(Lmb/o4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, p1}, Lmb/c7;->e(Lmb/c7;Lmb/y2;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public s(Lmb/o2;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/o2;->h:Lmb/f1;

    const/16 v2, 0x3b

    if-eqz v1, :cond_0

    iget-object v3, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {v1, v3}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    :goto_0
    iget-object v1, p1, Lmb/o2;->i:Lmb/y4;

    const/16 v3, 0x20

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {v1, v4}, Lmb/y4;->x(Lmb/g7;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p1, Lmb/o2;->j:[Lmb/y4;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lmb/c7;->m(Lmb/c1;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {p0, p1}, Lmb/c7;->o(Lmb/f1;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public s0(Lmb/e2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/m0;->b:[Lmb/x3;

    invoke-static {v0}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object v0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-static {p0, v0}, Lmb/c7;->f(Lmb/c7;[Lmb/r0;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/e2;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/e2;->m:[Lmb/y4;

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lmb/c7;->g(Lmb/c7;[Lmb/y4;)V

    :cond_0
    iget-object v1, p1, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lmb/c7;->p(Lmb/e0;)V

    const-string p0, "\ufffc}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public t(Lmb/b5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/b5;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public t0(Lmb/j2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/j2;->f:Lmb/c1;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    const-string v1, "."

    invoke-static {p0, v0, v1}, Lmb/c7;->b(Lmb/c7;Lmb/c1;Ljava/lang/String;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/j2;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public u(Lmb/k5;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "switch ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lmb/k5;->f:Lmb/y4;

    invoke-virtual {p0, v1}, Lmb/c7;->m(Lmb/c1;)V

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/k5;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/j5;

    const v2, 0xfffc

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const v2, 0xfffd

    :try_start_0
    iget-object v3, v1, Lmb/j5;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmb/y4;

    const-string v5, "case "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lmb/c7;->m(Lmb/c1;)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(C)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-boolean v3, v1, Lmb/j5;->d:Z

    if-eqz v3, :cond_2

    const-string v3, "default:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, v1, Lmb/j5;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/f1;

    invoke-virtual {p0, v2}, Lmb/c7;->o(Lmb/f1;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    throw p0

    :cond_3
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public u0(Lmb/a2;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, v0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/a2;->c:[Lmb/z1;

    array-length v1, p1

    if-nez v1, :cond_0

    const-string p0, "{}"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_0
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v1, p0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public v(Lmb/h2;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p1, Lmb/h2;->e:Lmb/y4;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public v0(Lmb/n5;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/n5;->e:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/c7;->m(Lmb/c1;)V

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitConstructorInvocation(Lmb/t1;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->f:Lmb/b7;

    invoke-interface {p1, v0}, Lmb/f1;->u(Lmb/h7;)Ljava/lang/Object;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(C)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitPackage(Lmb/j4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p1, p1, Lmb/j4;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/b7;->l:I

    sparse-switch v0, :sswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/y4;->x(Lmb/g7;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->j:Lmb/b7;

    invoke-virtual {p1, p0}, Lmb/y4;->E(Lmb/p7;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->g:Lmb/b7;

    invoke-virtual {p0, p1}, Lmb/b7;->visitRvalue(Lmb/y4;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public visitType(Lmb/s5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public w(Lmb/o5;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lmb/o5;->c:[Lmb/x3;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, v0}, Lmb/c7;->u([Lmb/x3;)V

    iget-object v0, p1, Lmb/o5;->d:Lmb/s5;

    invoke-virtual {p0, v0}, Lmb/c7;->w(Lmb/s5;)V

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object p1, p1, Lmb/o5;->e:Lmb/z5;

    invoke-virtual {p0, p1}, Lmb/c7;->z(Lmb/z5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public w0(Lmb/p1;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p1, Lmb/p1;->f:Lmb/s5;

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    invoke-virtual {p0, p1}, Lmb/c7;->w(Lmb/s5;)V

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string p1, ".class"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public x(Lmb/o1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/o1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public x0(Lmb/h4;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lmb/b7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->m:Lmb/b7;

    invoke-virtual {p0, p1}, Lmb/b7;->x0(Lmb/h4;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p1, Lmb/d0;->a:Lmb/s5;

    invoke-virtual {v2}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lmb/h4;->b:[Lmb/b2;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lmb/b2;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v2, Lmb/b2;->b:Lmb/z1;

    iget-object v3, p0, Lmb/c7;->l:Lmb/b7;

    invoke-interface {v2, v3}, Lmb/z1;->i(Lmb/j7;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public y(Lmb/m5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    const-string p1, "this"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public y0(Lmb/f3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/f3;->e:Lmb/e3;

    invoke-virtual {p0, p1}, Lmb/c7;->x(Lmb/v5;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public z(Lmb/h3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object p0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lmb/h3;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public z0(Lmb/y3;)Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lmb/b7;->m:Lmb/c7;

    iget-object v0, p0, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object v1, p1, Lmb/k0;->b:[Lmb/f0;

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    iget-object v6, p0, Lmb/c7;->c:Lmb/b7;

    invoke-virtual {v5, v6}, Lmb/f0;->x(Lmb/m7;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmb/y3;->c:Lmb/z3;

    iget-object v1, p1, Lmb/z3;->c:[Lmb/x3;

    iget-object v2, p1, Lmb/z3;->f:[Lmb/a4;

    invoke-virtual {p0, v1}, Lmb/c7;->u([Lmb/x3;)V

    iget-object p0, p0, Lmb/c7;->b:Lmb/b7;

    iget-boolean v1, p1, Lmb/z3;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "open module "

    goto :goto_1

    :cond_1
    const-string v1, "module "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lmb/z3;->e:[Ljava/lang/String;

    const-string v1, "."

    array-length v4, p1

    invoke-static {v4, v1, p1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length p1, v2

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const p1, 0xfffd

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(C)V

    array-length p1, v2

    :goto_2
    if-ge v3, p1, :cond_2

    aget-object v1, v2, v3

    invoke-interface {v1, p0}, Lmb/a4;->k(Lmb/b7;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const p0, 0xfffc

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3

    :cond_3
    aget-object p1, v2, v3

    invoke-interface {p1, p0}, Lmb/a4;->k(Lmb/b7;)V

    :cond_4
    :goto_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
