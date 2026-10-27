.class public Lo6/i;
.super Lo6/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final n:Ls5/u;

.field public final o:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lb6/l;Lt6/p;Ljava/util/Collection;Ls5/u;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo6/p;-><init>(Lb6/l;Lt6/p;)V

    iput-object p4, p0, Lo6/i;->n:Ls5/u;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln6/c;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget-object p3, p3, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_2
    iput-object p1, p0, Lo6/i;->o:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "class name used as type id"

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lo6/p;->l:Lt6/p;

    invoke-virtual {p0, p1, v0, v1}, Lo6/i;->f(Ljava/lang/Object;Ljava/lang/Class;Lt6/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo6/p;->l:Lt6/p;

    invoke-virtual {p0, p2, p1, v0}, Lo6/i;->f(Ljava/lang/Object;Ljava/lang/Class;Lt6/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(Lb6/i;Ljava/lang/String;)Lb6/l;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lo6/i;->h(Ljava/lang/String;Lb6/g;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Class;Lt6/p;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Lo6/p;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of p0, p1, Ljava/util/EnumSet;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    check-cast p1, Ljava/util/EnumSet;

    sget-object p0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lu6/g;->e:Lu6/g;

    iget-object v0, p0, Lu6/g;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Ljava/lang/Class;

    :goto_0
    sget-object p1, Lt6/p;->p:Lt6/o;

    invoke-virtual {p3, p2, p0, p1}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    const-class p1, Ljava/util/EnumSet;

    invoke-virtual {p3, p0, p1}, Lt6/p;->f(Lb6/l;Ljava/lang/Class;)Lt6/c;

    move-result-object p0

    invoke-virtual {p0}, Lt6/c;->r0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot figure out type parameter for `EnumSet` (odd JDK platform?), problem: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lu6/g;->c:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of p0, p1, Ljava/util/EnumMap;

    if-eqz p0, :cond_6

    check-cast p1, Ljava/util/EnumMap;

    sget-object p0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Lu6/g;->e:Lu6/g;

    iget-object v0, p0, Lu6/g;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Ljava/lang/Class;

    :goto_1
    sget-object p1, Lt6/p;->p:Lt6/o;

    invoke-virtual {p3, p2, p0, p1}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p3, p2, v0, p1}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p1

    const-class p2, Ljava/util/EnumMap;

    invoke-virtual {p3, p2, p0, p1}, Lt6/p;->j(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/g;

    move-result-object p0

    invoke-virtual {p0}, Lt6/g;->r0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot figure out type parameter for `EnumMap` (odd JDK platform?), problem: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lu6/g;->d:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 p1, 0x24

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_6

    invoke-static {p2}, Lu6/h;->p(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lo6/p;->m:Lb6/l;

    iget-object p1, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->p(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public h(Ljava/lang/String;Lb6/g;)Lb6/l;
    .locals 10

    instance-of v0, p2, Lb6/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lb6/i;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lo6/i;->o:Ljava/util/Set;

    iget-object v3, p0, Lo6/p;->m:Lb6/l;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v4, Lb6/j;->C:Lb6/j;

    invoke-virtual {v0, v4}, Lb6/i;->n0(Lb6/j;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "`DeserializationFeature.FAIL_ON_SUBTYPE_CLASS_NOT_REGISTERED` is enabled and the input class is not registered using `@JsonSubTypes` annotation"

    invoke-virtual {v0, v3, p1, p0}, Lb6/i;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v4, ") denied resolution"

    const-string v5, "Configured `PolymorphicTypeValidator` (of type "

    iget-object p0, p0, Lo6/i;->n:Ls5/u;

    const-string v6, "Not a subtype"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-lez v2, :cond_5

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-virtual {p0}, Ls5/u;->c()I

    move-result v2

    if-eq v2, v7, :cond_4

    invoke-virtual {p2}, Lb6/g;->u()Lt6/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lt6/p;->h(Ljava/lang/String;)Lb6/l;

    move-result-object p0

    iget-object v2, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v3, p1, v6}, Lb6/g;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p1, p0}, Lb6/g;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_5
    invoke-virtual {p2}, Lb6/g;->r()Ld6/m;

    move-result-object v2

    invoke-virtual {p0}, Ls5/u;->c()I

    move-result v9

    if-eq v9, v7, :cond_9

    :try_start_0
    invoke-virtual {p2}, Lb6/g;->u()Lt6/p;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lt6/p;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, p0}, Lb6/l;->g0(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object p2, v2, Ld6/m;->m:Ld6/a;

    iget-object p2, p2, Ld6/a;->l:Lt6/p;

    invoke-virtual {p2, v3, p0, v8}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v3, p1, v6}, Lb6/g;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "problem: ("

    const-string v2, ") "

    invoke-static {v1, v0, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p1, p0}, Lb6/g;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :catch_1
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_8

    if-eqz v0, :cond_8

    iget-object p0, v0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lb6/j;->u:Lb6/j;

    invoke-virtual {v0, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    const-string p0, "no such class found"

    invoke-virtual {v0, v3, p1, p0}, Lb6/i;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p1, p0}, Lb6/g;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0
.end method
