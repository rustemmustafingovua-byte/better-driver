.class public final Lj6/d;
.super Lj6/n;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lj6/n;-><init>(Lj6/k0;Lb0/l1;[Lb0/l1;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-class v0, Lj6/d;

    invoke-static {v0, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lj6/d;

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    iget-object p1, p1, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lb6/l;
    .locals 1

    iget-object v0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lj6/h;->l:Lj6/k0;

    invoke-interface {p0, v0}, Lj6/k0;->a(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final k()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot call getValue() on constructor of "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lb0/l1;)Lj6/a;
    .locals 3

    new-instance v0, Lj6/d;

    iget-object v1, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lj6/n;->n:[Lb0/l1;

    iget-object p0, p0, Lj6/h;->l:Lj6/k0;

    invoke-direct {v0, p0, v1, p1, v2}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    return-object v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "s"

    :goto_0
    iget-object p0, p0, Lj6/h;->m:Lb0/l1;

    filled-new-array {v0, v2, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[constructor for %s (%d arg%s), annotations: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .locals 0

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p0

    return p0
.end method

.method public final v(I)Lb6/l;
    .locals 2

    iget-object v0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lj6/h;->l:Lj6/k0;

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Lj6/k0;->a(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final w(I)Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Lj6/d;->o:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method
