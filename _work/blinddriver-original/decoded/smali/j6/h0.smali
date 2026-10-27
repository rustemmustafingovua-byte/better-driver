.class public final Lj6/h0;
.super Lj6/v;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final x:Lb6/b;


# instance fields
.field public final m:Z

.field public final n:Ld6/m;

.field public final o:Lb6/d;

.field public final p:Lb6/i0;

.field public final q:Lb6/i0;

.field public r:Lj6/g0;

.field public s:Lj6/g0;

.field public t:Lj6/g0;

.field public u:Lj6/g0;

.field public transient v:Lb6/h0;

.field public transient w:Lb6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb6/b;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lb6/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lj6/h0;->x:Lb6/b;

    return-void
.end method

.method public constructor <init>(Ld6/m;Lb6/d;ZLb6/i0;Lb6/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/h0;->n:Ld6/m;

    .line 3
    iput-object p2, p0, Lj6/h0;->o:Lb6/d;

    .line 4
    iput-object p4, p0, Lj6/h0;->q:Lb6/i0;

    .line 5
    iput-object p5, p0, Lj6/h0;->p:Lb6/i0;

    .line 6
    iput-boolean p3, p0, Lj6/h0;->m:Z

    return-void
.end method

.method public constructor <init>(Lj6/h0;Lb6/i0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object v0, p1, Lj6/h0;->n:Ld6/m;

    iput-object v0, p0, Lj6/h0;->n:Ld6/m;

    .line 9
    iget-object v0, p1, Lj6/h0;->o:Lb6/d;

    iput-object v0, p0, Lj6/h0;->o:Lb6/d;

    .line 10
    iget-object v0, p1, Lj6/h0;->q:Lb6/i0;

    iput-object v0, p0, Lj6/h0;->q:Lb6/i0;

    .line 11
    iput-object p2, p0, Lj6/h0;->p:Lb6/i0;

    .line 12
    iget-object p2, p1, Lj6/h0;->r:Lj6/g0;

    iput-object p2, p0, Lj6/h0;->r:Lj6/g0;

    .line 13
    iget-object p2, p1, Lj6/h0;->s:Lj6/g0;

    iput-object p2, p0, Lj6/h0;->s:Lj6/g0;

    .line 14
    iget-object p2, p1, Lj6/h0;->t:Lj6/g0;

    iput-object p2, p0, Lj6/h0;->t:Lj6/g0;

    .line 15
    iget-object p2, p1, Lj6/h0;->u:Lj6/g0;

    iput-object p2, p0, Lj6/h0;->u:Lj6/g0;

    .line 16
    iget-boolean p1, p1, Lj6/h0;->m:Z

    iput-boolean p1, p0, Lj6/h0;->m:Z

    return-void
.end method

.method public static A(Lj6/g0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v0, Lb6/i0;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj6/g0;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static B(Lj6/g0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v0, Lb6/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/i0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static C(Lj6/g0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lj6/g0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v0, Lb6/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/i0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Lj6/g0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lj6/g0;->e:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static E(Lj6/g0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lj6/g0;->c:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static F(Lj6/g0;Lb0/l1;)Lj6/g0;
    .locals 8

    iget-object v0, p0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    invoke-virtual {v0, p1}, Lj6/h;->p(Lb0/l1;)Lj6/a;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj6/h;

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lj6/h0;->F(Lj6/g0;Lb0/l1;)Lj6/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    :cond_0
    iget-object p1, p0, Lj6/g0;->d:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Lj6/g0;

    iget-object p1, p0, Lj6/g0;->f:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lj6/g0;

    iget-object p1, p0, Lj6/g0;->g:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lb6/i0;

    iget-boolean v5, p0, Lj6/g0;->b:Z

    iget-boolean v6, p0, Lj6/g0;->c:Z

    iget-boolean v7, p0, Lj6/g0;->e:Z

    invoke-direct/range {v1 .. v7}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    return-object v1
.end method

.method public static H(Lj6/g0;Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    :goto_0
    if-eqz p0, :cond_3

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v0, Lb6/i0;

    iget-boolean v1, p0, Lj6/g0;->b:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static I(Lj6/g0;)Lb0/l1;
    .locals 1

    iget-object v0, p0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    iget-object v0, v0, Lj6/h;->m:Lb0/l1;

    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj6/h0;->I(Lj6/g0;)Lb0/l1;

    move-result-object p0

    invoke-static {v0, p0}, Lb0/l1;->u(Lb0/l1;Lb0/l1;)Lb0/l1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static J(Lj6/i;)I
    .locals 2

    iget-object p0, p0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "get"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static K(Lj6/g0;Lb6/i0;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lj6/g0;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v0, Lb6/i0;

    invoke-virtual {p1, v0}, Lb6/i0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs L(I[Lj6/g0;)Lb0/l1;
    .locals 2

    aget-object v0, p1, p0

    invoke-static {v0}, Lj6/h0;->I(Lj6/g0;)Lb0/l1;

    move-result-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    array-length v1, p1

    if-ge p0, v1, :cond_1

    aget-object v1, p1, p0

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lj6/h0;->L(I[Lj6/g0;)Lb0/l1;

    move-result-object p0

    invoke-static {v0, p0}, Lb0/l1;->u(Lb0/l1;Lb0/l1;)Lb0/l1;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final G(Ljava/util/Set;Ljava/util/HashMap;Lj6/g0;)V
    .locals 8

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_9

    iget-object v1, v0, Lj6/g0;->g:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lb6/i0;

    iget-boolean v1, v0, Lj6/g0;->b:Z

    if-eqz v1, :cond_6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj6/h0;

    if-nez v1, :cond_1

    new-instance v2, Lj6/h0;

    iget-boolean v5, p0, Lj6/h0;->m:Z

    iget-object v6, p0, Lj6/h0;->q:Lb6/i0;

    iget-object v3, p0, Lj6/h0;->n:Ld6/m;

    iget-object v4, p0, Lj6/h0;->o:Lb6/d;

    invoke-direct/range {v2 .. v7}, Lj6/h0;-><init>(Ld6/m;Lb6/d;ZLb6/i0;Lb6/i0;)V

    invoke-virtual {p2, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_1
    iget-object v2, p0, Lj6/h0;->r:Lj6/g0;

    if-ne p3, v2, :cond_2

    iget-object v2, v1, Lj6/h0;->r:Lj6/g0;

    invoke-virtual {v0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object v2

    iput-object v2, v1, Lj6/h0;->r:Lj6/g0;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lj6/h0;->t:Lj6/g0;

    if-ne p3, v2, :cond_3

    iget-object v2, v1, Lj6/h0;->t:Lj6/g0;

    invoke-virtual {v0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object v2

    iput-object v2, v1, Lj6/h0;->t:Lj6/g0;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lj6/h0;->u:Lj6/g0;

    if-ne p3, v2, :cond_4

    iget-object v2, v1, Lj6/h0;->u:Lj6/g0;

    invoke-virtual {v0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object v2

    iput-object v2, v1, Lj6/h0;->u:Lj6/g0;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lj6/h0;->s:Lj6/g0;

    if-ne p3, v2, :cond_5

    iget-object v2, v1, Lj6/h0;->s:Lj6/g0;

    invoke-virtual {v0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object v2

    iput-object v2, v1, Lj6/h0;->s:Lj6/g0;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Internal error: mismatched accessors, property: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-boolean v1, v0, Lj6/g0;->c:Z

    if-nez v1, :cond_7

    :goto_2
    iget-object v0, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Conflicting/ambiguous property name definitions (implicit name "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    iget-object p0, p0, Lj6/h0;->p:Lb6/i0;

    if-nez p0, :cond_8

    const-string p0, "[null]"

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    invoke-static {p0}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): found multiple explicit names: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but also implicit accessor: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    return-void
.end method

.method public final M(Lj6/i;Lj6/i;)Lj6/i;
    .locals 6

    iget-object v0, p1, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p2, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p2, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v2, p1, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    move v3, v4

    :cond_3
    if-eq v0, v3, :cond_5

    if-ge v0, v3, :cond_4

    :goto_1
    return-object p2

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    iget-object v0, p0, Lj6/h0;->o:Lb6/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lj6/h0;->n:Ld6/m;

    invoke-virtual {v0, p0, p1, p2}, Lb6/d;->x0(Ld6/m;Lj6/i;Lj6/i;)Lj6/i;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lj6/h0;)V
    .locals 2

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    iget-object v1, p1, Lj6/h0;->r:Lj6/g0;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lj6/g0;->a(Lj6/g0;)Lj6/g0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lj6/h0;->r:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    iget-object v1, p1, Lj6/h0;->s:Lj6/g0;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lj6/g0;->a(Lj6/g0;)Lj6/g0;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lj6/h0;->s:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    iget-object v1, p1, Lj6/h0;->t:Lj6/g0;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Lj6/g0;->a(Lj6/g0;)Lj6/g0;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lj6/h0;->t:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    iget-object p1, p1, Lj6/h0;->u:Lj6/g0;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Lj6/g0;->a(Lj6/g0;)Lj6/g0;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lj6/h0;->u:Lj6/g0;

    return-void
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->D(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->D(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->D(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lj6/h0;->s:Lj6/g0;

    invoke-static {p0}, Lj6/h0;->D(Lj6/g0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final P()Z
    .locals 1

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->E(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->E(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->E(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lj6/h0;->s:Lj6/g0;

    invoke-static {p0}, Lj6/h0;->E(Lj6/g0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final Q(Lj6/f0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj6/h0;->o:Lb6/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lj6/h0;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    invoke-virtual {p1, v0}, Lj6/f0;->a(Lj6/h;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    invoke-virtual {p1, v0}, Lj6/f0;->a(Lj6/h;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    invoke-virtual {p1, v0}, Lj6/f0;->a(Lj6/h;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    iget-object p0, p0, Lj6/h0;->r:Lj6/g0;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    invoke-virtual {p1, p0}, Lj6/f0;->a(Lj6/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lj6/h0;->r:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lj6/h0;->t:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lj6/h0;->u:Lj6/g0;

    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lj6/h0;->s:Lj6/g0;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    if-nez v0, :cond_1

    iget-object p0, p0, Lj6/h0;->r:Lj6/g0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj6/h0;->E(Lj6/g0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Lb6/i0;
    .locals 0

    iget-object p0, p0, Lj6/h0;->p:Lb6/i0;

    return-object p0
.end method

.method public final c()Lb6/h0;
    .locals 13

    iget-object v0, p0, Lj6/h0;->v:Lb6/h0;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lj6/h0;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lj6/h0;->t:Lj6/g0;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lj6/h0;->r:Lj6/g0;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lj6/h0;->s:Lj6/g0;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lj6/h0;->u:Lj6/g0;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lj6/h0;->r:Lj6/g0;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lj6/h0;->t:Lj6/g0;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/h;

    :goto_0
    if-nez v2, :cond_6

    sget-object v0, Lb6/h0;->u:Lb6/h0;

    iput-object v0, p0, Lj6/h0;->v:Lb6/h0;

    goto/16 :goto_9

    :cond_6
    iget-object v3, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {v3, v2}, Lb6/d;->r0(Lj6/h;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2}, Lb6/d;->M(Lj6/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2}, Lb6/d;->R(Lj6/a;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2}, Lb6/d;->L(Lj6/a;)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    sget-object v4, Lb6/h0;->u:Lb6/h0;

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    new-instance v5, Lb6/h0;

    iget-object v6, v4, Lb6/h0;->l:Ljava/lang/Boolean;

    iget-object v8, v4, Lb6/h0;->n:Ljava/lang/Integer;

    iget-object v9, v4, Lb6/h0;->o:Ljava/lang/String;

    iget-object v10, v4, Lb6/h0;->p:Lb6/g0;

    iget-object v11, v4, Lb6/h0;->q:Lr5/b1;

    iget-object v12, v4, Lb6/h0;->r:Lr5/b1;

    invoke-direct/range {v5 .. v12}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    move-object v4, v5

    :goto_1
    iput-object v4, p0, Lj6/h0;->v:Lb6/h0;

    goto :goto_2

    :cond_8
    invoke-static {v4, v7, v5, v6}, Lb6/h0;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lb6/h0;

    move-result-object v4

    iput-object v4, p0, Lj6/h0;->v:Lb6/h0;

    :goto_2
    if-nez v0, :cond_15

    iget-object v0, p0, Lj6/h0;->v:Lb6/h0;

    invoke-virtual {p0}, Lj6/v;->l()Lj6/h;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_a

    invoke-virtual {v3, v2}, Lb6/d;->y(Lj6/h;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lb6/g0;

    invoke-direct {v7, v4, v5}, Lb6/g0;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v7}, Lb6/h0;->b(Lb6/g0;)Lb6/h0;

    move-result-object v0

    :cond_9
    move v7, v5

    goto :goto_3

    :cond_a
    move v7, v6

    :goto_3
    invoke-virtual {v3, v2}, Lb6/d;->c0(Lj6/a;)Lr5/n0;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lr5/n0;->b()Lr5/b1;

    move-result-object v8

    invoke-virtual {v3}, Lr5/n0;->a()Lr5/b1;

    move-result-object v3

    goto :goto_4

    :cond_b
    move-object v3, v1

    move-object v8, v3

    :goto_4
    iget-object v9, p0, Lj6/h0;->n:Ld6/m;

    if-nez v7, :cond_c

    if-eqz v8, :cond_c

    if-nez v3, :cond_e

    :cond_c
    instance-of v10, v2, Lj6/i;

    if-eqz v10, :cond_d

    move-object v10, v2

    check-cast v10, Lj6/i;

    iget-object v11, v10, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v11

    if-lez v11, :cond_d

    invoke-virtual {v10, v5}, Lj6/i;->v(I)Lb6/l;

    move-result-object v2

    iget-object v2, v2, Lb6/l;->o:Ljava/lang/Class;

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Lj6/a;->h()Lb6/l;

    move-result-object v2

    iget-object v2, v2, Lb6/l;->o:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v9, v2}, Ld6/m;->e(Ljava/lang/Class;)Ld6/d;

    :cond_e
    if-nez v7, :cond_10

    if-eqz v8, :cond_10

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    move-object v7, v8

    move-object v8, v3

    goto :goto_8

    :cond_10
    :goto_7
    check-cast v9, Ld6/n;

    iget-object v2, v9, Ld6/n;->r:La6/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lr5/n0;->n:Lr5/n0;

    if-nez v8, :cond_11

    invoke-virtual {v2}, Lr5/n0;->b()Lr5/b1;

    move-result-object v8

    :cond_11
    if-nez v3, :cond_12

    invoke-virtual {v2}, Lr5/n0;->a()Lr5/b1;

    move-result-object v3

    :cond_12
    if-eqz v7, :cond_f

    iget-object v2, v9, Ld6/n;->r:La6/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v4, :cond_f

    new-instance v1, Lb6/g0;

    invoke-direct {v1, v4, v6}, Lb6/g0;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lb6/h0;->b(Lb6/g0;)Lb6/h0;

    move-result-object v0

    goto :goto_6

    :goto_8
    if-nez v7, :cond_13

    if-eqz v8, :cond_14

    :cond_13
    new-instance v1, Lb6/h0;

    iget-object v2, v0, Lb6/h0;->l:Ljava/lang/Boolean;

    iget-object v3, v0, Lb6/h0;->m:Ljava/lang/String;

    iget-object v4, v0, Lb6/h0;->n:Ljava/lang/Integer;

    iget-object v5, v0, Lb6/h0;->o:Ljava/lang/String;

    iget-object v6, v0, Lb6/h0;->p:Lb6/g0;

    invoke-direct/range {v1 .. v8}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    move-object v0, v1

    :cond_14
    iput-object v0, p0, Lj6/h0;->v:Lb6/h0;

    :cond_15
    :goto_9
    iget-object p0, p0, Lj6/h0;->v:Lb6/h0;

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lj6/h0;

    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lj6/h0;->s:Lj6/g0;

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p1, Lj6/h0;->s:Lj6/g0;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lj6/h0;->p()Lj6/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {p0, v0}, Lb6/d;->J(Lj6/a;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj6/h0;->p:Lb6/i0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Lr5/a0;
    .locals 1

    invoke-virtual {p0}, Lj6/v;->l()Lj6/h;

    move-result-object v0

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lb6/d;->P(Lj6/a;)Lr5/a0;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lr5/a0;->p:Lr5/a0;

    :cond_1
    return-object p0
.end method

.method public final i()Lj6/d0;
    .locals 2

    new-instance v0, Lj6/f0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lj6/f0;-><init>(Lj6/h0;I)V

    invoke-virtual {p0, v0}, Lj6/h0;->Q(Lj6/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj6/d0;

    return-object p0
.end method

.method public final j()Lb6/b;
    .locals 3

    iget-object v0, p0, Lj6/h0;->w:Lb6/b;

    sget-object v1, Lj6/h0;->x:Lb6/b;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lj6/f0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lj6/f0;-><init>(Lj6/h0;I)V

    invoke-virtual {p0, v0}, Lj6/h0;->Q(Lj6/f0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/b;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lj6/h0;->w:Lb6/b;

    return-object v0
.end method

.method public final k()[Ljava/lang/Class;
    .locals 2

    new-instance v0, Lj6/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj6/f0;-><init>(Lj6/h0;I)V

    invoke-virtual {p0, v0}, Lj6/h0;->Q(Lj6/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public final m()Lj6/m;
    .locals 3

    iget-object v0, p0, Lj6/h0;->s:Lj6/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lj6/g0;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lj6/m;

    iget-object v2, v2, Lj6/m;->n:Lj6/n;

    instance-of v2, v2, Lj6/d;

    if-eqz v2, :cond_1

    check-cast v1, Lj6/m;

    return-object v1

    :cond_1
    iget-object v0, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-nez v0, :cond_0

    iget-object p0, p0, Lj6/h0;->s:Lj6/g0;

    iget-object p0, p0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast p0, Lj6/m;

    return-object p0
.end method

.method public final n()Lj6/f;
    .locals 6

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v1, Lj6/f;

    iget-object v0, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v2, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/f;

    iget-object v3, v1, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Lj6/f;->n:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lj6/f;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    invoke-virtual {v2}, Lj6/f;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    :goto_1
    move-object v1, v2

    :cond_3
    :goto_2
    iget-object v0, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Multiple fields representing property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lj6/h;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lj6/h;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v1
.end method

.method public final o()Lj6/i;
    .locals 7

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v1, Lj6/g0;

    if-nez v1, :cond_1

    iget-object p0, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast p0, Lj6/i;

    return-object p0

    :cond_1
    :goto_0
    iget-object v2, v0, Lj6/g0;->d:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v3, v1, Lj6/g0;->d:Ljava/lang/Object;

    check-cast v2, Lj6/i;

    iget-object v4, v2, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    check-cast v3, Lj6/i;

    iget-object v5, v3, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lj6/h0;->J(Lj6/i;)I

    move-result v4

    invoke-static {v2}, Lj6/h0;->J(Lj6/i;)I

    move-result v5

    if-eq v4, v5, :cond_5

    if-ge v4, v5, :cond_4

    :goto_1
    move-object v0, v1

    :cond_4
    :goto_2
    iget-object v1, v1, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v1, Lj6/g0;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting getter definitions for property \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lj6/i;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lj6/i;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Lj6/g0;->f()Lj6/g0;

    move-result-object v0

    iput-object v0, p0, Lj6/h0;->t:Lj6/g0;

    check-cast v2, Lj6/i;

    return-object v2
.end method

.method public final p()Lj6/h;
    .locals 1

    iget-boolean v0, p0, Lj6/h0;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj6/v;->l()Lj6/h;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj6/h0;->m()Lj6/m;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj6/h0;->s()Lj6/i;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj6/h0;->n()Lj6/f;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj6/v;->l()Lj6/h;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final q()Lb6/l;
    .locals 1

    iget-boolean v0, p0, Lj6/h0;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj6/h0;->o()Lj6/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj6/h0;->n()Lj6/f;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lt6/p;->E:Lt6/k;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lj6/a;->h()Lb6/l;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lj6/h0;->m()Lj6/m;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj6/h0;->s()Lj6/i;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lj6/i;->v(I)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lj6/h0;->n()Lj6/f;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lj6/h0;->o()Lj6/i;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lt6/p;->E:Lt6/k;

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lj6/a;->h()Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Lj6/h0;->q()Lb6/l;

    move-result-object p0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final s()Lj6/i;
    .locals 7

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v1, Lj6/g0;

    if-nez v1, :cond_1

    iget-object p0, v0, Lj6/g0;->d:Ljava/lang/Object;

    check-cast p0, Lj6/i;

    return-object p0

    :cond_1
    :goto_0
    iget-object v2, v0, Lj6/g0;->d:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v3, v1, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v3, Lj6/g0;

    iget-object v4, v1, Lj6/g0;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lj6/i;

    move-object v6, v4

    check-cast v6, Lj6/i;

    invoke-virtual {p0, v5, v6}, Lj6/h0;->M(Lj6/i;Lj6/i;)Lj6/i;

    move-result-object v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v4, :cond_3

    move-object v0, v1

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v2, v0, Lj6/g0;->d:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lj6/g0;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lj6/i;

    move-object v6, v4

    check-cast v6, Lj6/i;

    invoke-virtual {p0, v5, v6}, Lj6/h0;->M(Lj6/i;Lj6/i;)Lj6/i;

    move-result-object v5

    if-ne v5, v2, :cond_4

    goto :goto_3

    :cond_4
    if-ne v5, v4, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v0, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v2, v3, Lj6/g0;->f:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lj6/g0;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lj6/g0;->f()Lj6/g0;

    move-result-object v0

    iput-object v0, p0, Lj6/h0;->u:Lj6/g0;

    check-cast v2, Lj6/i;

    return-object v2

    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ev/f;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, " vs "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lj6/h0;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Conflicting setter definitions for property \""

    const-string v3, "\": "

    invoke-static {v2, p0, v3, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v0}, Lj6/g0;->f()Lj6/g0;

    move-result-object v0

    iput-object v0, p0, Lj6/h0;->u:Lj6/g0;

    check-cast v2, Lj6/i;

    return-object v2
.end method

.method public final t()Lb6/i0;
    .locals 1

    invoke-virtual {p0}, Lj6/h0;->p()Lj6/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lb6/d;->j0(Lj6/a;)Lb6/i0;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj6/h0;->p:Lb6/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; ctors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/h0;->s:Lj6/g0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/h0;->r:Lj6/g0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/h0;->t:Lj6/g0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/h0;->u:Lj6/g0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lj6/h0;->s:Lj6/g0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lj6/h0;->r:Lj6/g0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Lj6/h0;->u:Lj6/g0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lj6/h0;->r:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->B(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->t:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->B(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/h0;->u:Lj6/g0;

    invoke-static {v0}, Lj6/h0;->B(Lj6/g0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lj6/h0;->s:Lj6/g0;

    invoke-static {p0}, Lj6/h0;->A(Lj6/g0;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final y()Z
    .locals 2

    new-instance v0, Lj6/f0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lj6/f0;-><init>(Lj6/h0;I)V

    invoke-virtual {p0, v0}, Lj6/h0;->Q(Lj6/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z(Ljava/lang/String;)Lj6/v;
    .locals 3

    iget-object v0, p0, Lj6/h0;->p:Lb6/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v1, v0, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lb6/i0;

    iget-object v2, v0, Lb6/i0;->m:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ne v1, v0, :cond_2

    return-object p0

    :cond_2
    new-instance p1, Lj6/h0;

    invoke-direct {p1, p0, v1}, Lj6/h0;-><init>(Lj6/h0;Lb6/i0;)V

    return-object p1
.end method
