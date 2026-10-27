.class public final Ls6/k;
.super Ls6/o0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final o:La6/n;

.field public final p:Ljava/lang/Boolean;

.field public final q:La6/n;


# direct methods
.method public constructor <init>(La6/n;Ljava/lang/Boolean;La6/n;)V
    .locals 1

    iget-object v0, p1, La6/n;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Ls6/k;->o:La6/n;

    iput-object p2, p0, Ls6/k;->p:Ljava/lang/Boolean;

    iput-object p3, p0, Ls6/k;->q:La6/n;

    return-void
.end method

.method public static j(Ljava/lang/Class;Lr5/q;ZLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lr5/p;->t:Lr5/p;

    if-eq p1, v0, :cond_7

    sget-object v0, Lr5/p;->q:Lr5/p;

    if-ne p1, v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object p3, Lr5/p;->p:Lr5/p;

    if-eq p1, p3, :cond_6

    sget-object p3, Lr5/p;->u:Lr5/p;

    if-ne p1, p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr5/p;->a()Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lr5/p;->r:Lr5/p;

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_4

    const-string p2, "class"

    goto :goto_0

    :cond_4
    const-string p2, "property"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported serialization shape ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") for Enum "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", not supported as "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " annotation"

    invoke-static {v0, p2, p0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    :goto_3
    return-object p3
.end method

.method public static k(Ljava/lang/Class;Lb6/p0;Lj6/t;Lr5/q;)Ls6/k;
    .locals 7

    iget-object p2, p2, Lj6/t;->e:Lj6/c;

    invoke-static {p1, p2}, La6/n;->n(Ld6/m;Lj6/c;)La6/n;

    move-result-object v0

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lb6/d;->p(Ld6/m;Lj6/c;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lb6/x;->A:Lb6/x;

    invoke-virtual {p1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    iget-object v3, p1, Ld6/m;->m:Ld6/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lj6/s;->d(Ljava/lang/Object;Z)V

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    sget-object v2, Ld6/k;->n:Ld6/k;

    iget-object v3, p1, Ld6/n;->s:Ld6/i;

    invoke-virtual {v3, v2}, Ld6/i;->a(Ld6/g;)Z

    move-result v2

    iget-object v3, p2, Lj6/c;->m:Ljava/lang/Class;

    sget-object v4, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Enum;

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    if-eqz v4, :cond_6

    array-length v5, v4

    new-array v5, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, v4, v5}, Lb6/d;->q(Ld6/m;Lj6/c;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    :cond_1
    array-length p1, v4

    new-array p1, p1, [Ls5/q;

    const/4 p2, 0x0

    :goto_1
    array-length v1, v4

    if-ge p2, v1, :cond_5

    aget-object v1, v4, p2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    aget-object v6, v5, p2

    if-eqz v6, :cond_3

    move-object v1, v6

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    new-instance v6, Lw5/k;

    invoke-direct {v6, v1}, Lw5/k;-><init>(Ljava/lang/String;)V

    aput-object v6, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    new-instance p2, La6/n;

    invoke-direct {p2, v3, p1}, La6/n;-><init>(Ljava/lang/Class;[Ls5/q;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p3, p1, v1}, Ls6/k;->j(Ljava/lang/Class;Lr5/q;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Ls6/k;

    invoke-direct {p1, v0, p0, p2}, Ls6/k;-><init>(La6/n;Ljava/lang/Boolean;La6/n;)V

    return-object p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No enum constants for class "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 2

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iget-object v1, p0, Ls6/k;->p:Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, v1}, Ls6/k;->j(Ljava/lang/Class;Lr5/q;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ls6/k;

    iget-object v0, p0, Ls6/k;->o:La6/n;

    iget-object p0, p0, Ls6/k;->q:La6/n;

    invoke-direct {p2, v0, p1, p0}, Ls6/k;-><init>(La6/n;Ljava/lang/Boolean;La6/n;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    check-cast p1, Ljava/lang/Enum;

    iget-object v0, p0, Ls6/k;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lb6/q0;->A:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    return-void

    :cond_1
    sget-object v0, Lb6/q0;->z:Lb6/q0;

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Ls6/k;->q:La6/n;

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, [Ls5/q;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ls5/g;->r0(Ls5/q;)V

    return-void

    :cond_2
    iget-object p0, p0, Ls6/k;->o:La6/n;

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, [Ls5/q;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ls5/g;->r0(Ls5/q;)V

    return-void
.end method
