.class public abstract Lq8/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[C

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Set;

.field public static final e:Ljava/util/LinkedHashSet;

.field public static final f:Lr9/i;

.field public static final g:Lr9/i;

.field public static final h:Lr9/i;

.field public static final i:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "or"

    const-string v1, "and"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq8/n;->a:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lq8/n;->b:[C

    const-string v0, "~"

    const-string v1, "!~"

    const-string v2, "="

    const-string v3, "!="

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lq8/n;->c:Ljava/util/Set;

    const-string v0, "<"

    const-string v1, "<="

    const-string v2, ">"

    const-string v3, ">="

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lq8/n;->d:Ljava/util/Set;

    const-string v7, "!~"

    const-string v8, "~"

    const-string v1, ">="

    const-string v2, "<="

    const-string v3, ">"

    const-string v4, "<"

    const-string v5, "!="

    const-string v6, "="

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    const/16 v2, 0x8

    invoke-static {v2}, Lu8/v;->J(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v0, v1}, Lu8/l;->G0([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    sput-object v1, Lq8/n;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Lr9/i;

    const-string v1, "\\\\([\'\"])"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/n;->f:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "\\s"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/n;->g:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "\\s*"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/n;->h:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "!\\s*\\("

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/n;->i:Lr9/i;

    return-void

    nop

    :array_0
    .array-data 2
        0x22s
        0x27s
    .end array-data
.end method

.method public static final a(Lf7/c0;)I
    .locals 3

    const-string v0, "regex"

    sget-object v1, Lq8/n;->h:Lr9/i;

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lf7/c0;->b:I

    invoke-virtual {v1, v0, v2}, Lr9/i;->d(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr9/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lf7/c0;->d(I)Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr9/g;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Lf7/c0;)Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_7

    sget-object v4, Lq8/n;->b:[C

    aget-char v4, v4, v2

    iget v5, p0, Lf7/c0;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-ne v4, v5, :cond_6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lf7/c0;->b:I

    add-int/2addr v2, v1

    const/4 v1, 0x4

    invoke-static {v0, v4, v2, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v1

    invoke-virtual {p0, v1}, Lf7/c0;->m(I)I

    move-result v1

    iget v2, p0, Lf7/c0;->b:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget v2, p0, Lf7/c0;->b:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Lq8/l;

    iget p0, p0, Lf7/c0;->b:I

    add-int/lit8 p0, p0, -0x1

    const-string v1, "Did not close quotation marks"

    invoke-direct {v0, v1, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v3
.end method

.method public static final c(Lf7/c0;)I
    .locals 5

    const-string v0, "regex"

    sget-object v1, Lq8/n;->g:Lr9/i;

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lf7/c0;->b:I

    invoke-virtual {v1, v0, v2}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr9/g;->b()Lo9/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lo9/b;->l:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lf7/c0;->m(I)I

    move-result v1

    iget v2, p0, Lf7/c0;->b:I

    const/4 v3, 0x4

    const/16 v4, 0x29

    invoke-static {v0, v4, v2, v3}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    invoke-virtual {p0, v0}, Lf7/c0;->m(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final d(Lf7/c0;CLf7/c0;)Z
    .locals 5

    iget v0, p0, Lf7/c0;->b:I

    :cond_0
    iget v1, p0, Lf7/c0;->b:I

    invoke-static {p0}, Lq8/n;->a(Lf7/c0;)I

    iget v2, p0, Lf7/c0;->b:I

    iget-object v3, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lf7/c0;->c()V

    const/16 v2, 0x28

    if-ne p1, v2, :cond_3

    :try_start_0
    new-instance v2, Lq8/e;

    invoke-direct {v2}, Lq8/g;-><init>()V

    iget-object v4, p2, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v4, Lq8/g;

    invoke-virtual {v4, v2}, Lq8/g;->b(Lq8/d;)V

    iput-object v2, p2, Lf7/c0;->c:Ljava/lang/Object;

    iget v2, p2, Lf7/c0;->b:I

    add-int/2addr v2, v3

    iput v2, p2, Lf7/c0;->b:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Lf7/c0;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lq8/l;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lf7/c0;->b:I

    invoke-direct {p2, p1, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_4
    :goto_1
    iget v2, p0, Lf7/c0;->b:I

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lq8/n;->a(Lf7/c0;)I

    iget p0, p0, Lf7/c0;->b:I

    if-ge v0, p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Lf7/c0;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lq8/n;->c(Lf7/c0;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    sget-object v3, Lq8/n;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "str"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lf7/c0;->b:I

    invoke-static {v4, v3, v5, v1}, Lr9/r;->R(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_6

    invoke-static {p0}, Lq8/n;->b(Lf7/c0;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_2
    invoke-static {p0}, Lq8/n;->c(Lf7/c0;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lq8/n;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "o"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lf7/c0;->i(Lf7/c0;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lf7/c0;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lq8/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Lq8/l;

    const-string v1, "Missing key (dangling prefix operator)"

    iget p0, p0, Lf7/c0;->b:I

    invoke-direct {v0, v1, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lq8/l;

    const-string v1, "A key cannot be named like the reserved word \'"

    const-string v2, "\', surround it with quotation marks"

    invoke-static {v1, v3, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lf7/c0;->b:I

    invoke-direct {v0, v1, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static final f(Lf7/c0;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lq8/n;->a(Lf7/c0;)I

    move-result v0

    sget-object v1, Lq8/n;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lf7/c0;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    if-ltz v0, :cond_2

    iget v1, p0, Lf7/c0;->b:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lf7/c0;->b:I

    return-object v3

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p0}, Lq8/n;->a(Lf7/c0;)I

    return-object v2
.end method

.method public static final g(Lf7/c0;)Ljava/lang/String;
    .locals 3

    const-string v0, "}"

    invoke-static {p0, v0}, Lf7/c0;->i(Lf7/c0;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lf7/c0;->b:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lf7/c0;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf7/c0;->c()V

    return-object v0

    :cond_0
    new-instance v1, Lq8/l;

    iget p0, p0, Lf7/c0;->b:I

    add-int/2addr p0, v0

    const-string v0, "Missing closing bracket \'}\' for placeholder"

    invoke-direct {v1, v0, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static final h(Lf7/c0;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lq8/n;->b(Lf7/c0;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lq8/n;->c(Lf7/c0;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lf7/c0;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lq8/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lq8/l;

    const-string v1, "Missing value (dangling operator)"

    iget p0, p0, Lf7/c0;->b:I

    invoke-direct {v0, v1, p0}, Lq8/l;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x27

    invoke-static {p0, v0}, Lr9/k;->r0(Ljava/lang/String;C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lr9/k;->r0(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lq8/n;->f:Lr9/i;

    sget-object v1, Lq8/a;->p:Lq8/a;

    invoke-virtual {v0, p0, v1}, Lr9/i;->h(Ljava/lang/String;Li9/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
