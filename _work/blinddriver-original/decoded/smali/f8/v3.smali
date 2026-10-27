.class public Lf8/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/p3;


# instance fields
.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Comparable;

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld1/c0;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lf8/v3;->n:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    .line 10
    iput-object p3, p0, Lf8/v3;->p:Ljava/lang/Object;

    .line 11
    iput-boolean p4, p0, Lf8/v3;->l:Z

    .line 12
    iput-boolean p5, p0, Lf8/v3;->m:Z

    return-void
.end method

.method public constructor <init>(Ld6/m;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb6/x;->P:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    iput-boolean v0, p0, Lf8/v3;->l:Z

    .line 3
    sget-object v0, Lb6/x;->R:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iput-boolean p1, p0, Lf8/v3;->m:Z

    .line 4
    iput-object p2, p0, Lf8/v3;->p:Ljava/lang/Object;

    .line 5
    const-string p1, "get"

    iput-object p1, p0, Lf8/v3;->n:Ljava/lang/Object;

    .line 6
    const-string p1, "is"

    iput-object p1, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    return-void
.end method

.method public constructor <init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 9

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object v0, p1, Lf8/v2;->u:Lf8/z2;

    iget-object v1, p1, Lf8/v2;->o:Lf8/w2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 15
    iget-object v4, v0, Lf8/z2;->r:[Lf8/v2;

    array-length v5, v4

    if-ne v5, v3, :cond_0

    aget-object v4, v4, v2

    .line 16
    iget-boolean v4, v4, Lf8/v2;->q:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 17
    :goto_1
    iput-boolean v4, p0, Lf8/v3;->l:Z

    .line 18
    invoke-virtual {v1}, Lf8/w2;->h()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v5, v7, :cond_8

    .line 19
    iget-boolean v5, p1, Lf8/v2;->q:Z

    if-nez v5, :cond_8

    .line 20
    invoke-virtual {v1}, Lf8/w2;->h()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 21
    iget-object v1, p1, Lf8/v2;->m:Lf8/q0;

    .line 22
    iget v1, v1, Lf8/q0;->q:I

    if-eq v1, v3, :cond_4

    if-eq v1, v7, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 23
    sget-object v1, Lf8/o0;->m:Lf8/o0;

    move-object v1, v6

    goto :goto_2

    .line 24
    :cond_2
    sget-object v1, Lf8/o0;->o:Lf8/o0;

    goto :goto_2

    .line 25
    :cond_3
    sget-object v1, Lf8/o0;->n:Lf8/o0;

    goto :goto_2

    .line 26
    :cond_4
    sget-object v1, Lf8/o0;->m:Lf8/o0;

    :goto_2
    if-nez v1, :cond_5

    .line 27
    sget-object v1, Lf8/o0;->m:Lf8/o0;

    .line 28
    :cond_5
    sget-object v5, Lf8/o0;->m:Lf8/o0;

    if-ne v1, v5, :cond_6

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    .line 29
    iget-object v0, p1, Lf8/v2;->r:Lf8/u2;

    .line 30
    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    .line 31
    sget-object v1, Lf8/t2;->u:Lf8/t2;

    if-ne v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :cond_8
    :goto_3
    iput-boolean v3, p0, Lf8/v3;->m:Z

    .line 32
    new-instance v0, Lf8/u3;

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, "get"

    invoke-static {v1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {p3, v5, v7}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lf8/u3;->a:Ljava/lang/Object;

    .line 36
    invoke-static {v1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    new-array v8, v2, [Ljava/lang/Class;

    invoke-static {p4, v7, v8}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, v0, Lf8/u3;->b:Ljava/lang/Object;

    .line 38
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 39
    const-string v7, "set"

    .line 40
    invoke-static {v7, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {p4, v7, v5}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v0, Lf8/u3;->c:Ljava/lang/Object;

    .line 42
    const-string v5, "has"

    if-eqz v3, :cond_9

    .line 43
    invoke-static {v5, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    new-array v8, v2, [Ljava/lang/Class;

    invoke-static {p3, v7, v8}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v6

    :goto_4
    iput-object v7, v0, Lf8/u3;->d:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 45
    invoke-static {v5, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    new-array v5, v2, [Ljava/lang/Class;

    .line 47
    invoke-static {p4, v3, v5}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_5

    :cond_a
    move-object v3, v6

    :goto_5
    iput-object v3, v0, Lf8/u3;->e:Ljava/lang/Object;

    .line 48
    const-string v3, "clear"

    .line 49
    invoke-static {v3, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p4, p2, v3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    const-string p2, "Case"

    if-eqz v4, :cond_b

    .line 52
    invoke-static {v1, p5, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    new-array v5, v2, [Ljava/lang/Class;

    .line 54
    invoke-static {p3, v3, v5}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    goto :goto_6

    :cond_b
    move-object p3, v6

    :goto_6
    iput-object p3, v0, Lf8/u3;->f:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 55
    invoke-static {v1, p5, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    new-array p3, v2, [Ljava/lang/Class;

    .line 57
    invoke-static {p4, p2, p3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :cond_c
    iput-object v6, v0, Lf8/u3;->g:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    .line 59
    iget-object p1, v0, Lf8/u3;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lf8/v3;->n:Ljava/lang/Object;

    .line 60
    iput-object v0, p0, Lf8/v3;->p:Ljava/lang/Object;

    return-void
.end method

.method public static f(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v3, v0, p0

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, p1, p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, p0, 0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int p0, v0, p0

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lj6/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lf8/v3;->m:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lj6/i;->h()Lb6/l;

    move-result-object p1

    invoke-virtual {p1}, Lb6/g;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb6/l;->U()Lb6/l;

    move-result-object p1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lf8/v3;->l:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p2}, Lf8/v3;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p2}, Lf8/v3;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Lf8/l3;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast p0, Lf8/u3;

    iget-object p0, p0, Lf8/u3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lf8/v3;->l:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p1}, Lf8/v3;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p1}, Lf8/v3;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Lj6/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p1, p1, Lj6/i;->o:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lf8/v3;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "getCallbacks"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".cglib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "net.sf.cglib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "org.hibernate.repackage.cglib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "org.springframework.cglib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    const-string v1, "getMetaClass"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "groovy.lang"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lf8/v3;->l:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p2}, Lf8/v3;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0, p2}, Lf8/v3;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Lf8/a;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "newBuilderForField() called on a non-Message type."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(Lf8/l3;)Z
    .locals 5

    iget-object v0, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    check-cast v0, Lf8/v2;

    iget-object v1, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast v1, Lf8/u3;

    iget-boolean v2, p0, Lf8/v3;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lf8/v3;->l:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object p0, v1, Lf8/u3;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/b4;

    invoke-interface {p0}, Lf8/b4;->a()I

    move-result p0

    iget-object p1, v0, Lf8/v2;->m:Lf8/q0;

    iget p1, p1, Lf8/q0;->p:I

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lf8/v3;->q(Lf8/l3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_2
    iget-object p0, v1, Lf8/u3;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public l(Lf8/y3;)Z
    .locals 5

    iget-object v0, p0, Lf8/v3;->o:Ljava/lang/Comparable;

    check-cast v0, Lf8/v2;

    iget-object v1, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast v1, Lf8/u3;

    iget-boolean v2, p0, Lf8/v3;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lf8/v3;->l:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object p0, v1, Lf8/u3;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/b4;

    invoke-interface {p0}, Lf8/b4;->a()I

    move-result p0

    iget-object p1, v0, Lf8/v2;->m:Lf8/q0;

    iget p1, p1, Lf8/q0;->p:I

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lf8/v3;->o(Lf8/y3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_2
    iget-object p0, v1, Lf8/u3;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public o(Lf8/y3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast p0, Lf8/u3;

    iget-object p0, p0, Lf8/u3;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public p(Lf8/l3;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addRepeatedField() called on a singular field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lf8/l3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lf8/v3;->p:Ljava/lang/Object;

    check-cast p0, Lf8/u3;

    iget-object p0, p0, Lf8/u3;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
