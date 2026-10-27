.class public final Lj6/k;
.super Lj6/x;
.source "SourceFile"


# instance fields
.field public final d:Lj6/w;

.field public final e:Z


# direct methods
.method public constructor <init>(Lb6/d;Lj6/w;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lj6/x;-><init>(Lb6/d;)V

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lj6/k;->d:Lj6/w;

    iput-boolean p3, p0, Lj6/k;->e:Z

    return-void
.end method

.method public static g(Ljava/lang/reflect/Method;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final e(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V
    .locals 5

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj6/k;->f(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    :cond_0
    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p2}, Lu6/h;->n(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_8

    aget-object v1, p2, v0

    invoke-static {v1}, Lj6/k;->g(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lj6/b0;

    invoke-direct {v2, v1}, Lj6/b0;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj6/j;

    if-nez v3, :cond_4

    iget-object v3, p0, Lj6/x;->a:Lb6/d;

    if-nez v3, :cond_3

    sget-object v3, Lj6/o;->m:Lj6/o;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lj6/x;->b([Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v3

    :goto_1
    new-instance v4, Lj6/j;

    invoke-direct {v4, p1, v1, v3}, Lj6/j;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lj6/s;)V

    invoke-interface {p3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lj6/k;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, v3, Lj6/j;->c:Lj6/s;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lj6/x;->c(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v2

    iput-object v2, v3, Lj6/j;->c:Lj6/s;

    :cond_5
    iget-object v2, v3, Lj6/j;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    iput-object v1, v3, Lj6/j;->b:Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v1, v3, Lj6/j;->b:Ljava/lang/reflect/Method;

    iput-object p1, v3, Lj6/j;->a:Lj6/k0;

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public final f(Lj6/k0;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V
    .locals 6

    iget-object v0, p0, Lj6/x;->a:Lb6/d;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-eqz p4, :cond_2

    if-eq p4, p2, :cond_2

    const-class v0, Ljava/lang/Object;

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p4, p2, v0}, Lu6/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p4, v1

    invoke-static {v2}, Lj6/k;->g(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lj6/b0;

    invoke-direct {v3, v2}, Lj6/b0;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p3, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/j;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez v4, :cond_5

    new-instance v4, Lj6/j;

    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Lj6/x;->b([Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v2

    invoke-direct {v4, p1, v5, v2}, Lj6/j;-><init>(Lj6/k0;Ljava/lang/reflect/Method;Lj6/s;)V

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v3, v4, Lj6/j;->c:Lj6/s;

    invoke-virtual {p0, v3, v2}, Lj6/x;->c(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v2

    iput-object v2, v4, Lj6/j;->c:Lj6/s;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method
