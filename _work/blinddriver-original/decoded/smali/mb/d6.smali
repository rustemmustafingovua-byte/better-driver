.class public final Lmb/d6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/List;


# instance fields
.field public final a:Lmb/j6;

.field public final b:Lg5/i;

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v11, "default"

    const-string v12, "transitive"

    const-string v0, "public"

    const-string v1, "protected"

    const-string v2, "private"

    const-string v3, "static"

    const-string v4, "abstract"

    const-string v5, "final"

    const-string v6, "native"

    const-string v7, "synchronized"

    const-string v8, "transient"

    const-string v9, "volatile"

    const-string v10, "strictfp"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmb/d6;->e:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "protected"

    const-string v2, "private"

    const-string v3, "public"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "abstract"

    const-string v3, "final"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmb/d6;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lmb/j6;)V
    .locals 2

    new-instance v0, Lg5/i;

    invoke-direct {v0, p1}, Lg5/i;-><init>(Lmb/j6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lmb/d6;->d:I

    iput-object p1, p0, Lmb/d6;->a:Lmb/j6;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lmb/j6;->d:Z

    iput-object v0, p0, Lmb/d6;->b:Lg5/i;

    return-void
.end method

.method public static varargs d([Lmb/x3;[Ljava/lang/String;)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    instance-of v7, v6, Lmb/n0;

    if-eqz v7, :cond_0

    check-cast v6, Lmb/n0;

    iget-object v6, v6, Lmb/n0;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "(null)"

    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const-string p0, "(zero length array)"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static s0(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static t0(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final A()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->k()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "^"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-instance v3, Lmb/d1;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->k()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final B()Lmb/y4;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "->"

    invoke-virtual {p0, v0}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmb/d6;->L()Lmb/b3;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmb/d6;->o()Lmb/c1;

    move-result-object p0

    invoke-virtual {p0}, Lmb/c1;->B()Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public final C()Lmb/c1;
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "->"

    invoke-virtual {p0, v0}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmb/d6;->L()Lmb/b3;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmb/d6;->c:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lmb/d6;->o()Lmb/c1;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lmb/d6;->c:Z

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lmb/d6;->c:Z

    throw v1
.end method

.method public final D(Ljava/lang/String;)[Lmb/z5;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v2

    const-string v3, "="

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmb/d6;->e0()Lmb/x0;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    new-instance v6, Lmb/z5;

    invoke-direct {v6, v1, p1, v2, v4}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    invoke-static {p1}, Lmb/d6;->s0(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v2

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lmb/d6;->e0()Lmb/x0;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    new-instance v6, Lmb/z5;

    invoke-direct {v6, v1, p1, v2, v4}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    invoke-static {p1}, Lmb/d6;->s0(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/z5;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/z5;

    return-object p0
.end method

.method public final E()Lmb/q2;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    :cond_0
    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v3

    const-string v4, "default"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1}, Lmb/d6;->F([Lmb/x3;Lmb/s5;[Z)Lmb/p2;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ","

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lmb/q2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lmb/p2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/p2;

    aget-boolean v1, v1, v2

    invoke-direct {v3, p0, v0, v1}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    return-object v3

    :cond_1
    const-string v0, "Modifier \"default\" not allowed on formal parameters"

    invoke-virtual {p0, v0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_2
    const-string v0, "Only the last parameter may have an ellipsis"

    invoke-virtual {p0, v0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final F([Lmb/x3;Lmb/s5;[Z)Lmb/p2;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p3, v0

    :cond_0
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmb/d6;->t0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result p0

    :goto_0
    if-lez p0, :cond_1

    new-instance v1, Lmb/z0;

    invoke-direct {v1, p2}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 p0, p0, -0x1

    move-object p2, v1

    goto :goto_0

    :cond_1
    new-instance p0, Lmb/p2;

    invoke-direct {p0, p3, p1, p2, v0}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    return-object p0
.end method

.method public final G()Lmb/f0;
    .locals 6

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    const-string v1, "static"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v4, "."

    invoke-virtual {p0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lmb/g0;

    invoke-direct {v1, v0, p0}, Lmb/g0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Lmb/h0;

    invoke-direct {v1, v0, p0}, Lmb/h0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {p0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Lmb/i0;

    invoke-direct {v1, v0, p0}, Lmb/i0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, Lmb/j0;

    invoke-direct {v1, v0, p0}, Lmb/j0;-><init>(Lhb/c;[Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-virtual {p0, v3}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final H()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->A()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "|"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-instance v3, Lmb/d1;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->A()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final I(Lmb/y2;)V
    .locals 10

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    :goto_0
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, ";"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v2

    const-string v0, "void"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    move v1, v4

    new-instance v4, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lmb/t4;-><init>(Lhb/c;I)V

    move v6, v5

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    instance-of v0, p1, Lmb/s0;

    if-eqz v0, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object p0

    move-object v2, v1

    invoke-virtual {p1, p0}, Lmb/m0;->k(Lmb/u3;)V

    move-object p0, v2

    goto :goto_0

    :cond_2
    move-object v1, p0

    move p0, v4

    move v6, v5

    const-string v4, "class"

    invoke-virtual {v1, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "default"

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1, v2}, Lmb/d6;->b([Lmb/x3;)V

    invoke-virtual {v1, v2, p0}, Lmb/d6;->u([Lmb/x3;I)Lmb/b4;

    move-result-object p0

    check-cast p0, Lmb/t3;

    invoke-virtual {p1, p0}, Lmb/m0;->w(Lmb/t3;)V

    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_3
    const-string p0, "Modifier \"default\" not allowed on member class declaration"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_4
    const-string v4, "enum"

    invoke-virtual {v1, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v2}, Lmb/d6;->b([Lmb/x3;)V

    invoke-virtual {v1, v2, p0}, Lmb/d6;->u([Lmb/x3;I)Lmb/b4;

    move-result-object p0

    check-cast p0, Lmb/t3;

    invoke-virtual {p1, p0}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_2

    :cond_5
    const-string p0, "Modifier \"default\" not allowed on member enum declaration"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_6
    const-string v4, "interface"

    invoke-virtual {v1, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v1, v2}, Lmb/d6;->e([Lmb/x3;)V

    invoke-virtual {v1, v2, v3}, Lmb/d6;->J([Lmb/x3;I)Lmb/y2;

    move-result-object p0

    check-cast p0, Lmb/t3;

    invoke-virtual {p1, p0}, Lmb/m0;->w(Lmb/t3;)V

    goto :goto_2

    :cond_7
    const-string p0, "Modifier \"default\" not allowed on member interface declaration"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_8
    const-string v7, "@"

    invoke-virtual {v1, v7}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1, v4}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v1}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v1, v2}, Lmb/d6;->e([Lmb/x3;)V

    invoke-virtual {v1, v2, v3}, Lmb/d6;->J([Lmb/x3;I)Lmb/y2;

    move-result-object p0

    check-cast p0, Lmb/t3;

    invoke-virtual {p1, p0}, Lmb/m0;->w(Lmb/t3;)V

    goto/16 :goto_2

    :cond_9
    const-string p0, "Modifier \"default\" not allowed on member annotation type declaration"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_a
    move v4, v3

    invoke-virtual {v1}, Lmb/d6;->b0()[Lmb/w5;

    move-result-object v3

    invoke-virtual {v1, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-virtual {v1, p0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    move v7, v4

    new-instance v4, Lmb/t4;

    invoke-direct {v4, v0, v7}, Lmb/t4;-><init>(Lhb/c;I)V

    instance-of v0, p1, Lmb/s0;

    if-eqz v0, :cond_b

    move v7, v6

    goto :goto_3

    :cond_b
    move v7, p0

    :goto_3
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmb/m0;->k(Lmb/u3;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v1}, Lmb/d6;->X()Lmb/s5;

    move-result-object v4

    move-object v0, v5

    invoke-virtual {v1, p0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v1, v8}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "static"

    if-eqz v8, :cond_11

    iget v0, v1, Lmb/d6;->d:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_d

    const/16 v0, 0xb

    iput v0, v1, Lmb/d6;->d:I

    :cond_d
    iget v0, v1, Lmb/d6;->d:I

    const/16 v7, 0x8

    if-ge v0, v7, :cond_f

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    const-string p0, "Static interface methods only available for source version 8+"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_f
    :goto_4
    instance-of v0, p1, Lmb/s0;

    if-eqz v0, :cond_10

    move v7, v6

    goto :goto_5

    :cond_10
    move v7, p0

    :goto_5
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmb/m0;->k(Lmb/u3;)V

    goto/16 :goto_2

    :cond_11
    if-nez v3, :cond_13

    invoke-virtual {v1}, Lmb/d6;->g()Lhb/c;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    new-instance p0, Lmb/k2;

    const-string v0, "public"

    const-string v3, "final"

    filled-new-array {v0, v9, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lmb/d6;->D(Ljava/lang/String;)[Lmb/z5;

    move-result-object v0

    invoke-direct {p0, v7, v2, v4, v0}, Lmb/k2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {p1, p0}, Lmb/y2;->x(Lmb/k2;)V

    goto/16 :goto_2

    :cond_12
    const-string p0, "Modifier \"default\" not allowed for constants"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_13
    const-string p0, "Type parameters not allowed with constant declaration"

    invoke-virtual {v1, p0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_14
    return-void
.end method

.method public final J([Lmb/x3;I)Lmb/y2;
    .locals 7

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmb/d6;->r0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->b0()[Lmb/w5;

    move-result-object v4

    const/4 v2, 0x0

    new-array v2, v2, [Lmb/v4;

    const-string v5, "extends"

    invoke-virtual {p0, v5}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lmb/d6;->S()[Lmb/v4;

    move-result-object v2

    :cond_0
    move-object v5, v2

    if-ne p2, v0, :cond_1

    new-instance v0, Lmb/o4;

    const-string p2, "abstract"

    const-string v2, "strictfp"

    const-string v6, "public"

    filled-new-array {v6, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    new-instance v0, Lmb/s3;

    invoke-virtual {p0, v2}, Lmb/d6;->e([Lmb/x3;)V

    invoke-direct/range {v0 .. v5}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    :goto_0
    invoke-virtual {p0, v0}, Lmb/d6;->I(Lmb/y2;)V

    return-object v0

    :cond_2
    new-instance p0, Lhb/b;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const-string p1, "null"

    goto :goto_1

    :cond_3
    const-string p1, "COMPILATION_UNIT"

    goto :goto_1

    :cond_4
    const-string p1, "NAMED_TYPE_DECLARATION"

    :goto_1
    const-string p2, "SNO: Interface declaration in unexpected context "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final K()Lm2/j;
    .locals 2

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lm2/j;

    invoke-virtual {p0}, Lmb/d6;->p()Lmb/e1;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lm2/j;

    invoke-virtual {p0}, Lmb/d6;->B()Lmb/y4;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final L()Lmb/b3;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->l0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmb/s2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lm2/j;

    new-instance v0, Lmb/q2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lmb/q2;-><init>(Lhb/c;)V

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/d6;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ","

    invoke-virtual {p0, v2}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v1, Lm2/j;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lmb/d6;->E()Lmb/q2;

    move-result-object v1

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lm2/j;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {p0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->K()Lm2/j;

    move-result-object p0

    new-instance v2, Lmb/b3;

    invoke-direct {v2, v0, v1, p0}, Lmb/b3;-><init>(Lhb/c;Lmb/c3;Lm2/j;)V

    return-object v2
.end method

.method public final M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    move/from16 v2, p6

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    iget v4, v0, Lmb/d6;->d:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    const/16 v4, 0xb

    iput v4, v0, Lmb/d6;->d:I

    :cond_0
    iget v4, v0, Lmb/d6;->d:I

    const/16 v6, 0x8

    const-string v7, "default"

    if-ge v4, v6, :cond_2

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Default interface methods only available for source version 8+"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const-string v6, "("

    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    const-string v6, ")"

    invoke-virtual {v0, v6}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v6, Lmb/q2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v8

    invoke-direct {v6, v8}, Lmb/q2;-><init>(Lhb/c;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lmb/d6;->E()Lmb/q2;

    move-result-object v8

    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    move-object v6, v8

    :goto_3
    invoke-virtual {v0}, Lmb/d6;->r()I

    move-result v8

    move v9, v8

    move-object/from16 v8, p3

    :goto_4
    if-lez v9, :cond_7

    new-instance v10, Lmb/z0;

    invoke-direct {v10, v8}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v9, v9, -0x1

    move-object v8, v10

    goto :goto_4

    :cond_7
    const-string v9, "throws"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lmb/d6;->S()[Lmb/v4;

    move-result-object v4

    goto :goto_5

    :cond_8
    new-array v4, v4, [Lmb/v4;

    :goto_5
    const/4 v9, 0x0

    if-eqz p5, :cond_9

    invoke-virtual {v0, v7}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Lmb/d6;->x()Lmb/z1;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v9

    :goto_6
    const-string v10, ";"

    invoke-virtual {v0, v10}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "abstract"

    if-eqz v10, :cond_a

    goto :goto_7

    :cond_a
    const-string v9, "native"

    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "{"

    invoke-virtual {v0, v9}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v0, v10}, Lmb/d6;->q0(Ljava/lang/String;)V

    :goto_7
    new-instance v10, Lmb/u3;

    const/4 v12, 0x3

    if-ne v2, v12, :cond_b

    const-string v2, "public"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    :goto_8
    move-object v0, v7

    move-object v7, v4

    move-object v4, v8

    move-object v8, v0

    move-object v2, v1

    :goto_9
    move-object v1, v3

    move-object v0, v10

    move-object/from16 v3, p2

    goto :goto_a

    :cond_b
    const/4 v11, 0x1

    if-ne v2, v11, :cond_c

    invoke-virtual/range {p0 .. p1}, Lmb/d6;->h([Lmb/x3;)V

    goto :goto_8

    :cond_c
    const/4 v12, 0x2

    if-ne v2, v12, :cond_d

    const-string v17, "static"

    const-string v18, "strictfp"

    const-string v13, "public"

    const-string v14, "private"

    const-string v15, "abstract"

    const-string v16, "default"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    new-array v0, v11, [Lmb/x3;

    move-object v1, v7

    move-object v7, v4

    move-object v4, v8

    move-object v8, v1

    move-object v2, v0

    goto :goto_9

    :goto_a
    invoke-direct/range {v0 .. v9}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    return-object v0

    :cond_e
    const-string v1, "Abstract or native method must not have a body"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0
.end method

.method public final N()[Lmb/x3;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v1}, Lg5/i;->A()Lmb/q6;

    move-result-object v1

    iget-object v1, v1, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "interface"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmb/d6;->l()Lmb/d0;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v1, Lmb/d6;->e:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmb/d6;->k0([Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lmb/n0;

    aget-object v1, v1, v3

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/x3;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/x3;

    return-object p0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final O()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "/"

    const-string v2, "%"

    const-string v3, "*"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lmb/d1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    iget-object v3, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v3}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final P([Lmb/x3;)Lmb/p4;
    .locals 6

    const-string v0, "@"

    const-string v1, "class"

    const-string v2, "enum"

    const-string v3, "interface"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-virtual {p0, v2}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmb/d6;->r0(Ljava/lang/String;)V

    new-instance v2, Lmb/l4;

    const-string v3, "abstract"

    const-string v4, "strictfp"

    const-string v5, "public"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-direct {v2, v0, p1, v1}, Lmb/l4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lmb/d6;->I(Lmb/y2;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {p0, p1, v2}, Lmb/d6;->J([Lmb/x3;I)Lmb/y2;

    move-result-object p0

    check-cast p0, Lmb/o4;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {p0, p1, v1}, Lmb/d6;->y([Lmb/x3;I)Lmb/f2;

    move-result-object p0

    check-cast p0, Lmb/n4;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {p0, p1, v1}, Lmb/d6;->u([Lmb/x3;I)Lmb/b4;

    move-result-object p0

    check-cast p0, Lmb/m4;

    return-object p0
.end method

.method public final Q()[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v2}, Lg5/i;->A()Lmb/q6;

    move-result-object v2

    iget v2, v2, Lmb/q6;->d:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final R()Lmb/v4;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmb/d6;->l()Lmb/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lmb/v4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmb/r0;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/r0;

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmb/d6;->Z()[Lmb/t5;

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    return-object v1
.end method

.method public final S()[Lmb/v4;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/v4;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/v4;

    return-object p0
.end method

.method public final T()Lmb/c1;
    .locals 8

    invoke-virtual {p0}, Lmb/d6;->V()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "instanceof"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    new-instance v2, Lmb/w2;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lmb/w2;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v1, "<="

    const-string v2, ">="

    const-string v3, "<"

    const-string v4, ">"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-boolean v1, p0, Lmb/d6;->c:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Lmb/p0;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?"

    invoke-virtual {p0, v1}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmb/v4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-array v3, v5, [Lmb/r0;

    check-cast v0, Lmb/p0;

    iget-object v0, v0, Lmb/p0;->f:[Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->Z()[Lmb/t5;

    move-result-object p0

    invoke-direct {v1, v2, v3, v0, p0}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v1}, Lg5/i;->C()Lmb/q6;

    move-result-object v1

    iget-object v1, v1, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->V()Lmb/c1;

    move-result-object v6

    iget-boolean v7, p0, Lmb/d6;->c:Z

    if-eqz v7, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, ","

    filled-new-array {v3, v4, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_5

    instance-of v2, v0, Lmb/p0;

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lmb/c1;->C()Lmb/s5;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v0, Lmb/p0;

    iget-object v0, v0, Lmb/p0;->f:[Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->Z()[Lmb/t5;

    invoke-virtual {v6}, Lmb/c1;->D()Lmb/s5;

    move-result-object v1

    instance-of v2, v1, Lmb/z0;

    if-eqz v2, :cond_2

    check-cast v1, Lmb/z0;

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lmb/v4;

    if-eqz v2, :cond_4

    check-cast v1, Lmb/v4;

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lmb/d6;->Y()Lmb/t5;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v1, Lmb/v4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object p0

    new-array v3, v5, [Lmb/r0;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lmb/t5;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmb/t5;

    invoke-direct {v1, p0, v3, v0, v2}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid type argument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_5
    new-instance v2, Lmb/d1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {v6}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    goto/16 :goto_1

    :cond_6
    return-object v0
.end method

.method public final U()Lmb/p5;
    .locals 8

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v1

    invoke-virtual {p0}, Lmb/d6;->C()Lmb/c1;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x2

    if-gtz v3, :cond_2

    invoke-virtual {p0, v4}, Lmb/d6;->g0(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lmb/c1;->B()Lmb/y4;

    move-result-object v1

    instance-of v2, v1, Lmb/i2;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rvalue "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disallowed as a resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    :cond_1
    new-instance p0, Lmb/q5;

    invoke-direct {p0, v0, v1}, Lmb/q5;-><init>(Lhb/c;Lmb/y4;)V

    return-object p0

    :cond_2
    :goto_0
    const-string v3, "default"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lmb/o5;

    const-string v5, "final"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    invoke-virtual {p0, v4}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v5

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v6

    const-string v7, "="

    invoke-virtual {p0, v7}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lmb/d6;->e0()Lmb/x0;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance v7, Lmb/z5;

    invoke-direct {v7, v5, v4, v6, p0}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    invoke-direct {v3, v0, v1, v2, v7}, Lmb/o5;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Lmb/z5;)V

    return-object v3

    :cond_4
    const-string v0, "Modifier \"default\" not allowed on resource"

    invoke-virtual {p0, v0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final V()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->j()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, ">>"

    const-string v2, ">>>"

    const-string v3, "<<"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lmb/d1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    iget-object v3, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v3}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->j()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final W()Lmb/e5;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmb/d6;->g0(I)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v2, Lmb/a3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lmb/a3;-><init>(Lhb/c;Ljava/lang/String;Lmb/e5;)V

    return-object v2

    :cond_0
    const-string v2, "{"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "if"

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, ")"

    const-string v8, "("

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v3

    const-string v4, "else"

    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v6

    :cond_2
    new-instance v0, Lmb/t2;

    invoke-direct {v0, v1, v2, v3, v6}, Lmb/t2;-><init>(Lhb/c;Lmb/y4;Lmb/f1;Lmb/f1;)V

    return-object v0

    :cond_3
    const-string v4, "for"

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    const-string v9, "final"

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-string v12, ";"

    if-eqz v5, :cond_f

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v14

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ","

    if-nez v2, :cond_b

    const-string v23, "double"

    const-string v24, "boolean"

    const-string v15, "final"

    const-string v16, "@"

    const-string v17, "byte"

    const-string v18, "short"

    const-string v19, "char"

    const-string v20, "int"

    const-string v21, "long"

    const-string v22, "float"

    filled-new-array/range {v15 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v2

    if-eq v2, v10, :cond_5

    invoke-virtual {v0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v2

    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v5

    invoke-virtual {v0, v1}, Lmb/d6;->g0(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v3}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v4

    invoke-virtual {v0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v3

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v6, Lmb/n2;

    new-instance v7, Lmb/p2;

    invoke-direct {v7, v4, v2, v5, v1}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v0

    invoke-direct {v6, v14, v7, v3, v0}, Lmb/n2;-><init>(Lhb/c;Lmb/p2;Lmb/y4;Lmb/f1;)V

    return-object v6

    :cond_4
    new-instance v1, Lmb/i3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->d0()[Lmb/z5;

    move-result-object v8

    invoke-direct {v1, v3, v2, v5, v8}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    :goto_0
    move-object v15, v1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, Lmb/d6;->C()Lmb/c1;

    move-result-object v2

    invoke-virtual {v0, v1}, Lmb/d6;->g0(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v4

    invoke-virtual {v0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v3

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v5, Lmb/n2;

    new-instance v6, Lmb/p2;

    new-array v7, v11, [Lmb/x3;

    invoke-virtual {v2}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    invoke-direct {v6, v4, v7, v2, v1}, Lmb/p2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v0

    invoke-direct {v5, v14, v6, v3, v0}, Lmb/n2;-><init>(Lhb/c;Lmb/p2;Lmb/y4;Lmb/f1;)V

    return-object v5

    :cond_6
    new-instance v1, Lmb/i3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    new-array v5, v11, [Lmb/x3;

    invoke-virtual {v2}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    invoke-virtual {v0}, Lmb/d6;->d0()[Lmb/z5;

    move-result-object v8

    invoke-direct {v1, v3, v5, v2, v8}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lmb/h2;

    invoke-virtual {v2}, Lmb/c1;->B()Lmb/y4;

    move-result-object v2

    invoke-direct {v1, v2}, Lmb/h2;-><init>(Lmb/y4;)V

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lmb/h2;

    invoke-virtual {v2}, Lmb/c1;->B()Lmb/y4;

    move-result-object v5

    invoke-direct {v3, v5}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v3, Lmb/h2;

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v5

    invoke-direct {v3, v5}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lmb/e1;

    iget-object v2, v2, Lmb/m3;->a:Lhb/c;

    invoke-direct {v3, v2}, Lmb/e1;-><init>(Lhb/c;)V

    iget-object v2, v3, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v11, v2, :cond_a

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v11, 0x1

    check-cast v5, Lmb/f1;

    invoke-interface {v5, v3}, Lmb/f1;->a(Lmb/a5;)V

    goto :goto_1

    :cond_a
    move-object v15, v3

    goto :goto_2

    :cond_b
    move-object v15, v6

    :goto_2
    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v16, v6

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_3
    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmb/y4;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Lmb/y4;

    :cond_e
    move-object/from16 v17, v6

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v13, Lmb/o2;

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v18

    invoke-direct/range {v13 .. v18}, Lmb/o2;-><init>(Lhb/c;Lmb/f1;Lmb/y4;[Lmb/y4;Lmb/f1;)V

    return-object v13

    :cond_f
    const-string v4, "while"

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v3, Lmb/a6;

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v0

    invoke-direct {v3, v1, v0, v2}, Lmb/a6;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v3

    :cond_10
    const-string v5, "do"

    invoke-virtual {v0, v5}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v0, v5}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v2

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v3

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/x1;

    invoke-direct {v0, v1, v2, v3}, Lmb/x1;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v0

    :cond_11
    const-string v4, "try"

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    const/4 v13, 0x1

    if-eqz v5, :cond_1b

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lmb/d6;->U()Lmb/p5;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    filled-new-array {v12, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_13

    if-ne v3, v13, :cond_12

    goto :goto_5

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    invoke-virtual {v0, v7}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v0}, Lmb/d6;->U()Lmb/p5;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_15
    :goto_5
    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v17

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    const-string v4, "catch"

    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v4

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    const-string v11, "|"

    invoke-virtual {v0, v11}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v11

    invoke-virtual {v0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmb/d6;->t0(Ljava/lang/String;)V

    new-instance v13, Lmb/m1;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lmb/v4;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lmb/v4;

    invoke-direct {v13, v11, v5, v10, v12}, Lmb/m1;-><init>(Lhb/c;Z[Lmb/s5;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v5, Lmb/l1;

    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v10

    invoke-direct {v5, v4, v13, v10}, Lmb/l1;-><init>(Lhb/c;Lmb/m1;Lmb/f1;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    const-string v1, "finally"

    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v6

    :cond_18
    move-object/from16 v19, v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v19, :cond_19

    goto :goto_8

    :cond_19
    const-string v1, "\"try\" statement must have at least one resource, \"catch\" clause or \"finally\" clause"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_1a
    :goto_8
    new-instance v14, Lmb/r5;

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v14 .. v19}, Lmb/r5;-><init>(Lhb/c;Ljava/util/List;Lmb/f1;Ljava/util/List;Lmb/e1;)V

    return-object v14

    :cond_1b
    const-string v4, "switch"

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v4

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    const-string v5, "}"

    invoke-virtual {v0, v5}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v11

    :cond_1c
    const-string v8, "case"

    invoke-virtual {v0, v8}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "default"

    if-eqz v9, :cond_1d

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1d
    invoke-virtual {v0, v12}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    if-nez v7, :cond_1e

    move v7, v13

    :goto_a
    invoke-virtual {v0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_1c

    new-instance v8, Lmb/j5;

    invoke-virtual {v0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v8, v5, v6, v7, v9}, Lmb/j5;-><init>(Lhb/c;Ljava/util/List;ZLjava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    const-string v1, "Duplicate \"default\" label"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_1f
    const-string v1, "\"case\" or \"default\" expected"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_20
    new-instance v0, Lmb/k5;

    invoke-direct {v0, v1, v4, v2}, Lmb/k5;-><init>(Lhb/c;Lmb/y4;Ljava/util/List;)V

    return-object v0

    :cond_21
    const-string v2, "synchronized"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v8}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v7}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v3, Lmb/l5;

    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v0

    invoke-direct {v3, v1, v0, v2}, Lmb/l5;-><init>(Lhb/c;Lmb/f1;Lmb/y4;)V

    return-object v3

    :cond_22
    const-string v2, "return"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v12}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_b

    :cond_23
    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v6

    :goto_b
    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/w4;

    invoke-direct {v0, v1, v6}, Lmb/w4;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0

    :cond_24
    const-string v2, "throw"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/n5;

    invoke-direct {v0, v1, v2}, Lmb/n5;-><init>(Lhb/c;Lmb/y4;)V

    return-object v0

    :cond_25
    const-string v2, "break"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0, v1}, Lmb/d6;->g0(I)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v6

    :cond_26
    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/i1;

    invoke-direct {v0, v2, v6}, Lmb/i1;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object v0

    :cond_27
    const-string v1, "continue"

    invoke-virtual {v0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->l0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/v1;

    invoke-direct {v0, v1, v2}, Lmb/v1;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object v0

    :cond_28
    const-string v1, "assert"

    invoke-virtual {v0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v6

    :cond_29
    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/a1;

    invoke-direct {v0, v1, v2, v6}, Lmb/a1;-><init>(Lhb/c;Lmb/y4;Lmb/y4;)V

    return-object v0

    :cond_2a
    invoke-virtual {v0, v12}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    new-instance v1, Lmb/c2;

    invoke-direct {v1, v0}, Lmb/m3;-><init>(Lhb/c;)V

    return-object v1

    :cond_2b
    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v1

    invoke-virtual {v0, v12}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/h2;

    invoke-direct {v0, v1}, Lmb/h2;-><init>(Lmb/y4;)V

    return-object v0
.end method

.method public final X()Lmb/s5;
    .locals 8

    const-string v6, "double"

    const-string v7, "boolean"

    const-string v0, "byte"

    const-string v1, "short"

    const-string v2, "char"

    const-string v3, "int"

    const-string v4, "long"

    const-string v5, "float"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->k0([Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lmb/t4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lmb/t4;-><init>(Lhb/c;I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result p0

    :goto_1
    if-lez p0, :cond_0

    new-instance v1, Lmb/z0;

    invoke-direct {v1, v0}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 p0, p0, -0x1

    move-object v0, v1

    goto :goto_1

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y()Lmb/t5;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "extends"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmb/b6;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/b6;-><init>(ILmb/v4;)V

    return-object v0

    :cond_0
    const-string v0, "super"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmb/b6;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lmb/b6;-><init>(ILmb/v4;)V

    return-object v0

    :cond_1
    new-instance p0, Lmb/b6;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmb/b6;-><init>(ILmb/v4;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v1

    :goto_0
    if-lez v1, :cond_3

    new-instance v2, Lmb/z0;

    invoke-direct {v2, v0}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v1, v1, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lmb/t5;

    if-eqz v1, :cond_4

    check-cast v0, Lmb/t5;

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not a valid type argument"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final Z()[Lmb/t5;
    .locals 4

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/t5;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->Y()Lmb/t5;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, ","

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lmb/d6;->Y()Lmb/t5;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/t5;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/t5;

    return-object p0
.end method

.method public final varargs a([Lmb/x3;[Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " "

    if-ge v3, v1, :cond_4

    aget-object v5, p1, v3

    instance-of v6, v5, Lmb/n0;

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    check-cast v5, Lmb/n0;

    iget-object v6, v5, Lmb/m3;->a:Lhb/c;

    iget-object v5, v5, Lmb/n0;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v5, Lmb/d6;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v7

    const/4 v9, 0x1

    if-gt v7, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Only one of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0}, Lmb/d6;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, " is allowed"

    invoke-static {p1, p0, p2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lhb/a;

    invoke-direct {p1, v6, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Duplication access modifier \""

    const-string p1, "\""

    invoke-static {p0, v5, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lhb/a;

    invoke-direct {p1, v6, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p1

    :cond_4
    array-length p1, p2

    :goto_3
    if-ge v2, p1, :cond_5

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Access modifier(s) "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1}, Lmb/d6;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in this context"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final a0()Lmb/w5;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extends"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "&"

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    goto :goto_0

    :cond_0
    new-instance p0, Lmb/w5;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmb/v4;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/v4;

    invoke-direct {p0, v0, v1}, Lmb/w5;-><init>(Ljava/lang/String;[Lmb/v4;)V

    return-object p0

    :cond_1
    new-instance p0, Lmb/w5;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmb/w5;-><init>(Ljava/lang/String;[Lmb/v4;)V

    return-object p0
.end method

.method public final b([Lmb/x3;)V
    .locals 7

    const-string v5, "final"

    const-string v6, "strictfp"

    const-string v0, "public"

    const-string v1, "protected"

    const-string v2, "private"

    const-string v3, "abstract"

    const-string v4, "static"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    return-void
.end method

.method public final b0()[Lmb/w5;
    .locals 3

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->a0()Lmb/w5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v1, ","

    const-string v2, ">"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lmb/d6;->a0()Lmb/w5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/w5;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/w5;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lhb/a;
    .locals 1

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object p0

    new-instance v0, Lhb/a;

    invoke-direct {v0, p0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c0()Lmb/c1;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "++"

    const-string v2, "--"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lmb/d6;->b:Lg5/i;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    new-instance v1, Lmb/w1;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v4}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c1;->z()Lmb/n3;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lmb/w1;-><init>(Lhb/c;Ljava/lang/String;Lmb/n3;)V

    return-object v1

    :cond_0
    const-string v3, "+"

    const-string v6, "-"

    const-string v7, "~"

    const-string v8, "!"

    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_1

    new-instance v1, Lmb/x5;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v4}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lmb/x5;-><init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V

    return-object v1

    :cond_1
    const-string v3, "("

    invoke-virtual {v0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v6

    const-string v10, "{"

    const-string v12, "class"

    const-string v13, "this"

    const-string v14, "super"

    const-string v15, "]"

    const/16 v16, 0x0

    const-string v11, "."

    const-string v9, "["

    const-string v5, "new"

    if-eqz v6, :cond_11

    const-string v24, "float"

    const-string v25, "double"

    const-string v18, "boolean"

    const-string v19, "char"

    const-string v20, "byte"

    const-string v21, "short"

    const-string v22, "int"

    const-string v23, "long"

    filled-new-array/range {v18 .. v25}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v6

    move-object/from16 v18, v4

    const-string v4, ")"

    move-object/from16 v19, v1

    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    invoke-virtual/range {v18 .. v18}, Lg5/i;->A()Lmb/q6;

    move-result-object v1

    iget v1, v1, Lmb/q6;->d:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->r()I

    move-result v6

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    move/from16 v4, v16

    :goto_0
    if-ge v4, v6, :cond_3

    new-instance v7, Lmb/z0;

    invoke-direct {v7, v1}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v4, v4, 0x1

    move-object v1, v7

    goto :goto_0

    :cond_3
    new-instance v4, Lmb/k1;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-virtual {v0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v7

    invoke-virtual {v7}, Lmb/c1;->B()Lmb/y4;

    move-result-object v7

    invoke-direct {v4, v6, v7, v1}, Lmb/k1;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    move-object/from16 v20, v2

    :goto_1
    move-object v6, v11

    move-object v7, v12

    move-object v11, v10

    goto/16 :goto_14

    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "->"

    if-eqz v1, :cond_5

    new-instance v1, Lm2/j;

    new-instance v4, Lmb/q2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v7

    invoke-direct {v4, v7}, Lmb/q2;-><init>(Lhb/c;)V

    const/4 v7, 0x3

    invoke-direct {v1, v7, v4}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v4

    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v6, Lmb/b3;

    invoke-virtual {v0}, Lmb/d6;->K()Lm2/j;

    move-result-object v7

    invoke-direct {v6, v4, v1, v7}, Lmb/b3;-><init>(Lhb/c;Lmb/c3;Lm2/j;)V

    move-object/from16 v20, v2

    move-object v4, v6

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmb/d6;->g0(I)Z

    move-result v20

    const-string v1, ","

    if-eqz v20, :cond_7

    invoke-virtual {v0, v1}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v0, v4}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_6
    move-object/from16 v20, v2

    goto :goto_3

    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    goto/16 :goto_6

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v10

    move-object/from16 v22, v12

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v10

    invoke-virtual {v0, v4}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0, v6}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    new-instance v4, Lmb/b3;

    new-instance v1, Lm2/j;

    const/4 v6, 0x4

    invoke-direct {v1, v6, v2}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lmb/d6;->K()Lm2/j;

    move-result-object v2

    invoke-direct {v4, v10, v1, v2}, Lmb/b3;-><init>(Lhb/c;Lmb/c3;Lm2/j;)V

    move-object v6, v11

    move-object/from16 v11, v21

    move-object/from16 v7, v22

    goto/16 :goto_14

    :cond_9
    array-length v12, v2

    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-ne v12, v2, :cond_a

    new-instance v12, Lmb/p0;

    aget-object v17, v23, v16

    move-object/from16 v23, v11

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v10, v11, v2}, Lmb/p0;-><init>(Lhb/c;[Ljava/lang/String;I)V

    :goto_5
    const/4 v10, 0x2

    goto :goto_7

    :cond_a
    const-string v1, "Lambda expected"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :goto_6
    invoke-virtual {v0}, Lmb/d6;->C()Lmb/c1;

    move-result-object v12

    goto :goto_5

    :goto_7
    invoke-virtual {v0, v10}, Lmb/d6;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v12}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    new-array v10, v8, [Z

    move/from16 v8, v16

    new-array v11, v8, [Lmb/x3;

    invoke-virtual {v0, v11, v2, v10}, Lmb/d6;->F([Lmb/x3;Lmb/s5;[Z)Lmb/p2;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    aget-boolean v2, v10, v8

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v2

    const-string v8, "default"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lmb/d6;->d([Lmb/x3;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v8

    invoke-virtual {v0, v2, v8, v10}, Lmb/d6;->F([Lmb/x3;Lmb/s5;[Z)Lmb/p2;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_8

    :cond_b
    const-string v1, "Modifier \"default\" not allowed on formal parameters"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_c
    const-string v1, "Only the last parameter may have an ellipsis"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v1, Lmb/q2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lmb/p2;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmb/p2;

    const/16 v16, 0x0

    aget-boolean v8, v10, v16

    invoke-direct {v1, v2, v7, v8}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v2, Lm2/j;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v1}, Lm2/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v4, Lmb/b3;

    invoke-virtual {v0}, Lmb/d6;->K()Lm2/j;

    move-result-object v6

    invoke-direct {v4, v1, v2, v6}, Lmb/b3;-><init>(Lhb/c;Lmb/c3;Lm2/j;)V

    :goto_9
    move-object/from16 v11, v21

    move-object/from16 v7, v22

    move-object/from16 v6, v23

    goto/16 :goto_14

    :cond_e
    invoke-virtual {v0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->i0()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->g0(I)Z

    move-result v1

    if-nez v1, :cond_10

    filled-new-array {v3, v7, v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    filled-new-array {v13, v14, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f

    goto :goto_a

    :cond_f
    new-instance v4, Lmb/s4;

    iget-object v1, v12, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v12}, Lmb/c1;->B()Lmb/y4;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lmb/s4;-><init>(Lhb/c;Lmb/y4;)V

    goto :goto_9

    :cond_10
    :goto_a
    new-instance v4, Lmb/k1;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v12}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    invoke-virtual {v0}, Lmb/d6;->c0()Lmb/c1;

    move-result-object v6

    invoke-virtual {v6}, Lmb/c1;->B()Lmb/y4;

    move-result-object v6

    invoke-direct {v4, v1, v6, v2}, Lmb/k1;-><init>(Lhb/c;Lmb/y4;Lmb/s5;)V

    goto :goto_9

    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v4

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    move-object/from16 v22, v12

    invoke-virtual {v0}, Lmb/d6;->i0()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {v18 .. v18}, Lg5/i;->C()Lmb/q6;

    move-result-object v1

    iget v2, v1, Lmb/q6;->d:I

    iget-object v4, v1, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroidx/fragment/app/t1;->d(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v1, "Literal expected"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :pswitch_0
    new-instance v4, Lmb/i4;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v4, v1}, Lmb/i4;-><init>(Lhb/c;)V

    goto/16 :goto_9

    :pswitch_1
    new-instance v2, Lmb/f5;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    :goto_b
    move-object v4, v2

    goto/16 :goto_9

    :pswitch_2
    new-instance v2, Lmb/n1;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_3
    new-instance v2, Lmb/g1;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_4
    new-instance v2, Lmb/m2;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_5
    new-instance v2, Lmb/x2;

    invoke-virtual {v1}, Lmb/q6;->a()Lhb/c;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lmb/d3;-><init>(Lhb/c;Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->g0(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v4, Lmb/v3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    array-length v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    goto :goto_c

    :cond_13
    new-instance v2, Lmb/p0;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v7

    array-length v10, v1

    sub-int/2addr v10, v8

    invoke-direct {v2, v7, v1, v10}, Lmb/p0;-><init>(Lhb/c;[Ljava/lang/String;I)V

    :goto_c
    array-length v7, v1

    sub-int/2addr v7, v8

    aget-object v1, v1, v7

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v7

    invoke-direct {v4, v6, v2, v1, v7}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v0, v9}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0, v15}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Lmb/v4;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    const/4 v8, 0x0

    new-array v7, v8, [Lmb/r0;

    invoke-direct {v4, v6, v7, v1, v2}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    invoke-virtual {v0}, Lmb/d6;->r()I

    move-result v1

    move v2, v8

    :goto_d
    if-ge v2, v1, :cond_15

    new-instance v6, Lmb/z0;

    invoke-direct {v6, v4}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto :goto_d

    :cond_15
    move-object/from16 v6, v23

    invoke-virtual {v0, v6}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v7, v22

    if-eqz v1, :cond_16

    invoke-virtual {v0, v7}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    new-instance v2, Lmb/p1;

    invoke-direct {v2, v1, v4}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    :goto_e
    move-object v4, v2

    :cond_16
    :goto_f
    move-object/from16 v11, v21

    goto/16 :goto_14

    :cond_17
    move-object/from16 v7, v22

    move-object/from16 v6, v23

    const/4 v8, 0x0

    new-instance v4, Lmb/p0;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    array-length v10, v1

    invoke-direct {v4, v2, v1, v10}, Lmb/p0;-><init>(Lhb/c;[Ljava/lang/String;I)V

    goto :goto_f

    :cond_18
    move-object/from16 v7, v22

    move-object/from16 v6, v23

    const/4 v8, 0x0

    invoke-virtual {v0, v13}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v4, Lmb/o0;

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lmb/t1;-><init>(Lhb/c;[Lmb/y4;)V

    goto :goto_f

    :cond_19
    new-instance v4, Lmb/m5;

    invoke-direct {v4, v1}, Lmb/y4;-><init>(Lhb/c;)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v0, v14}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v4, Lmb/g5;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v10

    invoke-direct {v4, v1, v2, v10}, Lmb/g5;-><init>(Lhb/c;Lmb/y4;[Lmb/y4;)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Lmb/i5;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v10

    invoke-direct {v4, v2, v1, v10}, Lmb/z2;-><init>(Lhb/c;Ljava/lang/String;[Lmb/y4;)V

    goto :goto_f

    :cond_1c
    new-instance v4, Lmb/h5;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v10

    invoke-direct {v4, v10, v2, v1}, Lmb/h5;-><init>(Lhb/c;Lmb/s5;Ljava/lang/String;)V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0, v5}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v4

    instance-of v10, v4, Lmb/z0;

    if-eqz v10, :cond_1e

    new-instance v2, Lmb/g4;

    check-cast v4, Lmb/z0;

    invoke-virtual {v0}, Lmb/d6;->n()Lmb/w0;

    move-result-object v10

    invoke-direct {v2, v1, v4, v10}, Lmb/g4;-><init>(Lhb/c;Lmb/z0;Lmb/w0;)V

    goto/16 :goto_e

    :cond_1e
    instance-of v10, v4, Lmb/v4;

    if-eqz v10, :cond_20

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v10

    move-object/from16 v11, v21

    invoke-virtual {v0, v11}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    new-instance v12, Lmb/t0;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v8

    invoke-direct {v12, v8, v4}, Lmb/t0;-><init>(Lhb/c;Lmb/s5;)V

    invoke-virtual {v0, v12}, Lmb/d6;->s(Lmb/e0;)V

    new-instance v4, Lmb/d4;

    invoke-direct {v4, v1, v2, v12, v10}, Lmb/d4;-><init>(Lhb/c;Lmb/y4;Lmb/t0;[Lmb/y4;)V

    goto/16 :goto_14

    :cond_1f
    new-instance v8, Lmb/f4;

    invoke-direct {v8, v1, v2, v4, v10}, Lmb/f4;-><init>(Lhb/c;Lmb/y4;Lmb/s5;[Lmb/y4;)V

    :goto_10
    move-object v4, v8

    goto/16 :goto_14

    :cond_20
    move-object/from16 v11, v21

    new-instance v2, Lmb/e4;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v10

    invoke-virtual {v0, v15}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    invoke-virtual {v0, v9}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v0, v15}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21

    invoke-virtual {v0, v9}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v10

    invoke-virtual {v0, v15}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lmb/y4;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lmb/y4;

    invoke-virtual {v0}, Lmb/d6;->r()I

    move-result v10

    invoke-direct {v2, v1, v4, v8, v10}, Lmb/e4;-><init>(Lhb/c;Lmb/s5;[Lmb/y4;I)V

    :goto_12
    move-object v4, v2

    goto/16 :goto_14

    :cond_22
    move-object/from16 v11, v21

    const-string v27, "float"

    const-string v28, "double"

    const-string v21, "boolean"

    const-string v22, "char"

    const-string v23, "byte"

    const-string v24, "short"

    const-string v25, "int"

    const-string v26, "long"

    filled-new-array/range {v21 .. v28}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->r()I

    move-result v2

    const/4 v8, 0x0

    :goto_13
    move-object v4, v1

    if-ge v8, v2, :cond_23

    new-instance v1, Lmb/z0;

    invoke-direct {v1, v4}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_23
    invoke-virtual {v0, v6}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0, v7}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    new-instance v2, Lmb/p1;

    invoke-direct {v2, v1, v4}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    goto :goto_12

    :cond_24
    const-string v1, "void"

    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0, v6}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0, v7}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    new-instance v4, Lmb/p1;

    new-instance v2, Lmb/t4;

    const/4 v8, 0x1

    invoke-direct {v2, v1, v8}, Lmb/t4;-><init>(Lhb/c;I)V

    invoke-direct {v4, v1, v2}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    :cond_25
    :goto_14
    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    invoke-virtual {v0, v6}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lmb/d6;->Z()[Lmb/t5;

    invoke-virtual/range {v18 .. v18}, Lg5/i;->z()Lmb/q6;

    move-result-object v1

    iget v1, v1, Lmb/q6;->d:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_27

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v2, Lmb/v3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v8

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v10

    invoke-direct {v2, v8, v4, v1, v10}, Lmb/v3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;[Lmb/y4;)V

    goto/16 :goto_12

    :cond_26
    new-instance v2, Lmb/j2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v8

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v2, v8, v4, v1}, Lmb/j2;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_27
    invoke-virtual {v0, v13}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    new-instance v2, Lmb/u4;

    invoke-virtual {v4}, Lmb/c1;->D()Lmb/s5;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lmb/u4;-><init>(Lhb/c;Lmb/s5;)V

    goto/16 :goto_12

    :cond_28
    invoke-virtual {v0, v14}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Lmb/g5;

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v8

    invoke-direct {v2, v1, v4, v8}, Lmb/g5;-><init>(Lhb/c;Lmb/y4;[Lmb/y4;)V

    goto/16 :goto_12

    :cond_29
    invoke-virtual {v0, v6}, Lmb/d6;->q0(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    new-instance v8, Lmb/h5;

    invoke-virtual {v4}, Lmb/c1;->D()Lmb/s5;

    move-result-object v4

    invoke-direct {v8, v1, v4, v2}, Lmb/h5;-><init>(Lhb/c;Lmb/s5;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2a
    const-string v1, "Qualified superclass method invocation NYI"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-virtual {v0, v5}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lmb/z4;

    invoke-direct {v8, v2, v4, v1}, Lmb/z4;-><init>(Lhb/c;Ljava/lang/String;Lmb/y4;)V

    invoke-virtual {v0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v4

    invoke-virtual {v0, v11}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2c

    new-instance v10, Lmb/t0;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v12

    invoke-direct {v10, v12, v8}, Lmb/t0;-><init>(Lhb/c;Lmb/s5;)V

    invoke-virtual {v0, v10}, Lmb/d6;->s(Lmb/e0;)V

    new-instance v8, Lmb/d4;

    invoke-direct {v8, v2, v1, v10, v4}, Lmb/d4;-><init>(Lhb/c;Lmb/y4;Lmb/t0;[Lmb/y4;)V

    goto/16 :goto_10

    :cond_2c
    new-instance v10, Lmb/f4;

    invoke-direct {v10, v2, v1, v8, v4}, Lmb/f4;-><init>(Lhb/c;Lmb/y4;Lmb/s5;[Lmb/y4;)V

    move-object v4, v10

    goto/16 :goto_14

    :cond_2d
    invoke-virtual {v0, v7}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    new-instance v2, Lmb/p1;

    invoke-virtual {v4}, Lmb/c1;->D()Lmb/s5;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lmb/p1;-><init>(Lhb/c;Lmb/s5;)V

    goto/16 :goto_12

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected selector \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lg5/i;->z()Lmb/q6;

    move-result-object v2

    iget-object v2, v2, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' after \".\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_2f
    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v0, v15}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v8, Lmb/u0;

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v8, v1, v4, v2}, Lmb/u0;-><init>(Lhb/c;Lmb/y4;Lmb/y4;)V

    goto/16 :goto_10

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lg5/i;->z()Lmb/q6;

    move-result-object v2

    iget-object v2, v2, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in selector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_31
    const-string v1, "::"

    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    instance-of v1, v4, Lmb/z0;

    if-eqz v1, :cond_32

    invoke-virtual {v0, v5}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v1, Lmb/v0;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    check-cast v4, Lmb/z0;

    invoke-direct {v1, v0, v4}, Lmb/v0;-><init>(Lhb/c;Lmb/z0;)V

    return-object v1

    :cond_32
    invoke-virtual {v0}, Lmb/d6;->Z()[Lmb/t5;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v10, 0x2

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lg5/i;->z()Lmb/q6;

    move-result-object v3

    iget v3, v3, Lmb/q6;->d:I

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v10, :cond_34

    aget v6, v2, v9

    invoke-static {v6, v3}, Landroidx/fragment/app/t1;->b(II)Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_16

    :cond_33
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    goto :goto_15

    :cond_34
    const/4 v9, -0x1

    :goto_16
    if-eqz v9, :cond_36

    const/4 v8, 0x1

    if-ne v9, v8, :cond_35

    new-instance v1, Lmb/w3;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lmb/w3;-><init>(Lhb/c;Lmb/c1;Ljava/lang/String;)V

    return-object v1

    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual/range {v18 .. v18}, Lg5/i;->z()Lmb/q6;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_36
    invoke-virtual {v0, v5}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v2, Lmb/o1;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-virtual {v4}, Lmb/c1;->D()Lmb/s5;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lmb/o1;-><init>(Lhb/c;Lmb/s5;[Lmb/t5;)V

    return-object v2

    :cond_37
    move-object/from16 v1, v19

    move-object/from16 v2, v20

    :goto_17
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_38

    new-instance v3, Lmb/w1;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-virtual {v4}, Lmb/c1;->z()Lmb/n3;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lg5/i;->C()Lmb/q6;

    move-result-object v7

    iget-object v7, v7, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v6, v4, v7}, Lmb/w1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_17

    :cond_38
    return-object v4

    :cond_39
    const-string v1, "\"void\" encountered in wrong context"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lg5/i;->C()Lmb/q6;

    move-result-object v2

    iget-object v2, v2, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" in primary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0()[Lmb/z5;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v3

    const-string v4, "="

    invoke-virtual {p0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lmb/d6;->e0()Lmb/x0;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Lmb/z5;

    invoke-direct {v5, v2, v1, v3, v4}, Lmb/z5;-><init>(Lhb/c;Ljava/lang/String;ILmb/x0;)V

    invoke-static {v1}, Lmb/d6;->t0(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/z5;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/z5;

    return-object p0
.end method

.method public final e([Lmb/x3;)V
    .locals 6

    const-string v4, "static"

    const-string v5, "strictfp"

    const-string v0, "public"

    const-string v1, "protected"

    const-string v2, "private"

    const-string v3, "abstract"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    return-void
.end method

.method public final e0()Lmb/x0;
    .locals 1

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmb/d6;->n()Lmb/w0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lmb/d6;->B()Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public final varargs f0([Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->z()Lmb/q6;

    move-result-object p0

    iget-object p0, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lg5/i;->v(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final g()Lhb/c;
    .locals 1

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmb/q6;->a()Lhb/c;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lmb/j6;

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    return-object p0
.end method

.method public final g0(I)Z
    .locals 0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->z()Lmb/q6;

    move-result-object p0

    iget p0, p0, Lmb/q6;->d:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h([Lmb/x3;)V
    .locals 9

    const-string v7, "native"

    const-string v8, "strictfp"

    const-string v0, "public"

    const-string v1, "protected"

    const-string v2, "private"

    const-string v3, "abstract"

    const-string v4, "static"

    const-string v5, "final"

    const-string v6, "synchronized"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    return-void
.end method

.method public final h0(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->z()Lmb/q6;

    move-result-object p0

    iget-object p0, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i()Lmb/k0;
    .locals 15

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v1

    const-string v5, "."

    invoke-static {v5, v1}, Lmb/d6;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Lmb/k4;

    invoke-direct {v2, v0, v1}, Lmb/k4;-><init>(Lhb/c;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    :goto_3
    const-string v0, "import"

    invoke-virtual {p0, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    array-length v5, v7

    if-lez v5, :cond_4

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    :cond_4
    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->G()Lmb/f0;

    move-result-object v0

    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v7

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmb/f0;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/f0;

    const-string v1, "open"

    const-string v5, "module"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eq v6, v8, :cond_11

    new-instance v2, Lmb/y3;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    iget-object v11, v6, Lhb/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0, v5}, Lmb/d6;->q0(Ljava/lang/String;)V

    move v1, v9

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v9

    const-string v5, "("

    invoke-virtual {p0, v5}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    const-string v6, ")"

    invoke-virtual {p0, v6}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "uses"

    const-string v10, "provides"

    const-string v12, "requires"

    const-string v13, "exports"

    const-string v14, "opens"

    filled-new-array {v12, v13, v14, v6, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_f

    const-string v10, "to"

    const-string v12, ","

    if-eq v6, v1, :cond_c

    const/4 v13, 0x2

    if-eq v6, v13, :cond_9

    const/4 v10, 0x3

    if-eq v6, v10, :cond_8

    const/4 v10, 0x4

    if-ne v6, v10, :cond_7

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v6

    const-string v10, "with"

    invoke-virtual {p0, v10}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {p0, v12}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    new-instance v12, Lmb/g2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [[Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    const/4 v14, 0x2

    invoke-direct {v12, v13, v6, v10, v14}, Lmb/g2;-><init>(Lhb/c;[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto/16 :goto_a

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    new-instance v12, Lmb/y5;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v6, v10}, Lmb/y5;-><init>(Lhb/c;[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v10}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {p0, v12}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [[Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object v10, v4

    :goto_7
    new-instance v12, Lmb/g2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {v12, v13, v6, v10, v14}, Lmb/g2;-><init>(Lhb/c;[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto :goto_a

    :cond_c
    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v10}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {p0, v12}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [[Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object v10, v4

    :goto_9
    new-instance v12, Lmb/g2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v6, v10, v14}, Lmb/g2;-><init>(Lhb/c;[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto :goto_a

    :cond_f
    new-instance v12, Lmb/g2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v10

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v6, v10, v13}, Lmb/g2;-><init>(Lhb/c;[Lmb/x3;[Ljava/lang/String;)V

    :goto_a
    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    new-instance v1, Lmb/z3;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/a4;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, [Lmb/a4;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lmb/z3;-><init>(Lhb/c;[Lmb/x3;Z[Ljava/lang/String;[Lmb/a4;)V

    invoke-direct {v2, v11, v0, v5}, Lmb/y3;-><init>(Ljava/lang/String;[Lmb/f0;Lmb/z3;)V

    return-object v2

    :cond_11
    move v1, v9

    new-instance v4, Lmb/q1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v5

    iget-object v5, v5, Lhb/c;->l:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lmb/q1;-><init>(Ljava/lang/String;[Lmb/f0;)V

    iput-object v2, v4, Lmb/q1;->c:Lmb/k4;

    invoke-virtual {p0, v1}, Lmb/d6;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {p0, v7}, Lmb/d6;->P([Lmb/x3;)Lmb/p4;

    move-result-object v0

    iget-object v2, v4, Lmb/q1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Lmb/p4;->r(Lmb/q1;)V

    :goto_b
    invoke-virtual {p0, v1}, Lmb/d6;->g0(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->P([Lmb/x3;)Lmb/p4;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Lmb/p4;->r(Lmb/q1;)V

    goto :goto_b

    :cond_14
    :goto_c
    return-object v4
.end method

.method public final i0()Z
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->z()Lmb/q6;

    move-result-object p0

    iget p0, p0, Lmb/q6;->d:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v0, :cond_1

    aget v5, v1, v3

    invoke-static {v5, p0}, Landroidx/fragment/app/t1;->b(II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    if-eq v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public final j()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->O()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "+"

    const-string v2, "-"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lmb/d1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    iget-object v3, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v3}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->O()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final j0(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->A()Lmb/q6;

    move-result-object p0

    iget-object p0, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->z()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-instance v3, Lmb/d1;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->z()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final varargs k0([Ljava/lang/String;)I
    .locals 3

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lg5/i;->v(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    return p1

    :cond_1
    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iget-object v2, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lg5/i;->v(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_2

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    return p1

    :cond_2
    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    return v1
.end method

.method public final l()Lmb/d0;
    .locals 8

    const-string v0, "@"

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/v4;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lmb/r0;

    invoke-virtual {p0}, Lmb/d6;->Q()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v3, v4, v5}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    const-string v1, "("

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lmb/o3;

    invoke-direct {p0, v0}, Lmb/d0;-><init>(Lmb/s5;)V

    return-object p0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/d6;->g0(I)Z

    move-result v3

    const-string v4, ")"

    if-eqz v3, :cond_4

    const-string v3, "="

    invoke-virtual {p0, v3}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array p0, v2, [Lmb/b2;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v6, Lmb/b2;

    invoke-virtual {p0}, Lmb/d6;->x()Lmb/z1;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lmb/b2;-><init>(Ljava/lang/String;Lmb/z1;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ","

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmb/d6;->n0([Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/b2;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/b2;

    :goto_0
    new-instance v1, Lmb/h4;

    invoke-direct {v1, v0, p0}, Lmb/h4;-><init>(Lmb/v4;[Lmb/b2;)V

    return-object v1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lmb/d6;->x()Lmb/z1;

    move-result-object v1

    invoke-virtual {p0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance p0, Lmb/d5;

    invoke-direct {p0, v0, v1}, Lmb/d5;-><init>(Lmb/v4;Lmb/z1;)V

    return-object p0
.end method

.method public final l0()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Lmb/q6;->d:I

    if-eq v3, v1, :cond_0

    return-object v2

    :cond_0
    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v1, Lmb/q6;

    iput-object v1, p0, Lg5/i;->o:Ljava/lang/Object;

    iput-object v2, p0, Lg5/i;->p:Ljava/lang/Object;

    iget-object p0, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iget v3, v0, Lmb/q6;->d:I

    if-ne v3, v1, :cond_2

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object p0, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    return-object v2
.end method

.method public final m()[Lmb/y4;
    .locals 3

    const-string v0, "("

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/y4;

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmb/y4;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/y4;

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    return-object v1
.end method

.method public final m0(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    iget-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Lmb/q6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p1, Lmb/q6;

    iput-object p1, p0, Lg5/i;->n:Ljava/lang/Object;

    iget-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p1, Lmb/q6;

    iput-object p1, p0, Lg5/i;->o:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lg5/i;->p:Ljava/lang/Object;

    return v1

    :cond_1
    invoke-virtual {p0}, Lg5/i;->B()Lmb/q6;

    move-result-object v0

    iget-object v3, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    return v1

    :cond_2
    iput-object v0, p0, Lg5/i;->o:Ljava/lang/Object;

    return v2
.end method

.method public final n()Lmb/w0;
    .locals 4

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v2, "}"

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lmb/d6;->e0()Lmb/x0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lmb/w0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmb/x0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/x0;

    invoke-direct {p0, v0, v1}, Lmb/w0;-><init>(Lhb/c;[Lmb/x0;)V

    return-object p0
.end method

.method public final varargs n0([Ljava/lang/String;)I
    .locals 12

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->C()Lmb/q6;

    move-result-object v0

    iget-object v1, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lg5/i;->v(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-static {v2, p1}, Lg5/i;->v(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lmb/q6;->a()Lhb/c;

    move-result-object p1

    new-instance v6, Lmb/q6;

    iget-object v7, p1, Lhb/c;->l:Ljava/lang/String;

    iget v8, p1, Lhb/c;->m:I

    iget p1, p1, Lhb/c;->n:I

    add-int/lit8 v10, p1, 0x1

    const/16 v11, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lmb/q6;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    iput-object v6, p0, Lg5/i;->o:Ljava/lang/Object;

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "One of \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    array-length v3, p1

    if-ge v5, v3, :cond_2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "(zero length array)"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' expected instead of \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lhb/a;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lmb/j6;

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Lmb/c1;
    .locals 13

    invoke-virtual {p0}, Lmb/d6;->w()Lmb/c1;

    move-result-object v0

    const-string v11, ">>="

    const-string v12, ">>>="

    const-string v1, "="

    const-string v2, "+="

    const-string v3, "-="

    const-string v4, "*="

    const-string v5, "/="

    const-string v6, "&="

    const-string v7, "|="

    const-string v8, "^="

    const-string v9, "%="

    const-string v10, "<<="

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lmb/c1;->z()Lmb/n3;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmb/d6;->o()Lmb/c1;

    move-result-object p0

    invoke-virtual {p0}, Lmb/c1;->B()Lmb/y4;

    move-result-object p0

    new-instance v3, Lmb/b1;

    invoke-direct {v3, v1, v0, v2, p0}, Lmb/b1;-><init>(Lhb/c;Lmb/n3;Ljava/lang/String;Lmb/y4;)V

    return-object v3

    :cond_0
    return-object v0
.end method

.method public final o0(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->C()Lmb/q6;

    move-result-object p0

    iget v0, p0, Lmb/q6;->d:I

    iget-object v1, p0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_0

    const-string p1, "null"

    goto :goto_0

    :pswitch_0
    const-string p1, "C_STYLE_COMMENT"

    goto :goto_0

    :pswitch_1
    const-string p1, "C_PLUS_PLUS_STYLE_COMMENT"

    goto :goto_0

    :pswitch_2
    const-string p1, "WHITE_SPACE"

    goto :goto_0

    :pswitch_3
    const-string p1, "OPERATOR"

    goto :goto_0

    :pswitch_4
    const-string p1, "NULL_LITERAL"

    goto :goto_0

    :pswitch_5
    const-string p1, "STRING_LITERAL"

    goto :goto_0

    :pswitch_6
    const-string p1, "CHARACTER_LITERAL"

    goto :goto_0

    :pswitch_7
    const-string p1, "BOOLEAN_LITERAL"

    goto :goto_0

    :pswitch_8
    const-string p1, "FLOATING_POINT_LITERAL"

    goto :goto_0

    :pswitch_9
    const-string p1, "INTEGER_LITERAL"

    goto :goto_0

    :pswitch_a
    const-string p1, "KEYWORD"

    goto :goto_0

    :pswitch_b
    const-string p1, "IDENTIFIER"

    goto :goto_0

    :pswitch_c
    const-string p1, "END_OF_INPUT"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected instead of \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmb/q6;->a()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Lmb/e1;
    .locals 5

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v0, Lmb/e1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lmb/e1;-><init>(Lhb/c;)V

    invoke-virtual {p0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lmb/e1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/f1;

    invoke-interface {v4, v0}, Lmb/f1;->a(Lmb/a5;)V

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    return-object v0
.end method

.method public final p0()Lmb/q6;
    .locals 0

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->C()Lmb/q6;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/util/ArrayList;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "case"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmb/d6;->g0(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lmb/d6;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    const-string v13, "continue"

    const-string v14, "assert"

    const-string v3, "if"

    const-string v4, "for"

    const-string v5, "while"

    const-string v6, "do"

    const-string v7, "try"

    const-string v8, "switch"

    const-string v9, "synchronized"

    const-string v10, "return"

    const-string v11, "throw"

    const-string v12, "break"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const-string v2, "{"

    const-string v4, ";"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "class"

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    new-array v2, v5, [Lmb/x3;

    invoke-virtual {p0, v2, v1}, Lmb/d6;->u([Lmb/x3;I)Lmb/b4;

    move-result-object v1

    check-cast v1, Lmb/e3;

    new-instance v2, Lmb/f3;

    invoke-direct {v2, v1}, Lmb/f3;-><init>(Lmb/e3;)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "@"

    const-string v2, "final"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    new-instance v1, Lmb/i3;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v2

    invoke-virtual {p0}, Lmb/d6;->d0()[Lmb/z5;

    move-result-object v6

    invoke-direct {v1, v3, v5, v2, v6}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {p0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lmb/d6;->C()Lmb/c1;

    move-result-object v1

    invoke-virtual {p0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lmb/h2;

    invoke-virtual {v1}, Lmb/c1;->B()Lmb/y4;

    move-result-object v1

    invoke-direct {v2, v1}, Lmb/h2;-><init>(Lmb/y4;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lmb/c1;->D()Lmb/s5;

    move-result-object v2

    invoke-virtual {p0}, Lmb/d6;->r()I

    move-result v3

    :goto_1
    if-lez v3, :cond_5

    new-instance v6, Lmb/z0;

    invoke-direct {v6, v2}, Lmb/z0;-><init>(Lmb/s5;)V

    add-int/lit8 v3, v3, -0x1

    move-object v2, v6

    goto :goto_1

    :cond_5
    new-instance v3, Lmb/i3;

    iget-object v1, v1, Lmb/m3;->a:Lhb/c;

    new-array v5, v5, [Lmb/x3;

    invoke-virtual {p0}, Lmb/d6;->d0()[Lmb/z5;

    move-result-object v6

    invoke-direct {v3, v1, v5, v2, v6}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {p0, v4}, Lmb/d6;->q0(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lmb/d6;->W()Lmb/e5;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {p0}, Lg5/i;->C()Lmb/q6;

    move-result-object v0

    iget-object v0, v0, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\' expected instead of \'"

    const-string v2, "\'"

    invoke-static {v2, p1, v1, v0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lhb/a;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lmb/j6;

    invoke-virtual {p0}, Lmb/j6;->e()Lhb/c;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final r()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const-string v1, "["

    invoke-virtual {p0, v1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {p0}, Lmb/d6;->p0()Lmb/q6;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final s(Lmb/e0;)V
    .locals 1

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    :goto_0
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmb/d6;->t(Lmb/e0;)V

    goto :goto_0
.end method

.method public final t(Lmb/e0;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v10

    const-string v2, "{"

    invoke-virtual {v0, v2}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v1, "static"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v10

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v10, v3

    instance-of v6, v5, Lmb/n0;

    if-eqz v6, :cond_2

    aget-object v6, v1, v4

    check-cast v5, Lmb/n0;

    iget-object v5, v5, Lmb/n0;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Only access flag \"static\" allowed on initializer"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lmb/u2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/d6;->p()Lmb/e1;

    move-result-object v0

    invoke-direct {v1, v2, v10, v0}, Lmb/u2;-><init>(Lhb/c;[Lmb/x3;Lmb/e1;)V

    invoke-virtual {v7, v1}, Lmb/e0;->y(Lmb/l2;)V

    return-void

    :cond_4
    const-string v3, "void"

    invoke-virtual {v0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0, v8}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10}, Lmb/d6;->h([Lmb/x3;)V

    new-instance v3, Lmb/t4;

    invoke-direct {v3, v1, v6}, Lmb/t4;-><init>(Lhb/c;I)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v9

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmb/m0;->k(Lmb/u3;)V

    return-void

    :cond_5
    move v5, v9

    const-string v9, "class"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {v0, v10}, Lmb/d6;->b([Lmb/x3;)V

    invoke-virtual {v0, v10, v8}, Lmb/d6;->u([Lmb/x3;I)Lmb/b4;

    move-result-object v0

    check-cast v0, Lmb/t3;

    invoke-virtual {v7, v0}, Lmb/m0;->w(Lmb/t3;)V

    return-void

    :cond_6
    const-string v9, "enum"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {v0, v10}, Lmb/d6;->b([Lmb/x3;)V

    invoke-virtual {v0, v10, v8}, Lmb/d6;->y([Lmb/x3;I)Lmb/f2;

    move-result-object v0

    check-cast v0, Lmb/t3;

    invoke-virtual {v7, v0}, Lmb/m0;->w(Lmb/t3;)V

    return-void

    :cond_7
    const-string v9, "interface"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {v0, v10}, Lmb/d6;->e([Lmb/x3;)V

    invoke-virtual {v0, v10, v6}, Lmb/d6;->J([Lmb/x3;I)Lmb/y2;

    move-result-object v0

    check-cast v0, Lmb/t3;

    invoke-virtual {v7, v0}, Lmb/m0;->w(Lmb/t3;)V

    return-void

    :cond_8
    const-string v11, "@"

    invoke-virtual {v0, v11}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v9}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->p0()Lmb/q6;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    invoke-virtual {v0, v10}, Lmb/d6;->e([Lmb/x3;)V

    invoke-virtual {v0, v10, v6}, Lmb/d6;->J([Lmb/x3;I)Lmb/y2;

    move-result-object v0

    check-cast v0, Lmb/t3;

    invoke-virtual {v7, v0}, Lmb/m0;->w(Lmb/t3;)V

    return-void

    :cond_9
    instance-of v9, v7, Lmb/b4;

    const-string v11, "("

    if-eqz v9, :cond_10

    iget-object v9, v0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v9}, Lg5/i;->z()Lmb/q6;

    move-result-object v9

    iget-object v9, v9, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object v12, v7

    check-cast v12, Lmb/b4;

    iget-object v12, v12, Lmb/b4;->l:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v0, v11}, Lmb/d6;->j0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    const-string v3, "public"

    const-string v5, "protected"

    const-string v6, "private"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lmb/d6;->o0(I)Ljava/lang/String;

    invoke-virtual {v0, v11}, Lmb/d6;->q0(Ljava/lang/String;)V

    const-string v9, ")"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v9, Lmb/q2;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v11

    invoke-direct {v9, v11}, Lmb/q2;-><init>(Lhb/c;)V

    move-object v11, v9

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lmb/d6;->E()Lmb/q2;

    move-result-object v11

    invoke-virtual {v0, v9}, Lmb/d6;->q0(Ljava/lang/String;)V

    :goto_2
    const-string v9, "throws"

    invoke-virtual {v0, v9}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v0}, Lmb/d6;->S()[Lmb/v4;

    move-result-object v9

    :goto_3
    move-object v12, v9

    goto :goto_4

    :cond_b
    new-array v9, v4, [Lmb/v4;

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v9

    invoke-virtual {v0, v2}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v25, "double"

    const-string v26, "boolean"

    const-string v15, "this"

    const-string v16, "super"

    const-string v17, "new"

    const-string v18, "void"

    const-string v19, "byte"

    const-string v20, "char"

    const-string v21, "short"

    const-string v22, "int"

    const-string v23, "long"

    const-string v24, "float"

    filled-new-array/range {v15 .. v26}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v2

    const/4 v13, -0x1

    if-ne v2, v13, :cond_c

    invoke-virtual {v0}, Lmb/d6;->i0()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v8}, Lmb/d6;->g0(I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    invoke-virtual {v0}, Lmb/d6;->C()Lmb/c1;

    move-result-object v2

    instance-of v13, v2, Lmb/t1;

    if-eqz v13, :cond_d

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    check-cast v2, Lmb/t1;

    :goto_5
    move-object v13, v2

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v8}, Lmb/d6;->g0(I)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v2}, Lmb/c1;->D()Lmb/s5;

    move-result-object v8

    new-instance v13, Lmb/i3;

    iget-object v2, v2, Lmb/m3;->a:Lhb/c;

    new-array v4, v4, [Lmb/x3;

    invoke-virtual {v0}, Lmb/d6;->d0()[Lmb/z5;

    move-result-object v15

    invoke-direct {v13, v2, v4, v8, v15}, Lmb/i3;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    new-instance v13, Lmb/h2;

    invoke-virtual {v2}, Lmb/c1;->B()Lmb/y4;

    move-result-object v2

    invoke-direct {v13, v2}, Lmb/h2;-><init>(Lmb/y4;)V

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 v2, 0x0

    goto :goto_5

    :goto_7
    invoke-virtual {v0}, Lmb/d6;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    new-instance v8, Lmb/s1;

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-direct/range {v8 .. v14}, Lmb/s1;-><init>(Lhb/c;[Lmb/x3;Lmb/q2;[Lmb/s5;Lmb/t1;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lmb/e0;->x(Lmb/s1;)V

    return-void

    :cond_10
    invoke-virtual {v0}, Lmb/d6;->b0()[Lmb/w5;

    move-result-object v2

    invoke-virtual {v0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v8}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10}, Lmb/d6;->h([Lmb/x3;)V

    new-instance v3, Lmb/t4;

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-direct {v3, v1, v6}, Lmb/t4;-><init>(Lhb/c;I)V

    move v6, v5

    const/4 v5, 0x0

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmb/m0;->k(Lmb/u3;)V

    return-void

    :cond_11
    move v6, v5

    invoke-virtual {v0}, Lmb/d6;->X()Lmb/s5;

    move-result-object v3

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    move-result-object v4

    invoke-virtual {v0, v8}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v0, v10}, Lmb/d6;->h([Lmb/x3;)V

    move-object v4, v5

    const/4 v5, 0x0

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Lmb/d6;->M([Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;ZI)Lmb/u3;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmb/m0;->k(Lmb/u3;)V

    return-void

    :cond_12
    if-nez v2, :cond_13

    invoke-virtual {v0}, Lmb/d6;->g()Lhb/c;

    new-instance v2, Lmb/k2;

    const-string v16, "transient"

    const-string v17, "volatile"

    const-string v11, "public"

    const-string v12, "protected"

    const-string v13, "private"

    const-string v14, "static"

    const-string v15, "final"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lmb/d6;->D(Ljava/lang/String;)[Lmb/z5;

    move-result-object v5

    invoke-direct {v2, v4, v10, v3, v5}, Lmb/k2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;[Lmb/z5;)V

    invoke-virtual {v0, v1}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lmb/e0;->y(Lmb/l2;)V

    return-void

    :cond_13
    const-string v1, "Type parameters not allowed on field declaration"

    invoke-virtual {v0, v1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object v0

    throw v0
.end method

.method public final u([Lmb/x3;I)Lmb/b4;
    .locals 9

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmb/d6;->r0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->b0()[Lmb/w5;

    move-result-object v4

    const-string v2, "extends"

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->R()Lmb/v4;

    move-result-object v2

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Lmb/v4;

    const-string v6, "implements"

    invoke-virtual {p0, v6}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lmb/d6;->S()[Lmb/v4;

    move-result-object v2

    :cond_1
    move-object v6, v2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    new-instance v0, Lmb/m4;

    const-string p2, "final"

    const-string v2, "strictfp"

    const-string v7, "public"

    const-string v8, "abstract"

    filled-new-array {v7, v8, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    goto :goto_2

    :cond_2
    move-object v2, p1

    if-ne p2, v0, :cond_3

    new-instance v0, Lmb/q3;

    invoke-virtual {p0, v2}, Lmb/d6;->b([Lmb/x3;)V

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    new-instance v0, Lmb/e3;

    invoke-virtual {p0, v2}, Lmb/d6;->b([Lmb/x3;)V

    invoke-direct/range {v0 .. v6}, Lmb/b4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V

    :goto_2
    invoke-virtual {p0, v0}, Lmb/d6;->s(Lmb/e0;)V

    return-object v0

    :cond_4
    new-instance p0, Lhb/b;

    invoke-static {p2}, Lm/a;->x(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNO: Class declaration in unexpected context "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->H()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "&&"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-instance v3, Lmb/d1;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->H()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final w()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->v()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "||"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    new-instance v3, Lmb/d1;

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->v()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v1, "?"

    invoke-virtual {p0, v1}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v1

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    invoke-virtual {p0}, Lmb/d6;->B()Lmb/y4;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {p0, v3}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->w()Lmb/c1;

    move-result-object p0

    invoke-virtual {p0}, Lmb/c1;->B()Lmb/y4;

    move-result-object p0

    new-instance v3, Lmb/r1;

    invoke-direct {v3, v1, v0, v2, p0}, Lmb/r1;-><init>(Lhb/c;Lmb/y4;Lmb/y4;Lmb/y4;)V

    return-object v3
.end method

.method public final x()Lmb/z1;
    .locals 3

    const-string v0, "@"

    invoke-virtual {p0, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmb/d6;->l()Lmb/d0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lmb/d6;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v2, "}"

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ","

    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmb/d6;->x()Lmb/z1;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lmb/a2;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmb/z1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmb/z1;

    invoke-direct {p0, v1, v0}, Lmb/a2;-><init>([Lmb/z1;Lhb/c;)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lmb/d6;->v()Lmb/c1;

    move-result-object p0

    invoke-virtual {p0}, Lmb/c1;->B()Lmb/y4;

    move-result-object p0

    return-object p0
.end method

.method public final y([Lmb/x3;I)Lmb/f2;
    .locals 7

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmb/d6;->r0(Ljava/lang/String;)V

    const-string v3, "<"

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "extends"

    invoke-virtual {p0, v3}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    new-array v3, v3, [Lmb/v4;

    const-string v4, "implements"

    invoke-virtual {p0, v4}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmb/d6;->S()[Lmb/v4;

    move-result-object v3

    :cond_0
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    new-instance p2, Lmb/n4;

    invoke-virtual {p0, p1}, Lmb/d6;->b([Lmb/x3;)V

    invoke-direct {p2, v0, p1, v2, v3}, Lmb/n4;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/s5;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_7

    new-instance p2, Lmb/r3;

    invoke-virtual {p0, p1}, Lmb/d6;->b([Lmb/x3;)V

    invoke-direct {p2, v0, p1, v2, v3}, Lmb/r3;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/s5;)V

    :goto_0
    const-string p1, "{"

    invoke-virtual {p0, p1}, Lmb/d6;->q0(Ljava/lang/String;)V

    :cond_2
    const-string v0, ";"

    const-string v2, "}"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    new-instance v0, Lmb/e2;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v3

    invoke-virtual {p0}, Lmb/d6;->N()[Lmb/x3;

    move-result-object v4

    const-string v5, "xxx"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmb/d6;->a([Lmb/x3;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmb/d6;->o0(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {p0, v6}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lmb/d6;->m()[Lmb/y4;

    move-result-object v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-direct {v0, v3, v4, v5, v6}, Lmb/e2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/y4;)V

    invoke-virtual {p0, p1}, Lmb/d6;->h0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lmb/d6;->s(Lmb/e0;)V

    :cond_4
    invoke-interface {p2, v0}, Lmb/f2;->d(Lmb/e2;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lmb/d6;->m0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Lmb/d6;->t(Lmb/e0;)V

    goto :goto_2

    :cond_6
    return-object p2

    :cond_7
    new-instance p0, Lhb/b;

    invoke-static {p2}, Lm/a;->x(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNO: Enum declaration in unexpected context "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string p1, "Enum declaration must not have an EXTENDS clause"

    invoke-virtual {p0, p1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0

    :cond_9
    const-string p1, "Enum declaration must not have type parameters"

    invoke-virtual {p0, p1}, Lmb/d6;->c(Ljava/lang/String;)Lhb/a;

    move-result-object p0

    throw p0
.end method

.method public final z()Lmb/c1;
    .locals 5

    invoke-virtual {p0}, Lmb/d6;->T()Lmb/c1;

    move-result-object v0

    :goto_0
    const-string v1, "=="

    const-string v2, "!="

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmb/d6;->f0([Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lmb/d1;

    invoke-virtual {p0}, Lmb/d6;->g()Lhb/c;

    move-result-object v2

    invoke-virtual {v0}, Lmb/c1;->B()Lmb/y4;

    move-result-object v0

    iget-object v3, p0, Lmb/d6;->b:Lg5/i;

    invoke-virtual {v3}, Lg5/i;->C()Lmb/q6;

    move-result-object v3

    iget-object v3, v3, Lmb/q6;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lmb/d6;->T()Lmb/c1;

    move-result-object v4

    invoke-virtual {v4}, Lmb/c1;->B()Lmb/y4;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lmb/d1;-><init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method
