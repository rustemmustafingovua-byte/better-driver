.class public abstract Lb6/i;
.super Lb6/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final o:Le6/o;

.field public final p:Le6/h;

.field public final q:Lb6/h;

.field public final r:I

.field public final s:La6/k;

.field public final transient t:Ls5/k;

.field public transient u:Lf8/u3;

.field public transient v:Lf6/v;

.field public transient w:Ljava/text/DateFormat;

.field public x:Lg5/l;


# direct methods
.method public constructor <init>(Le6/n;Lb6/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lb6/i;->o:Le6/o;

    iput-object v0, p0, Lb6/i;->o:Le6/o;

    .line 3
    iget-object p1, p1, Lb6/i;->p:Le6/h;

    iput-object p1, p0, Lb6/i;->p:Le6/h;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lb6/i;->s:La6/k;

    .line 5
    iput-object p2, p0, Lb6/i;->q:Lb6/h;

    .line 6
    iget p2, p2, Lb6/h;->x:I

    .line 7
    iput p2, p0, Lb6/i;->r:I

    .line 8
    iput-object p1, p0, Lb6/i;->t:Ls5/k;

    return-void
.end method

.method public constructor <init>(Le6/n;Lb6/h;Ls5/k;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lb6/i;->o:Le6/o;

    iput-object v0, p0, Lb6/i;->o:Le6/o;

    .line 11
    iget-object p1, p1, Lb6/i;->p:Le6/h;

    iput-object p1, p0, Lb6/i;->p:Le6/h;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p3}, Ls5/k;->f0()La6/k;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb6/i;->s:La6/k;

    .line 13
    iput-object p2, p0, Lb6/i;->q:Lb6/h;

    .line 14
    iget p1, p2, Lb6/h;->x:I

    .line 15
    iput p1, p0, Lb6/i;->r:I

    .line 16
    iput-object p3, p0, Lb6/i;->t:Ls5/k;

    return-void
.end method

.method public constructor <init>(Le6/n;Le6/h;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lb6/i;->o:Le6/o;

    iput-object v0, p0, Lb6/i;->o:Le6/o;

    .line 19
    iput-object p2, p0, Lb6/i;->p:Le6/h;

    .line 20
    iget-object p2, p1, Lb6/i;->q:Lb6/h;

    iput-object p2, p0, Lb6/i;->q:Lb6/h;

    .line 21
    iget p2, p1, Lb6/i;->r:I

    iput p2, p0, Lb6/i;->r:I

    .line 22
    iget-object p2, p1, Lb6/i;->s:La6/k;

    iput-object p2, p0, Lb6/i;->s:La6/k;

    .line 23
    iget-object p1, p1, Lb6/i;->t:Ls5/k;

    iput-object p1, p0, Lb6/i;->t:Ls5/k;

    return-void
.end method

.method public constructor <init>(Le6/o;)V
    .locals 1

    sget-object v0, Le6/h;->n:Le6/h;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lb6/i;->p:Le6/h;

    .line 26
    iput-object p1, p0, Lb6/i;->o:Le6/o;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lb6/i;->r:I

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lb6/i;->s:La6/k;

    .line 29
    iput-object p1, p0, Lb6/i;->q:Lb6/h;

    return-void
.end method

.method public static E0(Ls5/k;Ls5/n;Ljava/lang/String;)Lh6/b;
    .locals 3

    invoke-virtual {p0}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lb6/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/b;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p2
.end method

.method public static y0(Ljava/lang/Class;Ls5/k;Ls5/n;)V
    .locals 2

    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trailing token (of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") found after value (bound as "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): not allowed as per `DeserializationFeature.FAIL_ON_TRAILING_TOKENS`"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lh6/b;

    invoke-direct {p2, p1, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final varargs A0(Lb6/n;Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p1}, Lb6/n;->handledType()Ljava/lang/Class;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-static {p0, p2, p3}, Lb6/i;->E0(Ls5/k;Ls5/n;Ljava/lang/String;)Lh6/b;

    move-result-object p0

    throw p0
.end method

.method public final varargs B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->t()Ls5/n;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "), expected "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lb6/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method

.method public final C0(Lf6/v;)V
    .locals 3

    iget-object v0, p0, Lb6/i;->v:Lf6/v;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lf6/v;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    iget-object v0, v0, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, v0

    :goto_1
    if-lt v1, v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iput-object p1, p0, Lb6/i;->v:Lf6/v;

    return-void
.end method

.method public final D0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lh6/c;
    .locals 4

    invoke-static {p2}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lb6/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " from String "

    const-string v2, ": "

    const-string v3, "Cannot deserialize value of type "

    invoke-static {v3, p2, v1, v0, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lh6/c;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p3, p0, p2, p1}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {v0, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method public final N(Ls5/k;)Lu6/z;
    .locals 4

    new-instance v0, Lu6/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ls5/c;->m:Ls5/c;

    iput-object v1, v0, Lu6/z;->p:Ls5/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lu6/z;->y:Z

    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object v2

    iput-object v2, v0, Lu6/z;->m:Ls5/o;

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object v2

    iput-object v2, v0, Lu6/z;->p:Ls5/c;

    invoke-virtual {p1}, Ls5/k;->e0()Ls5/m;

    move-result-object v2

    iput-object v2, v0, Lu6/z;->n:Ls5/m;

    sget v2, Lu6/z;->A:I

    iput v2, v0, Lu6/z;->o:I

    new-instance v2, Ly5/f;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Ly5/f;-><init>(ILy5/f;Lg5/i;)V

    iput-object v2, v0, Lu6/z;->z:Ly5/f;

    new-instance v2, Lu6/y;

    invoke-direct {v2}, Lu6/y;-><init>()V

    iput-object v2, v0, Lu6/z;->u:Lu6/y;

    iput-object v2, v0, Lu6/z;->t:Lu6/y;

    iput v1, v0, Lu6/z;->v:I

    invoke-virtual {p1}, Ls5/k;->k()Z

    move-result v2

    iput-boolean v2, v0, Lu6/z;->q:Z

    invoke-virtual {p1}, Ls5/k;->e()Z

    move-result p1

    iput-boolean p1, v0, Lu6/z;->r:Z

    iget-boolean v2, v0, Lu6/z;->q:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Lu6/z;->s:Z

    sget-object p1, Lb6/j;->n:Lb6/j;

    invoke-virtual {p0, p1}, Lb6/i;->n0(Lb6/j;)Z

    return-object v0
.end method

.method public final O(Ljava/lang/Class;)Lb6/l;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p0, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract P(Ljava/lang/Object;)Lb6/n;
.end method

.method public Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final R(Lt6/f;Ljava/lang/Class;I)I
    .locals 6

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    iget-object p2, p0, Lb6/h;->w:Ld6/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Ld6/b;->n:[Ld6/o;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld6/o;->m:[I

    invoke-static {p3}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p2, Ld6/b;->m:Ld6/o;

    iget-object v0, v0, Ld6/o;->m:[I

    invoke-static {p3}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-static {p3}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    sget-object v1, Lt6/f;->q:Lt6/f;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lb6/j;->I:Lb6/j;

    invoke-virtual {p0, p1}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_3
    if-ne p1, v1, :cond_5

    sget-object p1, Lb6/j;->J:Lb6/j;

    invoke-virtual {p0, p1}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_4
    sget-object v0, Lt6/f;->t:Lt6/f;

    if-ne p1, v0, :cond_5

    sget-object v0, Lb6/j;->t:Lb6/j;

    invoke-virtual {p0, v0}, Lb6/h;->t(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_0
    sget-object v0, Lt6/f;->r:Lt6/f;

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_7

    sget-object v1, Lt6/f;->s:Lt6/f;

    if-eq p1, v1, :cond_7

    sget-object v1, Lt6/f;->w:Lt6/f;

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v4

    :goto_2
    if-eqz v1, :cond_8

    sget-object v5, Lb6/x;->S:Lb6/x;

    invoke-virtual {p0, v5}, Ld6/m;->m(Lb6/x;)Z

    move-result v5

    if-nez v5, :cond_8

    if-ne p1, v0, :cond_a

    if-eq p3, v2, :cond_8

    goto :goto_4

    :cond_8
    const/16 v0, 0xa

    if-ne p3, v0, :cond_c

    sget-object p2, Lt6/f;->x:Lt6/f;

    if-ne p1, p2, :cond_9

    :goto_3
    return v3

    :cond_9
    if-nez v1, :cond_b

    sget-object p1, Lb6/j;->H:Lb6/j;

    invoke-virtual {p0, p1}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    return v4

    :cond_b
    :goto_5
    return v2

    :cond_c
    iget p0, p2, Ld6/b;->l:I

    return p0
.end method

.method public final S(Lt6/f;Ljava/lang/Class;)I
    .locals 3

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    iget-object p2, p0, Lb6/h;->w:Ld6/b;

    iget-object v0, p2, Ld6/b;->m:Ld6/o;

    iget-object p2, p2, Ld6/b;->n:[Ld6/o;

    const/16 v1, 0x9

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object p2, p2, v2

    if-eqz p2, :cond_0

    iget-object v2, p2, Ld6/o;->l:Ljava/lang/Boolean;

    iget-object p2, p2, Ld6/o;->m:[I

    aget p2, p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, v0, Ld6/o;->l:Ljava/lang/Boolean;

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, v0, Ld6/o;->m:[I

    aget p2, p2, v1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    return p2

    :cond_4
    sget-object p2, Lt6/f;->r:Lt6/f;

    const/4 v0, 0x3

    if-eq p1, p2, :cond_7

    sget-object p2, Lt6/f;->q:Lt6/f;

    if-eq p1, p2, :cond_7

    sget-object p2, Lt6/f;->s:Lt6/f;

    if-eq p1, p2, :cond_7

    sget-object p2, Lt6/f;->w:Lt6/f;

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lb6/j;->H:Lb6/j;

    invoke-virtual {p0, p1}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method public final T(Lb6/l;Lb6/f;)Lb6/n;
    .locals 2

    iget-object v0, p0, Lb6/i;->o:Le6/o;

    iget-object v1, p0, Lb6/i;->p:Le6/h;

    invoke-virtual {v0, p0, v1, p1}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p0

    return-object p0
.end method

.method public final U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v2, "No \'injectableValues\' configured, cannot inject value with id [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v0
.end method

.method public final V(Lb6/l;)Lb6/w;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb6/i;->o:Le6/o;

    iget-object v1, p0, Lb6/i;->p:Le6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, p1}, Le6/o;->x(Lb6/i;Le6/h;Lb6/l;)Lb6/w;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final W(Lb6/l;)Lb6/n;
    .locals 2

    iget-object v0, p0, Lb6/i;->o:Le6/o;

    iget-object v1, p0, Lb6/i;->p:Le6/h;

    invoke-virtual {v0, p0, v1, p1}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object p0

    return-object p0
.end method

.method public abstract X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;
.end method

.method public final Y(Lb6/l;)Lb6/n;
    .locals 3

    iget-object v0, p0, Lb6/i;->o:Le6/o;

    iget-object v1, p0, Lb6/i;->p:Le6/h;

    invoke-virtual {v0, p0, v1, p1}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v1, p0, p1}, Le6/c;->S(Lb6/h;Lb6/l;)Lo6/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object p0

    new-instance p1, Lf6/d0;

    invoke-direct {p1, p0, v0}, Lf6/d0;-><init>(Ln6/d;Lb6/n;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final Z()Lf8/u3;
    .locals 2

    iget-object v0, p0, Lb6/i;->u:Lf8/u3;

    if-nez v0, :cond_0

    new-instance v0, Lf8/u3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lf8/u3;->a:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->b:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->c:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->d:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->e:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->f:Ljava/lang/Object;

    iput-object v1, v0, Lf8/u3;->g:Ljava/lang/Object;

    iput-object v0, p0, Lb6/i;->u:Lf8/u3;

    :cond_0
    iget-object p0, p0, Lb6/i;->u:Lf8/u3;

    return-object p0
.end method

.method public final a0(Lb6/n;)V
    .locals 2

    sget-object v0, Lb6/x;->U:Lb6/x;

    iget-object v1, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid configuration: values of type "

    const-string v1, " cannot be merged"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {v0, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method public final b0(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lu6/h;->D(Ljava/lang/Throwable;)V

    sget-object v0, Lb6/j;->D:Lb6/j;

    invoke-virtual {p0, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lb6/i;->m0(Ljava/lang/Class;Ljava/lang/Throwable;)Lh6/b;

    move-result-object p0

    throw p0
.end method

.method public final varargs c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p4, 0x0

    const-string v0, "Cannot construct instance of "

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Le6/c0;->m()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, " (no Creators, like default constructor, exist): "

    invoke-static {v0, p2, v1, p3}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw p4

    :cond_1
    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " (although at least one Creator exists): "

    invoke-static {v0, p1, p2, p3}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lb6/i;->w0(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p4

    :cond_2
    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ": "

    invoke-static {v0, p2, v1, p3}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw p4
.end method

.method public final d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;
    .locals 3

    instance-of v0, p1, Le6/k;

    if-eqz v0, :cond_0

    new-instance v0, Lg5/l;

    iget-object v1, p0, Lb6/i;->x:Lg5/l;

    const/16 v2, 0xd

    invoke-direct {v0, v2, p3, v1}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lb6/i;->x:Lg5/l;

    :try_start_0
    check-cast p1, Le6/k;

    invoke-interface {p1, p0, p2}, Le6/k;->a(Lb6/i;Lb6/f;)Lb6/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lb6/i;->x:Lg5/l;

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Lg5/l;

    iput-object p2, p0, Lb6/i;->x:Lg5/l;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lb6/i;->x:Lg5/l;

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Lg5/l;

    iput-object p2, p0, Lb6/i;->x:Lg5/l;

    throw p1

    :cond_0
    return-object p1
.end method

.method public final e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;
    .locals 3

    instance-of v0, p1, Le6/k;

    if-eqz v0, :cond_0

    new-instance v0, Lg5/l;

    iget-object v1, p0, Lb6/i;->x:Lg5/l;

    const/16 v2, 0xd

    invoke-direct {v0, v2, p3, v1}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lb6/i;->x:Lg5/l;

    :try_start_0
    check-cast p1, Le6/k;

    invoke-interface {p1, p0, p2}, Le6/k;->a(Lb6/i;Lb6/f;)Lb6/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lb6/i;->x:Lg5/l;

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Lg5/l;

    iput-object p2, p0, Lb6/i;->x:Lg5/l;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lb6/i;->x:Lg5/l;

    iget-object p2, p2, Lg5/l;->n:Ljava/lang/Object;

    check-cast p2, Lg5/l;

    iput-object p2, p0, Lb6/i;->x:Lg5/l;

    throw p1

    :cond_0
    return-object p1
.end method

.method public final f0(Lb6/l;Ls5/k;)V
    .locals 6

    invoke-virtual {p2}, Ls5/k;->t()Ls5/n;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final varargs g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p5

    if-lez v0, :cond_0

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    iget-object p5, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p4, :cond_2

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_1

    const-string p4, "Unexpected end-of-input when trying read value of type "

    invoke-static {p4, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ls5/n;->a(Ls5/n;)Ljava/lang/String;

    move-result-object p4

    const-string p5, " from "

    const-string v0, " (token `JsonToken."

    const-string v1, "Cannot deserialize value of type "

    invoke-static {v1, p1, p5, p4, v0}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "`)"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-boolean p1, p2, Ls5/n;->s:Z

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Ls5/k;->h0()Ljava/lang/String;

    :cond_3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p4, p1}, Lb6/i;->x0(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h0(Ljava/lang/Class;Ls5/k;)V
    .locals 6

    invoke-virtual {p0, p1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {p2}, Ls5/k;->t()Ls5/n;

    move-result-object v2

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lb6/i;->g0(Lb6/l;Ls5/n;Ls5/k;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final varargs i0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lb6/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, " from String "

    const-string v1, ": "

    const-string v2, "Cannot deserialize Map key of type "

    invoke-static {v2, p1, v0, p4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lh6/c;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p3, p0, p1, p2}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p3
.end method

.method public final varargs j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, " from number "

    const-string v1, ": "

    const-string v2, "Cannot deserialize value of type "

    invoke-static {v2, p1, v0, p4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lh6/c;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p3, p0, p1, p2}, Lh6/c;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p3
.end method

.method public final varargs k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iget-object p4, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, p3}, Lb6/i;->D0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lh6/c;

    move-result-object p0

    throw p0
.end method

.method public final l0(I)Z
    .locals 0

    iget p0, p0, Lb6/i;->r:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m0(Ljava/lang/Class;Ljava/lang/Throwable;)Lh6/b;
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "N/A"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot construct instance of "

    const-string v3, ", problem: "

    invoke-static {v2, v1, v3, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    new-instance p1, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p1, p0, v0, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final n0(Lb6/j;)Z
    .locals 0

    iget p0, p0, Lb6/i;->r:I

    iget p1, p1, Lb6/j;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o0(Ls5/r;)Z
    .locals 0

    iget-object p0, p0, Lb6/i;->s:La6/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/r;->b()I

    move-result p1

    iget p0, p0, La6/k;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract p0(Ljava/lang/Object;)Lb6/w;
.end method

.method public final q0()Lf6/v;
    .locals 2

    iget-object v0, p0, Lb6/i;->v:Lf6/v;

    if-nez v0, :cond_0

    new-instance p0, Lf6/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lb6/i;->v:Lf6/v;

    return-object v0
.end method

.method public final r()Ld6/m;
    .locals 0

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    return-object p0
.end method

.method public final r0(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lb6/i;->w:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    iget-object v0, v0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->q:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lb6/i;->w:Ljava/text/DateFormat;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to parse Date value \'"

    const-string v2, "\': "

    invoke-static {v1, p1, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs s0(Lj6/t;Lj6/v;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    sget-object p4, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-interface {p2}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p4, " (of type "

    const-string v0, "): "

    const-string v1, "Invalid definition for property "

    invoke-static {v1, p2, p4, p1, v0}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public final varargs t0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string p3, "Invalid type definition for type "

    const-string v0, ": "

    invoke-static {p3, p1, v0, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public final u()Lt6/p;
    .locals 0

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    return-object p0
.end method

.method public final varargs u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lb6/f;->getType()Lb6/l;

    :goto_0
    new-instance p3, Lh6/b;

    const/4 v0, 0x0

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p3, p0, p2, v0}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lb6/f;->d()Lj6/h;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p1}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    throw p3
.end method

.method public final varargs v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1}, Lb6/n;->handledType()Ljava/lang/Class;

    new-instance p1, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p1, p0, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;
    .locals 2

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not resolve type id \'"

    const-string v1, "\' as a subtype of "

    invoke-static {v0, p2, v1, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lb6/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh6/d;

    const/4 p3, 0x0

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p2, p0, p1, p3}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final varargs w0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public final varargs x0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Lh6/b;

    const/4 v0, 0x0

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p2, p0, p1, v0}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method

.method public final z0(Lf6/r;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p2}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lf6/r;->m:Lb6/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Object Id found for an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", to assign to property \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lf6/r;->p:Le6/y;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lb6/i;->u0(Lb6/f;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
