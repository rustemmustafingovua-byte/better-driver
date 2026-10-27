.class public final Lf6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public final a:Lj6/t;

.field public final b:Z

.field public final c:Z

.field public final d:[Lj6/n;

.field public e:I

.field public f:Z

.field public g:[Le6/y;

.field public h:[Le6/y;

.field public i:[Le6/y;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "property-based"

    const-string v10, "array-delegate"

    const-string v0, "default"

    const-string v1, "from-String"

    const-string v2, "from-int"

    const-string v3, "from-long"

    const-string v4, "from-big-integer"

    const-string v5, "from-double"

    const-string v6, "from-big-decimal"

    const-string v7, "from-boolean"

    const-string v8, "delegate"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf6/d;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj6/t;Ld6/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Lj6/n;

    iput-object v0, p0, Lf6/d;->d:[Lj6/n;

    const/4 v0, 0x0

    iput v0, p0, Lf6/d;->e:I

    iput-boolean v0, p0, Lf6/d;->f:Z

    iput-object p1, p0, Lf6/d;->a:Lj6/t;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lb6/x;->A:Lb6/x;

    invoke-virtual {p2, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iput-boolean p1, p0, Lf6/d;->b:Z

    sget-object p1, Lb6/x;->B:Lb6/x;

    invoke-virtual {p2, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iput-boolean p1, p0, Lf6/d;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lb6/i;Lj6/n;[Le6/y;)Lb6/l;
    .locals 3

    iget-boolean p0, p0, Lf6/d;->f:Z

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p3, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {p2, p0}, Lj6/n;->v(I)Lb6/l;

    move-result-object v0

    invoke-virtual {p3}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p0}, Lj6/n;->t(I)Lj6/m;

    move-result-object p0

    invoke-virtual {v1, p0}, Lb6/d;->m(Lj6/a;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lb6/i;->P(Ljava/lang/Object;)Lb6/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb6/l;->o0(Ljava/lang/Object;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v1, p3, p0, v0}, Lb6/d;->v0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lj6/n;Z[Le6/y;I)V
    .locals 0

    invoke-virtual {p1, p4}, Lj6/n;->v(I)Lb6/l;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p4, p4, Lt6/c;

    if-eqz p4, :cond_0

    const/16 p4, 0xa

    invoke-virtual {p0, p1, p4, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p3, p0, Lf6/d;->h:[Le6/y;

    return-void

    :cond_0
    const/16 p4, 0x8

    invoke-virtual {p0, p1, p4, p2}, Lf6/d;->d(Lj6/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p3, p0, Lf6/d;->g:[Le6/y;

    :cond_1
    return-void
.end method

.method public final c(Lj6/n;[Le6/y;)V
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lf6/d;->d(Lj6/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    array-length p1, p2

    if-le p1, v1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    iget-object v2, v2, Le6/y;->n:Lb6/i0;

    iget-object v2, v2, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Le6/y;->p()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lf6/d;->a:Lj6/t;

    iget-object p0, p0, Lj6/t;->a:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Duplicate creator property \"%s\" (index %s vs %d) for type %s "

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Lf6/d;->i:[Le6/y;

    :cond_3
    return-void
.end method

.method public final d(Lj6/n;IZ)Z
    .locals 12

    const/4 v0, 0x1

    shl-int v1, v0, p2

    iput-boolean v0, p0, Lf6/d;->f:Z

    iget-object v2, p0, Lf6/d;->d:[Lj6/n;

    aget-object v3, v2, p2

    if-eqz v3, :cond_c

    iget v4, p0, Lf6/d;->e:I

    and-int/2addr v4, v1

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v4, p3, 0x1

    :goto_0
    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v4, v6, :cond_c

    invoke-virtual {v3, v5}, Lj6/n;->w(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v5}, Lj6/n;->w(I)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "implicitly discovered"

    const-string v8, "explicitly marked"

    sget-object v9, Lf6/d;->j:[Ljava/lang/String;

    const-string v10, "Conflicting %s creators: already had %s creator %s, encountered another: %s"

    if-ne v4, v6, :cond_7

    invoke-virtual {p1}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v11, "valueOf"

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v0

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    aget-object p2, v9, p2

    if-eqz p3, :cond_6

    move-object v7, v8

    :cond_6
    filled-new-array {p2, v7, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v10, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eq v11, v6, :cond_a

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_2
    return v5

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    aget-object p2, v9, p2

    if-eqz p3, :cond_b

    move-object v7, v8

    :cond_b
    filled-new-array {p2, v7, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v10, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    if-eqz p3, :cond_d

    iget p3, p0, Lf6/d;->e:I

    or-int/2addr p3, v1

    iput p3, p0, Lf6/d;->e:I

    :cond_d
    if-eqz p1, :cond_e

    iget-boolean p3, p0, Lf6/d;->b:Z

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Lj6/a;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Member;

    iget-boolean p0, p0, Lf6/d;->c:Z

    invoke-static {p3, p0}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_e
    aput-object p1, v2, p2

    return v0
.end method
