.class public final Lf7/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg7/b;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/p0;Lj6/t;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lf7/q;->b:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lf7/q;->c:Ljava/lang/Object;

    .line 15
    sget-object v0, Lr5/a0;->p:Lr5/a0;

    .line 16
    iget-object v1, p2, Lj6/t;->d:Lb6/d;

    if-eqz v1, :cond_0

    .line 17
    iget-object v2, p2, Lj6/t;->e:Lj6/c;

    invoke-virtual {v1, v2}, Lb6/d;->P(Lj6/a;)Lr5/a0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    iget-object p2, p2, Lj6/t;->a:Lb6/l;

    .line 20
    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    .line 21
    invoke-virtual {p1, p2}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    .line 22
    invoke-virtual {v1, v0}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object p2

    .line 23
    iget-object v0, p1, Ld6/n;->r:La6/n;

    .line 24
    iget-object v0, v0, La6/n;->m:Ljava/lang/Object;

    check-cast v0, Lr5/a0;

    .line 25
    invoke-virtual {v0, p2}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    .line 27
    iget-object p2, p2, Lr5/a0;->l:Lr5/z;

    .line 28
    sget-object v0, Lr5/z;->o:Lr5/z;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lf7/q;->a:Z

    .line 29
    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    iput-object p1, p0, Lf7/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld6/m;Lb6/l;Lj6/w;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p2, Lb6/l;->o:Ljava/lang/Class;

    .line 4
    iput-object v0, p0, Lf7/q;->e:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lf7/q;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lb6/l;->P()Lt6/o;

    move-result-object p2

    iput-object p2, p0, Lf7/q;->d:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object p2, Lb6/x;->n:Lb6/x;

    invoke-virtual {p1, p2}, Ld6/m;->m(Lb6/x;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lf7/q;->b:Ljava/lang/Object;

    if-nez p3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p3, v0}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lf7/q;->f:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 11
    invoke-static {v0}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lf7/q;->a:Z

    return-void
.end method

.method public constructor <init>(Ld6/m;Ljava/lang/Class;Ld6/m;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lf7/q;->e:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lf7/q;->c:Ljava/lang/Object;

    .line 33
    sget-object v0, Lt6/o;->r:Lt6/o;

    .line 34
    iput-object v0, p0, Lf7/q;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 35
    iput-object v0, p0, Lf7/q;->b:Ljava/lang/Object;

    .line 36
    iput-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    goto :goto_2

    .line 37
    :cond_0
    sget-object v1, Lb6/x;->n:Lb6/x;

    invoke-virtual {p1, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lf7/q;->b:Ljava/lang/Object;

    if-nez p3, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    check-cast p3, Ld6/n;

    .line 40
    iget-object p1, p3, Ld6/n;->n:Lj6/j0;

    invoke-virtual {p1, p2}, Lj6/j0;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    :goto_1
    iput-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    .line 42
    :goto_2
    iget-object p1, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast p1, Lb6/d;

    if-eqz p1, :cond_3

    invoke-static {p2}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lf7/q;->a:Z

    return-void
.end method

.method public constructor <init>(Lf7/d;Le7/c;Lf7/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/q;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lf7/q;->d:Ljava/lang/Object;

    iput-object p1, p0, Lf7/q;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf7/q;->a:Z

    iput-object p2, p0, Lf7/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Lf7/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public static e(Lb6/l;Ljava/util/ArrayList;Z)V
    .locals 4

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/l;

    iget-object v3, v3, Lb6/l;->o:Ljava/lang/Class;

    if-ne v3, v0, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/util/List;

    if-eq v0, p2, :cond_6

    const-class p2, Ljava/util/Map;

    if-ne v0, p2, :cond_2

    goto :goto_3

    :cond_2
    check-cast p0, Lt6/l;

    iget-object p0, p0, Lt6/l;->u:[Lb6/l;

    const/4 p2, 0x1

    if-nez p0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_3
    array-length v0, p0

    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_4
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/l;

    invoke-static {v0, p1, p2}, Lf7/q;->e(Lb6/l;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public static f(Lb6/l;Ljava/util/ArrayList;Z)V
    .locals 4

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/l;

    iget-object v3, v3, Lb6/l;->o:Ljava/lang/Class;

    if-ne v3, v0, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p2, p0

    check-cast p2, Lt6/l;

    iget-object p2, p2, Lt6/l;->u:[Lb6/l;

    const/4 v0, 0x1

    if-nez p2, :cond_4

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_4
    array-length v2, p2

    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_5
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_6
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/l;

    invoke-static {v1, p1, v0}, Lf7/q;->e(Lb6/l;Ljava/util/ArrayList;Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lb6/l;->V()Lb6/l;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {p0, p1, v0}, Lf7/q;->f(Lb6/l;Ljava/util/ArrayList;Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static i(Ld6/m;Ljava/lang/Class;)Lj6/c;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Ld6/n;

    iget-object v0, v0, Ld6/n;->n:Lj6/j0;

    invoke-virtual {v0, p1}, Lj6/j0;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p0, Lj6/c;

    invoke-direct {p0, p1}, Lj6/c;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_1
    new-instance v0, Lf7/q;

    invoke-direct {v0, p0, p1, p0}, Lf7/q;-><init>(Ld6/m;Ljava/lang/Class;Ld6/m;)V

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v1, Lj6/c;

    iget-object v2, v0, Lf7/q;->f:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v0, v4}, Lf7/q;->h(Ljava/util/List;)Lu6/b;

    move-result-object v6

    iget-object v2, v0, Lf7/q;->d:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lt6/o;

    iget-object v2, v0, Lf7/q;->b:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lb6/d;

    iget-object v2, p0, Ld6/m;->m:Ld6/a;

    iget-object v10, v2, Ld6/a;->l:Lt6/p;

    iget-boolean v11, v0, Lf7/q;->a:Z

    const/4 v2, 0x0

    move-object v9, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lj6/c;-><init>(Lb6/l;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lu6/b;Lt6/o;Lb6/d;Lj6/w;Lt6/p;Z)V

    return-object v1
.end method


# virtual methods
.method public a(Ld7/a;)V
    .locals 3

    iget-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    check-cast v0, Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    new-instance v1, Lf5/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 4

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lj6/s;->e(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    iget-object v3, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast v3, Lb6/d;

    invoke-virtual {v3, v2}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lf7/q;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public c(Lj6/s;Ljava/lang/Class;Ljava/lang/Class;)Lj6/s;
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {p3}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lf7/q;->b(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p3, p2, v0}, Lu6/h;->l(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lf7/q;->b(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 4

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    instance-of v3, v2, Ljava/lang/annotation/Target;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/annotation/Retention;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lj6/s;->e(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    iget-object v3, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast v3, Lb6/d;

    invoke-virtual {v3, v2}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lf7/q;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public g(Lj6/h;ZLb6/l;)Lb6/l;
    .locals 3

    iget-object v0, p0, Lf7/q;->d:Ljava/lang/Object;

    check-cast v0, Lb6/d;

    iget-object p0, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast p0, Lb6/p0;

    invoke-virtual {v0, p0, p1, p3}, Lb6/d;->w0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p0, p3, :cond_2

    iget-object p2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object p3, p3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object p3, p0

    move p2, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal concrete-type annotation for method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': class "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a super-type of (declared) class "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lb6/d;->a0(Lj6/a;)Lc6/j;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Lc6/j;->n:Lc6/j;

    if-eq p0, p1, :cond_4

    sget-object p1, Lc6/j;->m:Lc6/j;

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move p2, v1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p3}, Lb6/l;->m0()Lb6/l;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Ljava/util/List;)Lu6/b;
    .locals 7

    iget-object v0, p0, Lf7/q;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-boolean v1, p0, Lf7/q;->a:Z

    iget-object v2, p0, Lf7/q;->c:Ljava/lang/Object;

    check-cast v2, Lj6/w;

    iget-object v3, p0, Lf7/q;->b:Ljava/lang/Object;

    check-cast v3, Lb6/d;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_3

    instance-of v3, v2, Lj6/j0;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lj6/j0;

    iget-object v3, v3, Lj6/j0;->l:Ljava/util/HashMap;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    :goto_2
    sget-object p0, Lj6/s;->l:Lj6/q;

    return-object p0

    :cond_4
    iget-object v4, p0, Lf7/q;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    sget-object v5, Lj6/o;->m:Lj6/o;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v5, v0, v4}, Lf7/q;->c(Lj6/s;Ljava/lang/Class;Ljava/lang/Class;)Lj6/s;

    move-result-object v5

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v0}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lf7/q;->b(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v5

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/l;

    if-eqz v3, :cond_8

    iget-object v4, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-interface {v2, v4}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lf7/q;->c(Lj6/s;Ljava/lang/Class;Ljava/lang/Class;)Lj6/s;

    move-result-object v5

    :cond_8
    if-eqz v1, :cond_7

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lf7/q;->b(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    const-class p1, Ljava/lang/Object;

    invoke-interface {v2, p1}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v5, p1, v0}, Lf7/q;->c(Lj6/s;Ljava/lang/Class;Ljava/lang/Class;)Lj6/s;

    move-result-object v5

    :cond_a
    invoke-virtual {v5}, Lj6/s;->c()Lu6/b;

    move-result-object p0

    return-object p0
.end method

.method public j(Ld7/a;)V
    .locals 1

    iget-object v0, p0, Lf7/q;->f:Ljava/lang/Object;

    check-cast v0, Lf7/d;

    iget-object v0, v0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lf7/q;->c:Ljava/lang/Object;

    check-cast p0, Lf7/b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lf7/o;->p(Ld7/a;)V

    :cond_0
    return-void
.end method
