.class public final Lmb/i6;
.super Lmb/x;
.source "SourceFile"


# instance fields
.field public final I:Ljava/lang/Class;

.field public final J:Lmb/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lmb/b;)V
    .locals 0

    invoke-direct {p0}, Lmb/x;-><init>()V

    iput-object p1, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    iput-object p2, p0, Lmb/i6;->J:Lmb/b;

    return-void
.end method

.method public static L(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public final C()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    return p0
.end method

.method public final E()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    return p0
.end method

.method public final F()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public final G()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    return p0
.end method

.method public final H()Z
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public final I()Z
    .locals 1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final J(Ljava/lang/Class;)Lmb/x;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lmb/i6;->J:Lmb/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot load class \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\" through the given ClassLoader"

    invoke-static {p1, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading IClass \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K([Ljava/lang/Class;)[Lmb/x;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Lmb/x;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Lmb/i6;->L(I)I

    move-result p0

    return p0
.end method

.method public final f()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final g()[Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final h()[Lmb/f6;
    .locals 5

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lmb/f6;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lmb/f6;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lmb/f6;-><init>(Lmb/i6;Ljava/lang/reflect/Constructor;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final i()[Lmb/s;
    .locals 5

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lmb/s;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lmb/g6;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lmb/g6;-><init>(Lmb/i6;Ljava/lang/reflect/Field;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final l()[Lmb/v;
    .locals 6

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmb/y;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmb/y;-><init>(Lmb/x;I)V

    new-array p0, v1, [Lmb/v;

    aput-object v0, p0, v3

    return-object p0

    :cond_0
    array-length v0, v1

    new-array v2, v0, [Lmb/v;

    :goto_0
    if-ge v3, v0, :cond_1

    new-instance v4, Lmb/h6;

    aget-object v5, v1, v3

    invoke-direct {v4, p0, v5}, Lmb/h6;-><init>(Lmb/i6;Ljava/lang/reflect/Method;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final n()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()[Lmb/r;
    .locals 8

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object p0, Lmb/x;->H:[Lmb/r;

    return-object p0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lmb/r;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lmb/i6;->J:Lmb/b;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    new-instance v5, Lmb/e6;

    invoke-direct {v5, p0, v6, v3, v4}, Lmb/e6;-><init>(Lmb/i6;Lmb/x;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lhb/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not load \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-static {v4, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Lhb/a;

    const-string v1, "Loading annotation type"

    invoke-direct {v0, v1, v5, p0}, Lhb/a;-><init>(Ljava/lang/String;Lhb/c;Ljava/lang/Exception;)V

    throw v0

    :cond_2
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lmb/i6;->I:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const-string v0, "[]"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public final u()[Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmb/x;->m()Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/i6;->I:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object p0

    return-object p0
.end method
