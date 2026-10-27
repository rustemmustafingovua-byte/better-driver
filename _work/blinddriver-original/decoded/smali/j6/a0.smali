.class public Lj6/a0;
.super Lb6/d;
.source "SourceFile"


# static fields
.field public static final n:[Ljava/lang/Class;

.field public static final o:[Ljava/lang/Class;


# instance fields
.field public final transient l:Lu6/m;

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v6, Lr5/i;

    const-class v7, Lr5/f0;

    const-class v0, Lc6/k;

    const-class v1, Lr5/a1;

    const-class v2, Lr5/r;

    const-class v3, Lr5/w0;

    const-class v4, Lr5/l0;

    const-class v5, Lr5/y0;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lj6/a0;->n:[Ljava/lang/Class;

    const-class v7, Lr5/f0;

    const-class v8, Lr5/g0;

    const-class v1, Lc6/f;

    const-class v2, Lr5/a1;

    const-class v3, Lr5/r;

    const-class v4, Lr5/w0;

    const-class v5, Lr5/y0;

    const-class v6, Lr5/i;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lj6/a0;->o:[Ljava/lang/Class;

    :try_start_0
    sget v0, Li6/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ly4/s;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu6/m;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lu6/m;-><init>(II)V

    iput-object v0, p0, Lj6/a0;->l:Lu6/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj6/a0;->m:Z

    return-void
.end method

.method public static B0(Lb6/l;Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lu6/h;->A(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p0}, Lu6/h;->A(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static C0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lu6/h;->A(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lu6/h;->A(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-ne p1, p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static y0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;
    .locals 2

    new-instance v0, Lb6/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public A(Lj6/a;)Lb6/i0;
    .locals 2

    const-class p0, Lr5/s;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/s;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/s;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-class v0, Lr5/i0;

    invoke-virtual {p1, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/i0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr5/i0;->namespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-interface {v0}, Lr5/i0;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_5

    sget-object p0, Lj6/a0;->n:[Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lj6/a;->i([Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lb6/i0;->o:Lb6/i0;

    return-object p0
.end method

.method public final A0(Ld6/m;Lj6/a;Lb6/l;)Lo6/n;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lj6/a0;->H(Ld6/m;Lj6/a;)Lr5/v0;

    move-result-object p0

    const-class p3, Lc6/m;

    invoke-virtual {p2, p3}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lc6/m;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lc6/m;->value()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1}, Ld6/m;->j()V

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {p1, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    invoke-static {p3, v1}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo6/n;

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object p3, p0, Lr5/v0;->l:Lr5/t0;

    sget-object v1, Lr5/t0;->m:Lr5/t0;

    if-ne p3, v1, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lr5/v0;->a(Lr5/t0;Lr5/s0;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)Lr5/v0;

    move-result-object p0

    new-instance p1, Lo6/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p1, Lo6/n;->d:Z

    invoke-virtual {p1, p0}, Lo6/n;->e(Lr5/v0;)V

    return-object p1

    :cond_3
    new-instance p3, Lo6/n;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p3, Lo6/n;->d:Z

    invoke-virtual {p3, p0}, Lo6/n;->e(Lr5/v0;)V

    :goto_1
    const-class v1, Lc6/l;

    invoke-virtual {p2, v1}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lc6/l;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lc6/l;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ld6/m;->j()V

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {p1, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    invoke-static {v0, p1}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo6/p;

    :goto_2
    iget-object p1, p0, Lr5/v0;->m:Lr5/s0;

    sget-object v1, Lr5/s0;->o:Lr5/s0;

    if-ne p1, v1, :cond_6

    instance-of p2, p2, Lj6/c;

    if-eqz p2, :cond_6

    sget-object v3, Lr5/s0;->l:Lr5/s0;

    if-ne v3, p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Lr5/v0;

    iget-object v2, p0, Lr5/v0;->l:Lr5/t0;

    iget-object v4, p0, Lr5/v0;->n:Ljava/lang/String;

    iget-object v5, p0, Lr5/v0;->o:Ljava/lang/Class;

    iget-boolean v6, p0, Lr5/v0;->p:Z

    iget-object v7, p0, Lr5/v0;->q:Ljava/lang/Boolean;

    invoke-direct/range {v1 .. v7}, Lr5/v0;-><init>(Lr5/t0;Lr5/s0;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)V

    move-object p0, v1

    :cond_6
    :goto_3
    iget-object p1, p0, Lr5/v0;->o:Ljava/lang/Class;

    if-eqz p1, :cond_7

    const-class p2, Lr5/u0;

    if-eq p1, p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result p1

    :cond_7
    iput-object v0, p3, Lo6/n;->g:Lo6/p;

    invoke-virtual {p3, p0}, Lo6/n;->e(Lr5/v0;)V

    return-object p3
.end method

.method public final B(Lj6/c;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/g;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lc6/g;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final C(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/k;->nullsUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/t;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final D(Lj6/a;)Lj6/d0;
    .locals 6

    const-class p0, Lr5/t;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/t;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/t;->generator()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lr5/e1;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr5/t;->property()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v1

    new-instance v0, Lj6/d0;

    invoke-interface {p0}, Lr5/t;->scope()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Lr5/t;->generator()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p0}, Lr5/t;->resolver()Ljava/lang/Class;

    move-result-object v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lj6/d0;-><init>(Lb6/i0;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E(Lj6/a;Lj6/d0;)Lj6/d0;
    .locals 6

    const-class p0, Lr5/u;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/u;

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lj6/d0;->f:Lj6/d0;

    :cond_1
    invoke-interface {p0}, Lr5/u;->alwaysAsId()Z

    move-result v4

    iget-boolean p0, p2, Lj6/d0;->e:Z

    if-ne p0, v4, :cond_2

    return-object p2

    :cond_2
    new-instance v0, Lj6/d0;

    iget-object v1, p2, Lj6/d0;->a:Lb6/i0;

    iget-object v2, p2, Lj6/d0;->d:Ljava/lang/Class;

    iget-object v3, p2, Lj6/d0;->b:Ljava/lang/Class;

    iget-object v5, p2, Lj6/d0;->c:Ljava/lang/Class;

    invoke-direct/range {v0 .. v5}, Lj6/d0;-><init>(Lb6/i0;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public final F(Lj6/c;)Ljava/lang/Class;
    .locals 0

    const-class p0, Lc6/f;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lc6/f;->builder()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final G(Lj6/c;)Lg5/s;
    .locals 1

    const-class p0, Lc6/h;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lg5/s;

    invoke-interface {p0}, Lc6/h;->buildMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lc6/h;->withPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lg5/s;->l:Ljava/lang/Object;

    iput-object p0, p1, Lg5/s;->m:Ljava/lang/Object;

    return-object p1
.end method

.method public final H(Ld6/m;Lj6/a;)Lr5/v0;
    .locals 6

    const-class p0, Lr5/w0;

    invoke-virtual {p2, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/w0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/w0;->use()Lr5/t0;

    move-result-object v0

    invoke-interface {p0}, Lr5/w0;->include()Lr5/s0;

    move-result-object v1

    invoke-interface {p0}, Lr5/w0;->property()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lr5/w0;->defaultImpl()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p0}, Lr5/w0;->visible()Z

    move-result v4

    invoke-interface {p0}, Lr5/w0;->requireTypeIdForSubtypes()Lr5/g1;

    move-result-object p0

    invoke-virtual {p0}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lr5/v0;->a(Lr5/t0;Lr5/s0;Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Boolean;)Lr5/v0;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lj6/a;)Lr5/h0;
    .locals 0

    const-class p0, Lr5/i0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/i0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/i0;->access()Lr5/h0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final J(Lj6/a;)Ljava/util/List;
    .locals 3

    const-class p0, Lr5/d;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/d;->value()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-nez p1, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final K(Ld6/m;Lj6/h;Lb6/l;)Lo6/n;
    .locals 1

    invoke-virtual {p3}, Lb6/l;->Q()Lb6/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lj6/a0;->A0(Ld6/m;Lj6/a;Lb6/l;)Lo6/n;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Must call method with a container or reference type (got "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L(Lj6/a;)Ljava/lang/String;
    .locals 0

    const-class p0, Lr5/i0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/i0;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr5/i0;->defaultValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final M(Lj6/a;)Ljava/lang/String;
    .locals 0

    const-class p0, Lr5/j0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/j0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/j0;->value()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N(Ld6/m;Lj6/a;)Lr5/w;
    .locals 6

    const-class p0, Lr5/x;

    invoke-virtual {p2, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/x;

    if-nez p0, :cond_0

    sget-object p0, Lr5/w;->q:Lr5/w;

    return-object p0

    :cond_0
    sget-object p1, Lr5/w;->q:Lr5/w;

    invoke-interface {p0}, Lr5/x;->value()[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    new-instance p2, Ljava/util/HashSet;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v0, p1

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, p2

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_1

    :goto_3
    invoke-interface {p0}, Lr5/x;->ignoreUnknown()Z

    move-result v2

    invoke-interface {p0}, Lr5/x;->allowGetters()Z

    move-result v3

    invoke-interface {p0}, Lr5/x;->allowSetters()Z

    move-result v4

    sget-object p0, Lr5/w;->q:Lr5/w;

    iget-boolean p1, p0, Lr5/w;->m:Z

    if-ne v2, p1, :cond_4

    iget-boolean p1, p0, Lr5/w;->n:Z

    if-ne v3, p1, :cond_4

    iget-boolean p1, p0, Lr5/w;->o:Z

    if-ne v4, p1, :cond_4

    iget-boolean p1, p0, Lr5/w;->p:Z

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lr5/w;

    invoke-direct/range {v0 .. v5}, Lr5/w;-><init>(Ljava/util/Set;ZZZZ)V

    move-object p0, v0

    :cond_5
    :goto_4
    return-object p0
.end method

.method public final O(Lj6/a;)Lr5/w;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lj6/a0;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lj6/a;)Lr5/a0;
    .locals 6

    const-class p0, Lr5/b0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/b0;

    sget-object v0, Lr5/z;->p:Lr5/z;

    if-nez p0, :cond_0

    sget-object p0, Lr5/a0;->p:Lr5/a0;

    goto :goto_1

    :cond_0
    sget-object v1, Lr5/a0;->p:Lr5/a0;

    invoke-interface {p0}, Lr5/b0;->value()Lr5/z;

    move-result-object v2

    invoke-interface {p0}, Lr5/b0;->content()Lr5/z;

    move-result-object v3

    if-ne v2, v0, :cond_1

    if-ne v3, v0, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lr5/b0;->valueFilter()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    if-ne v1, v5, :cond_2

    move-object v1, v4

    :cond_2
    invoke-interface {p0}, Lr5/b0;->contentFilter()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, v5, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, p0

    :goto_0
    new-instance p0, Lr5/a0;

    invoke-direct {p0, v2, v3, v1, v4}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_1
    iget-object v1, p0, Lr5/a0;->l:Lr5/z;

    if-ne v1, v0, :cond_8

    const-class v0, Lc6/k;

    invoke-virtual {p1, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc6/k;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lc6/k;->include()Lc6/i;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object p1, Lr5/z;->n:Lr5/z;

    invoke-virtual {p0, p1}, Lr5/a0;->b(Lr5/z;)Lr5/a0;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p1, Lr5/z;->o:Lr5/z;

    invoke-virtual {p0, p1}, Lr5/a0;->b(Lr5/z;)Lr5/a0;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p1, Lr5/z;->m:Lr5/z;

    invoke-virtual {p0, p1}, Lr5/a0;->b(Lr5/z;)Lr5/a0;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p1, Lr5/z;->l:Lr5/z;

    invoke-virtual {p0, p1}, Lr5/a0;->b(Lr5/z;)Lr5/a0;

    move-result-object p0

    :cond_8
    :goto_2
    return-object p0
.end method

.method public final Q(Ld6/m;Lj6/a;)Lr5/c0;
    .locals 3

    const-class p0, Lr5/d0;

    invoke-virtual {p2, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/d0;

    if-nez p0, :cond_0

    sget-object p0, Lr5/c0;->m:Lr5/c0;

    return-object p0

    :cond_0
    new-instance p1, Lr5/c0;

    invoke-interface {p0}, Lr5/d0;->value()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p2, p0

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/HashSet;

    array-length v0, p0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_3
    invoke-direct {p1, p2}, Lr5/c0;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public final R(Lj6/a;)Ljava/lang/Integer;
    .locals 0

    const-class p0, Lr5/i0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/i0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/i0;->index()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final S(Ld6/m;Lj6/h;Lb6/l;)Lo6/n;
    .locals 1

    invoke-virtual {p3}, Lb6/l;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lb6/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lj6/a0;->A0(Ld6/m;Lj6/a;Lb6/l;)Lo6/n;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final T(Lj6/h;)Lb6/b;
    .locals 1

    const-class p0, Lr5/f0;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/f0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/f0;->value()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/b;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lb6/b;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    const-class p0, Lr5/i;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/i;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/i;->value()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/b;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lb6/b;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final U(Ld6/m;Lj6/f;Lb6/i0;)Lb6/i0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public V(Lj6/c;)Lb6/i0;
    .locals 2

    const-class p0, Lr5/m0;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/m0;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lr5/m0;->namespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-interface {p0}, Lr5/m0;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object p0

    return-object p0
.end method

.method public final W(Lj6/h;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lc6/k;->contentConverter()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const-class v0, Lu6/j;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final X(Lj6/a;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lc6/k;->converter()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const-class v0, Lu6/j;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final Y(Lj6/c;)[Ljava/lang/String;
    .locals 0

    const-class p0, Lr5/k0;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/k0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/k0;->value()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Z(Lj6/a;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/k0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/k0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/k0;->alphabetic()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a0(Lj6/a;)Lc6/j;
    .locals 0

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lc6/k;->typing()Lc6/j;

    move-result-object p0

    return-object p0
.end method

.method public b(Ld6/m;Lj6/c;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-class v3, Lc6/e;

    iget-object v4, v1, Lj6/c;->u:Lu6/b;

    invoke-interface {v4, v3}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    iget-object v4, v1, Lj6/c;->m:Ljava/lang/Class;

    check-cast v3, Lc6/e;

    if-nez v3, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-interface {v3}, Lc6/e;->prepend()Z

    move-result v5

    invoke-interface {v3}, Lc6/e;->attrs()[Lc6/c;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move-object v11, v8

    const/4 v10, 0x0

    :goto_0
    sget-object v12, Lr5/z;->p:Lr5/z;

    if-ge v10, v7, :cond_b

    if-nez v11, :cond_1

    const-class v11, Ljava/lang/Object;

    invoke-virtual {v0, v11}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v11

    :cond_1
    aget-object v13, v6, v10

    invoke-interface {v13}, Lc6/c;->required()Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lb6/h0;->s:Lb6/h0;

    :goto_1
    move-object/from16 v19, v14

    goto :goto_2

    :cond_2
    sget-object v14, Lb6/h0;->t:Lb6/h0;

    goto :goto_1

    :goto_2
    invoke-interface {v13}, Lc6/c;->value()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Lc6/c;->propName()Ljava/lang/String;

    move-result-object v15

    const/16 p0, 0x0

    invoke-interface {v13}, Lc6/c;->propNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    sget-object v9, Lb6/i0;->o:Lb6/i0;

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v15, v9}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v9

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v15}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v9

    :goto_4
    invoke-virtual {v9}, Lb6/i0;->c()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static {v14}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v9

    :cond_6
    move-object/from16 v18, v9

    new-instance v9, Lj6/l0;

    invoke-direct {v9, v1, v4, v14, v11}, Lj6/l0;-><init>(Lj6/c;Ljava/lang/Class;Ljava/lang/String;Lb6/l;)V

    invoke-interface {v13}, Lc6/c;->include()Lr5/z;

    move-result-object v13

    sget v15, Lu6/v;->r:I

    if-eqz v13, :cond_9

    if-ne v13, v12, :cond_7

    goto :goto_6

    :cond_7
    sget-object v15, Lr5/a0;->p:Lr5/a0;

    if-eq v13, v12, :cond_8

    new-instance v12, Lr5/a0;

    invoke-direct {v12, v13, v8, v8, v8}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_5

    :cond_8
    sget-object v12, Lr5/a0;->p:Lr5/a0;

    :goto_5
    move-object/from16 v20, v12

    goto :goto_7

    :cond_9
    :goto_6
    sget-object v12, Lj6/v;->l:Lr5/a0;

    goto :goto_5

    :goto_7
    new-instance v15, Lu6/v;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-direct/range {v15 .. v20}, Lu6/v;-><init>(Lb6/d;Lj6/h;Lb6/i0;Lb6/h0;Lr5/a0;)V

    iget-object v9, v1, Lj6/c;->u:Lu6/b;

    new-instance v12, Lr6/a;

    invoke-direct {v12, v14, v15, v9, v11}, Lr6/a;-><init>(Ljava/lang/String;Lu6/v;Lu6/b;Lb6/l;)V

    if-eqz v5, :cond_a

    invoke-interface {v2, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 p0, 0x0

    invoke-interface {v3}, Lc6/e;->props()[Lc6/d;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_12

    aget-object v2, v2, p0

    invoke-interface {v2}, Lc6/d;->required()Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lb6/h0;->s:Lb6/h0;

    :goto_9
    move-object/from16 v17, v3

    goto :goto_a

    :cond_c
    sget-object v3, Lb6/h0;->t:Lb6/h0;

    goto :goto_9

    :goto_a
    invoke-interface {v2}, Lc6/d;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lc6/d;->namespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v3, Lb6/i0;->o:Lb6/i0;

    goto :goto_c

    :cond_d
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_b

    :cond_e
    invoke-static {v3, v5}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object v3

    goto :goto_c

    :cond_f
    :goto_b
    invoke-static {v3}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v3

    :goto_c
    invoke-interface {v2}, Lc6/d;->type()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v5

    new-instance v15, Lj6/l0;

    iget-object v6, v3, Lb6/i0;->l:Ljava/lang/String;

    invoke-direct {v15, v1, v4, v6, v5}, Lj6/l0;-><init>(Lj6/c;Ljava/lang/Class;Ljava/lang/String;Lb6/l;)V

    invoke-interface {v2}, Lc6/d;->include()Lr5/z;

    move-result-object v1

    sget v4, Lu6/v;->r:I

    if-eqz v1, :cond_11

    if-eq v1, v12, :cond_11

    sget-object v4, Lr5/a0;->p:Lr5/a0;

    if-eq v1, v12, :cond_10

    new-instance v4, Lr5/a0;

    invoke-direct {v4, v1, v8, v8, v8}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    :cond_10
    sget-object v4, Lr5/a0;->p:Lr5/a0;

    :goto_d
    move-object/from16 v18, v4

    goto :goto_e

    :cond_11
    sget-object v4, Lj6/v;->l:Lr5/a0;

    goto :goto_d

    :goto_e
    new-instance v13, Lu6/v;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v14

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v18}, Lu6/v;-><init>(Lb6/d;Lj6/h;Lb6/i0;Lb6/h0;Lr5/a0;)V

    invoke-interface {v2}, Lc6/d;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ld6/m;->j()V

    sget-object v2, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {v1, v0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called on this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_f
    return-void
.end method

.method public final b0(Lj6/a;)Ljava/lang/Object;
    .locals 2

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/k;->using()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lb6/t;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const-class p0, Lr5/l0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/l0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/l0;->value()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ls6/o;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1, p0}, Ls6/o;-><init>(IILjava/lang/Class;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lj6/c;Lj6/m0;)Lj6/m0;
    .locals 12

    const-class p0, Lr5/h;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/h;

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p2, Lj6/m0;->l:Lr5/g;

    iget-object v0, p2, Lj6/m0;->p:Lr5/g;

    iget-object v1, p2, Lj6/m0;->o:Lr5/g;

    iget-object v2, p2, Lj6/m0;->n:Lr5/g;

    iget-object v3, p2, Lj6/m0;->m:Lr5/g;

    invoke-interface {p0}, Lr5/h;->getterVisibility()Lr5/g;

    move-result-object v4

    sget-object v5, Lr5/g;->o:Lr5/g;

    if-ne v4, v5, :cond_1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v4

    :goto_0
    invoke-interface {p0}, Lr5/h;->isGetterVisibility()Lr5/g;

    move-result-object p1

    if-ne p1, v5, :cond_2

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, p1

    :goto_1
    invoke-interface {p0}, Lr5/h;->setterVisibility()Lr5/g;

    move-result-object p1

    if-ne p1, v5, :cond_3

    move-object v9, v2

    goto :goto_2

    :cond_3
    move-object v9, p1

    :goto_2
    invoke-interface {p0}, Lr5/h;->creatorVisibility()Lr5/g;

    move-result-object p1

    if-ne p1, v5, :cond_4

    move-object v10, v1

    goto :goto_3

    :cond_4
    move-object v10, p1

    :goto_3
    invoke-interface {p0}, Lr5/h;->fieldVisibility()Lr5/g;

    move-result-object p0

    if-ne p0, v5, :cond_5

    move-object v11, v0

    goto :goto_4

    :cond_5
    move-object v11, p0

    :goto_4
    iget-object p0, p2, Lj6/m0;->l:Lr5/g;

    if-ne v7, p0, :cond_6

    if-ne v8, v3, :cond_6

    if-ne v9, v2, :cond_6

    if-ne v10, v1, :cond_6

    if-ne v11, v0, :cond_6

    return-object p2

    :cond_6
    new-instance v6, Lj6/m0;

    invoke-direct/range {v6 .. v11}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    return-object v6
.end method

.method public final c0(Lj6/a;)Lr5/n0;
    .locals 2

    const-class p0, Lr5/o0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/o0;

    sget-object p1, Lr5/n0;->n:Lr5/n0;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lr5/o0;->nulls()Lr5/b1;

    move-result-object v0

    invoke-interface {p0}, Lr5/o0;->contentNulls()Lr5/b1;

    move-result-object p0

    sget-object v1, Lr5/b1;->o:Lr5/b1;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    if-nez p0, :cond_2

    move-object p0, v1

    :cond_2
    if-ne v0, v1, :cond_3

    if-ne p0, v1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lr5/n0;

    invoke-direct {p1, v0, p0}, Lr5/n0;-><init>(Lr5/b1;Lr5/b1;)V

    return-object p1
.end method

.method public final d(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/f;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/f;->contentUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/m;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d0(Lj6/a;)Ljava/util/List;
    .locals 16

    const-class v0, Lr5/q0;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/q0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lr5/q0;->value()[Lr5/p0;

    move-result-object v2

    invoke-interface {v0}, Lr5/q0;->failOnRepeatedNames()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v2, v6

    invoke-interface {v7}, Lr5/p0;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const-string v10, "]"

    const-string v11, "] got repeated subtype name ["

    const-string v12, "Annotated type ["

    if-nez v9, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v12, v0, v11, v8, v10}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v9, Ln6/c;

    invoke-interface {v7}, Lr5/p0;->value()Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v9, v13, v8}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lr5/p0;->names()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_5

    aget-object v14, v8, v13

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v12, v0, v11, v14, v10}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v15, Ln6/c;

    invoke-interface {v7}, Lr5/p0;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v15, v3, v14}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_9

    aget-object v4, v2, v3

    new-instance v5, Ln6/c;

    invoke-interface {v4}, Lr5/p0;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Lr5/p0;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lr5/p0;->names()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    new-instance v9, Ln6/c;

    invoke-interface {v4}, Lr5/p0;->value()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ln6/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method public final e(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/k;->contentUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/t;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e0(Lj6/c;)Ljava/lang/String;
    .locals 0

    const-class p0, Lr5/x0;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/x0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/x0;->value()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ld6/m;Lj6/a;)Lr5/j;
    .locals 1

    const-class v0, Lr5/k;

    invoke-virtual {p2, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lr5/k;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lr5/k;->mode()Lr5/j;

    move-result-object p2

    sget-object v0, Lr5/j;->l:Lr5/j;

    if-eq p2, v0, :cond_1

    return-object p2

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lj6/a0;->m:Z

    if-eqz p0, :cond_2

    sget-object p0, Lb6/x;->y:Lb6/x;

    invoke-virtual {p1, p0}, Ld6/m;->m(Lb6/x;)Z

    :cond_2
    return-object p2
.end method

.method public final f0(Lb6/l;Ld6/m;Lj6/c;)Lo6/n;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lj6/a0;->A0(Ld6/m;Lj6/a;Lb6/l;)Lo6/n;

    move-result-object p0

    return-object p0
.end method

.method public final g0(Lj6/h;)Lu6/r;
    .locals 4

    const-class p0, Lr5/y0;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/y0;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lr5/y0;->enabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lr5/y0;->prefix()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lr5/y0;->suffix()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    new-instance v0, Lu6/n;

    invoke-direct {v0, p1, p0}, Lu6/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Lu6/o;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu6/o;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Lu6/o;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lu6/o;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_5
    sget-object p0, Lu6/r;->l:Lu6/q;

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h0(Lj6/c;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/n;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/n;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lc6/n;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lj6/c;[Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 5

    invoke-virtual {p1}, Lj6/c;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj6/a;

    invoke-virtual {p1}, Lj6/a;->h()Lb6/l;

    move-result-object v0

    invoke-virtual {v0}, Lb6/l;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lr5/l;

    invoke-virtual {p1, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/l;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final i0(Lj6/a;)[Ljava/lang/Class;
    .locals 0

    const-class p0, Lr5/a1;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/a1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/a1;->value()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 9

    sget-object p0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Lr5/l;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Lj6/h;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lc6/f;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lc6/f;->contentConverter()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const-class v0, Lu6/j;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final k0(Lj6/a;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/e;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/e;->enabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lj6/a;)Ljava/lang/Object;
    .locals 1

    const-class p0, Lc6/f;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lc6/f;->converter()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    const-class v0, Lu6/j;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final l0(Lj6/i;)Z
    .locals 0

    const-class p0, Lr5/e;

    invoke-virtual {p1, p0}, Lj6/h;->o(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final m(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/f;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/f;->using()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/m;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final m0(Lj6/a;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/f;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/f;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/f;->enabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ld6/m;Lj6/c;[Ljava/lang/Enum;[[Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lj6/c;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj6/f;

    const-class v0, Lr5/d;

    invoke-virtual {p2, v0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/d;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lr5/d;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final n0(Ld6/m;Lj6/a;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/e0;

    invoke-virtual {p2, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/e0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/e0;->value()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lr5/d;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lr5/d;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lr5/d;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    array-length v4, p2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aput-object v3, p3, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final o0(Lj6/a;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/z0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/z0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/z0;->value()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ld6/m;Lj6/c;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/a;

    iget-object p1, p2, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lc6/a;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final p0(Lj6/i;)Z
    .locals 0

    const-class p0, Lr5/z0;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/z0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/z0;->value()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Ld6/m;Lj6/c;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2}, Lj6/c;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj6/f;

    const-class v0, Lr5/i0;

    invoke-virtual {p2, v0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr5/i0;->value()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    array-length p1, p3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    aget-object v0, p3, p2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    aput-object v0, p4, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p4
.end method

.method public final q0(Lj6/h;)Z
    .locals 0

    const-class p0, Lr5/v;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/v;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/v;->value()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lr5/m;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/m;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lr5/m;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final r0(Lj6/h;)Ljava/lang/Boolean;
    .locals 1

    const-class p0, Lr5/i0;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/i0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/i0;->isRequired()Lr5/g1;

    move-result-object p1

    sget-object v0, Lr5/g1;->m:Lr5/g1;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/i0;->required()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Lj6/a;)Lr5/q;
    .locals 12

    const-class p0, Lr5/r;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/r;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr5/q;

    invoke-interface {p0}, Lr5/r;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lr5/r;->shape()Lr5/p;

    move-result-object v2

    invoke-interface {p0}, Lr5/r;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lr5/r;->timezone()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lr5/r;->with()[Lr5/n;

    move-result-object p1

    invoke-interface {p0}, Lr5/r;->without()[Lr5/n;

    move-result-object v5

    array-length v6, p1

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x1

    if-ge v8, v6, :cond_1

    aget-object v11, p1, v8

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    array-length p1, v5

    move v6, v7

    :goto_1
    if-ge v7, p1, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    shl-int v8, v10, v8

    or-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Lr5/o;

    invoke-direct {v5, v9, v6}, Lr5/o;-><init>(II)V

    invoke-interface {p0}, Lr5/r;->lenient()Lr5/g1;

    move-result-object p0

    invoke-virtual {p0}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lr5/q;-><init>(Ljava/lang/String;Lr5/p;Ljava/lang/String;Ljava/lang/String;Lr5/o;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final s0(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lj6/a0;->l:Lu6/m;

    iget-object v1, p0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v1, Lv6/p;

    invoke-virtual {v1, v0}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-class v1, Lr5/a;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p0, Lv6/p;

    invoke-virtual {p0, v0, p1, v1}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-object v1, p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final t(Lj6/h;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t0(Lj6/c;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/y;

    iget-object p1, p1, Lj6/c;->u:Lu6/b;

    invoke-interface {p1, p0}, Lu6/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/y;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/y;->value()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lj6/h;)Lr5/b;
    .locals 4

    const-class p0, Lr5/c;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lr5/c;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lr5/c;->useInput()Lr5/g1;

    move-result-object v2

    invoke-virtual {v2}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lr5/c;->optional()Lr5/g1;

    move-result-object p0

    invoke-virtual {p0}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object p0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez p0, :cond_2

    sget-object p0, Lr5/b;->o:Lr5/b;

    goto :goto_1

    :cond_2
    new-instance v1, Lr5/b;

    invoke-direct {v1, v0, v2, p0}, Lr5/b;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object p0, v1

    :goto_1
    iget-object v0, p0, Lr5/b;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    instance-of v1, p1, Lj6/i;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object v1, p1

    check-cast v1, Lj6/i;

    iget-object v2, v1, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lj6/a;->f()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    return-object p0

    :cond_6
    new-instance v0, Lr5/b;

    iget-object v1, p0, Lr5/b;->m:Ljava/lang/Boolean;

    iget-object p0, p0, Lr5/b;->n:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, p0}, Lr5/b;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final u0(Lj6/h;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/r0;

    invoke-virtual {p1, p0}, Lj6/h;->o(Ljava/lang/Class;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lj6/h;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj6/a0;->u(Lj6/h;)Lr5/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lr5/b;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final v0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;
    .locals 5

    iget-object p0, p1, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    const-class p1, Lc6/f;

    invoke-virtual {p2, p1}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc6/f;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lc6/f;->as()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3, v1}, Lj6/a0;->B0(Lb6/l;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p0, p3, v1, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to narrow type %s with annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p3, Lt6/g;

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lb6/l;->T()Lb6/l;

    move-result-object v1

    if-nez p1, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lc6/f;->keyAs()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_3

    invoke-static {v1, v3}, Lj6/a0;->B0(Lb6/l;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_1
    invoke-virtual {p0, v1, v3, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object v1

    move-object v4, p3

    check-cast v4, Lt6/g;

    invoke-virtual {v4, v1}, Lt6/g;->s0(Lb6/l;)Lt6/g;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to narrow key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_3
    :goto_3
    invoke-virtual {p3}, Lb6/l;->Q()Lb6/l;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lc6/f;->contentAs()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {v1, v0}, Lj6/a0;->B0(Lb6/l;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_2
    invoke-virtual {p0, v1, v0, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p0

    invoke-virtual {p3, p0}, Lb6/l;->i0(Lb6/l;)Lb6/l;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to narrow value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_5
    return-object p3
.end method

.method public final w(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/f;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/f;->keyUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/v;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final w0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;
    .locals 6

    iget-object p0, p1, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    const-class p1, Lc6/k;

    invoke-virtual {p2, p1}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc6/k;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lc6/k;->as()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p3, v1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lb6/l;->m0()Lb6/l;

    move-result-object p3

    goto :goto_2

    :cond_1
    iget-object v3, p3, Lb6/l;->o:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v1}, Lt6/p;->i(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p3

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p3, v1, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-static {v3, v1}, Lj6/a0;->C0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Lb6/l;->m0()Lb6/l;

    move-result-object p3

    goto :goto_2

    :cond_4
    const-string p0, "Cannot refine serialization type %s into %s; types not related"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/p;

    invoke-direct {p1, v0, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p3, Lt6/g;

    if-eqz v1, :cond_b

    invoke-virtual {p3}, Lb6/l;->T()Lb6/l;

    move-result-object v1

    if-nez p1, :cond_6

    move-object v3, v0

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lc6/k;->keyAs()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {v1, v3}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lb6/l;->m0()Lb6/l;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v4, v1, Lb6/l;->o:Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lt6/p;->i(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v1, v3, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object v1

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_9
    invoke-static {v4, v3}, Lj6/a0;->C0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lb6/l;->m0()Lb6/l;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    check-cast p3, Lt6/g;

    invoke-virtual {p3, v1}, Lt6/g;->s0(Lb6/l;)Lt6/g;

    move-result-object p3

    goto :goto_6

    :cond_a
    :try_start_2
    const-string p0, "Cannot refine serialization key type %s into %s; types not related"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lb6/p;

    invoke-direct {p1, v0, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_b
    :goto_6
    invoke-virtual {p3}, Lb6/l;->Q()Lb6/l;

    move-result-object v1

    if-eqz v1, :cond_11

    if-nez p1, :cond_c

    move-object p1, v0

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Lc6/k;->contentAs()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lj6/a0;->y0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_7
    if-eqz p1, :cond_11

    invoke-virtual {v1, p1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lb6/l;->m0()Lb6/l;

    move-result-object p0

    goto :goto_8

    :cond_d
    iget-object v3, v1, Lb6/l;->o:Ljava/lang/Class;

    :try_start_3
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lt6/p;->i(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    goto :goto_8

    :cond_e
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0, v1, p1, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p0

    goto :goto_8

    :catch_2
    move-exception p0

    goto :goto_9

    :cond_f
    invoke-static {v3, p1}, Lj6/a0;->C0(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {v1}, Lb6/l;->m0()Lb6/l;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_8
    invoke-virtual {p3, p0}, Lb6/l;->i0(Lb6/l;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_10
    :try_start_4
    const-string p0, "Cannot refine serialization content type %s into %s; types not related"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lb6/p;

    invoke-direct {v1, v0, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj6/a0;->z0(Ljava/lang/IllegalArgumentException;Ljava/lang/String;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_11
    return-object p3
.end method

.method public final x(Lj6/a;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lc6/k;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc6/k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc6/k;->keyUsing()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lb6/t;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x0(Ld6/m;Lj6/i;Lj6/i;)Lj6/i;
    .locals 2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p0}, Lj6/i;->w(I)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_3

    if-eq p0, v0, :cond_4

    :goto_0
    return-object p2

    :cond_3
    if-ne p0, v0, :cond_4

    :goto_1
    return-object p3

    :cond_4
    return-object v1
.end method

.method public final y(Lj6/h;)Ljava/lang/Boolean;
    .locals 0

    const-class p0, Lr5/g0;

    invoke-virtual {p1, p0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/g0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lr5/g0;->value()Lr5/g1;

    move-result-object p0

    invoke-virtual {p0}, Lr5/g1;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public z(Lj6/a;)Lb6/i0;
    .locals 2

    const-class p0, Lr5/o0;

    invoke-virtual {p1, p0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lr5/o0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lr5/o0;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-class v0, Lr5/i0;

    invoke-virtual {p1, v0}, Lj6/a;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lr5/i0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr5/i0;->namespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-interface {v0}, Lr5/i0;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lb6/i0;->b(Ljava/lang/String;Ljava/lang/String;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_5

    sget-object p0, Lj6/a0;->o:[Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lj6/a;->i([Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lb6/i0;->o:Lb6/i0;

    return-object p0
.end method
