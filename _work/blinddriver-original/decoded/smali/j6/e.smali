.class public final Lj6/e;
.super Lj6/x;
.source "SourceFile"


# instance fields
.field public final d:Z

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/d;Lj6/c;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lj6/x;-><init>(Lb6/d;)V

    .line 6
    iput-object p2, p0, Lj6/e;->e:Ljava/lang/Object;

    .line 7
    iput-boolean p3, p0, Lj6/e;->d:Z

    return-void
.end method

.method public constructor <init>(Lb6/d;Lt6/p;Lj6/w;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj6/x;-><init>(Lb6/d;)V

    .line 2
    iput-object p2, p0, Lj6/e;->e:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iput-object p3, p0, Lj6/e;->f:Ljava/lang/Object;

    .line 4
    iput-boolean p4, p0, Lj6/e;->d:Z

    return-void
.end method


# virtual methods
.method public e(Lj6/k0;Lb6/l;)Ljava/util/Map;
    .locals 9

    invoke-virtual {p2}, Lb6/l;->V()Lb6/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    new-instance v1, Lg5/s;

    iget-object v2, p0, Lj6/e;->e:Ljava/lang/Object;

    check-cast v2, Lt6/p;

    invoke-virtual {v0}, Lb6/l;->P()Lt6/o;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg5/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lj6/e;->e(Lj6/k0;Lb6/l;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    new-instance v6, Lj6/g;

    invoke-direct {v6, p1, v5}, Lj6/g;-><init>(Lj6/k0;Ljava/lang/reflect/Field;)V

    iget-boolean v7, p0, Lj6/e;->d:Z

    if-eqz v7, :cond_5

    sget-object v7, Lj6/o;->m:Lj6/o;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v7

    iput-object v7, v6, Lj6/g;->c:Lj6/s;

    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_c

    iget-object p1, p0, Lj6/e;->f:Ljava/lang/Object;

    check-cast p1, Lj6/w;

    if-eqz p1, :cond_c

    invoke-interface {p1, p2}, Lj6/w;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lu6/h;->l(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v3

    :cond_7
    if-ge v1, p2, :cond_c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_7

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj6/g;

    if-eqz v7, :cond_b

    iget-object v8, v7, Lj6/g;->c:Lj6/s;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v6

    iput-object v6, v7, Lj6/g;->c:Lj6/s;

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    return-object v0
.end method

.method public f(Lu6/f;Lu6/f;)Lb0/l1;
    .locals 1

    iget-boolean v0, p0, Lj6/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lu6/f;->b:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_0

    iget-object v0, p1, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p1, Lu6/f;->b:[Ljava/lang/annotation/Annotation;

    :cond_0
    invoke-virtual {p0, v0}, Lj6/x;->b([Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p2, Lu6/f;->b:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_1

    iget-object v0, p2, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p2, Lu6/f;->b:[Ljava/lang/annotation/Annotation;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lj6/s;->b()Lb0/l1;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lb0/l1;

    const/16 p1, 0x15

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb0/l1;-><init>(IZ)V

    return-object p0
.end method

.method public g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lb0/l1;
    .locals 5

    iget-boolean v0, p0, Lj6/e;->d:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    new-array v1, v0, [Lb0/l1;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lj6/o;->m:Lj6/o;

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v3

    if-eqz p2, :cond_0

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Lj6/s;->b()Lb0/l1;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    sget-object p0, Lj6/x;->b:[Lb0/l1;

    return-object p0
.end method

.method public h(Ljava/lang/reflect/Method;Lj6/k0;Ljava/lang/reflect/Method;)Lj6/i;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    iget-object v1, p0, Lj6/x;->a:Lb6/d;

    sget-object v2, Lj6/x;->b:[Lb0/l1;

    if-nez v1, :cond_2

    new-instance p0, Lj6/i;

    new-instance p3, Lb0/l1;

    const/16 v1, 0x15

    const/4 v3, 0x0

    invoke-direct {p3, v1, v3}, Lb0/l1;-><init>(IZ)V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-array v2, v0, [Lb0/l1;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v3, Lb0/l1;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lb0/l1;-><init>(IZ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p2, p1, p3, v2}, Lj6/i;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lb0/l1;[Lb0/l1;)V

    return-object p0

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Lj6/i;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj6/x;->b([Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lj6/s;->b()Lb0/l1;

    move-result-object p0

    invoke-direct {v0, p2, p1, p0, v2}, Lj6/i;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lb0/l1;[Lb0/l1;)V

    return-object v0

    :cond_4
    new-instance v0, Lj6/i;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj6/x;->b([Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lj6/x;->a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Lj6/s;->b()Lb0/l1;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez p3, :cond_6

    const/4 p3, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, v2, p3}, Lj6/e;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lb0/l1;

    move-result-object p0

    invoke-direct {v0, p2, p1, v1, p0}, Lj6/i;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lb0/l1;[Lb0/l1;)V

    return-object v0
.end method

.method public i(Lu6/f;Lu6/f;)Lj6/d;
    .locals 9

    iget-object v0, p0, Lj6/e;->e:Ljava/lang/Object;

    check-cast v0, Lj6/c;

    iget v1, p1, Lu6/f;->d:I

    iget-object v2, p1, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    if-gez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    iput v1, p1, Lu6/f;->d:I

    :cond_0
    iget-object v3, p0, Lj6/x;->a:Lb6/d;

    sget-object v4, Lj6/x;->b:[Lb0/l1;

    const/4 v5, 0x0

    if-nez v3, :cond_3

    new-instance p0, Lj6/d;

    new-instance p1, Lb0/l1;

    const/16 p2, 0x15

    invoke-direct {p1, p2, v5}, Lb0/l1;-><init>(IZ)V

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-array v4, v1, [Lb0/l1;

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_2

    new-instance v6, Lb0/l1;

    invoke-direct {v6, p2, v5}, Lb0/l1;-><init>(IZ)V

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, v0, v2, p1, v4}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lj6/d;

    invoke-virtual {p0, p1, p2}, Lj6/e;->f(Lu6/f;Lu6/f;)Lb0/l1;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0, v4}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    return-object v1

    :cond_4
    iget-object v3, p1, Lu6/f;->c:[[Ljava/lang/annotation/Annotation;

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    iput-object v3, p1, Lu6/f;->c:[[Ljava/lang/annotation/Annotation;

    :cond_5
    array-length v4, v3

    const/4 v6, 0x0

    if-eq v1, v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class v7, Ljava/lang/Enum;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    array-length v7, v3

    const/4 v8, 0x2

    add-int/2addr v7, v8

    if-ne v1, v7, :cond_6

    array-length v4, v3

    add-int/2addr v4, v8

    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    array-length v7, v3

    invoke-static {v3, v5, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, v6}, Lj6/e;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lb0/l1;

    move-result-object v6

    :goto_2
    move-object v3, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_7

    array-length v4, v3

    const/4 v7, 0x1

    add-int/2addr v4, v7

    if-ne v1, v4, :cond_7

    array-length v4, v3

    add-int/2addr v4, v7

    new-array v4, v4, [[Ljava/lang/annotation/Annotation;

    array-length v8, v3

    invoke-static {v3, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lj6/x;->c:[Ljava/lang/annotation/Annotation;

    aput-object v3, v4, v5

    invoke-virtual {p0, v4, v6}, Lj6/e;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lb0/l1;

    move-result-object v6

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, p2, Lu6/f;->c:[[Ljava/lang/annotation/Annotation;

    if-nez v1, :cond_b

    iget-object v1, p2, Lu6/f;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iput-object v1, p2, Lu6/f;->c:[[Ljava/lang/annotation/Annotation;

    :cond_b
    move-object v6, v1

    :goto_4
    invoke-virtual {p0, v3, v6}, Lj6/e;->g([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lb0/l1;

    move-result-object v6

    :goto_5
    new-instance v1, Lj6/d;

    invoke-virtual {p0, p1, p2}, Lj6/e;->f(Lu6/f;Lu6/f;)Lb0/l1;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0, v6}, Lj6/d;-><init>(Lj6/k0;Ljava/lang/reflect/Constructor;Lb0/l1;[Lb0/l1;)V

    return-object v1
.end method
