.class public abstract Lpb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field public l:Lpb/h;

.field public final m:Lpb/m;

.field public n:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lpb/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpb/i;->n:Ljava/util/ArrayList;

    iput-object p1, p0, Lpb/i;->m:Lpb/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public A(I)Lpb/i;
    .locals 0

    return-object p0
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method public D()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public E()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract F()I
.end method

.method public abstract G()I
.end method

.method public H()Z
    .locals 0

    invoke-virtual {p0}, Lpb/i;->getDimension()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I(Lpb/i;)Z
    .locals 6

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb/h;->h(Lpb/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lpb/i;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lpb/x;

    invoke-static {p0, p1}, La/a;->m(Lpb/x;Lpb/i;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lpb/i;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lpb/x;

    invoke-static {p1, p0}, La/a;->m(Lpb/x;Lpb/i;)Z

    move-result p0

    return p0

    :cond_2
    sget-boolean v0, Lpb/n;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Lgc/g;

    invoke-direct {v0}, Lgc/a;-><init>()V

    invoke-static {p0, p1, v0}, Lcc/a;->d(Lpb/i;Lpb/i;Lgc/a;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lpb/i;->G()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lpb/i;->G()I

    move-result v0

    if-ne v0, v2, :cond_8

    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lpb/i;->E()I

    move-result v2

    if-ge v0, v2, :cond_7

    move v2, v1

    :goto_2
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p0, v0}, Lpb/i;->A(I)Lpb/i;

    move-result-object v4

    invoke-virtual {p1, v2}, Lpb/i;->A(I)Lpb/i;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpb/i;->I(Lpb/i;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return v1

    :cond_8
    invoke-static {p0, p1}, Lb0/l1;->y(Lpb/i;Lpb/i;)Lpb/o;

    move-result-object p0

    iget-object p0, p0, Lpb/o;->l:[[I

    aget-object p1, p0, v1

    aget v0, p1, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    aget p1, p1, v3

    if-ne p1, v2, :cond_9

    aget-object p0, p0, v3

    aget p1, p0, v1

    if-ne p1, v2, :cond_9

    aget p0, p0, v3

    if-ne p0, v2, :cond_9

    move v1, v3

    :cond_9
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public abstract L()Z
.end method

.method public M(Lpb/i;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract a(Lc5/o;)V
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Lpb/i;

    invoke-virtual {p0}, Lpb/i;->G()I

    move-result v1

    invoke-virtual {v0}, Lpb/i;->G()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lpb/i;->G()I

    move-result p0

    invoke-virtual {v0}, Lpb/i;->G()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0}, Lpb/i;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpb/i;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lpb/i;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {v0}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lpb/i;->i(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lpb/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lpb/i;

    if-eq p0, p1, :cond_2

    invoke-virtual {p0, p1}, Lpb/i;->r(Lpb/i;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public abstract f(Lg5/e;)V
.end method

.method public abstract getDimension()I
.end method

.method public abstract h(Lpb/l;)V
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    invoke-virtual {p0}, Lpb/h;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j()Lpb/h;
.end method

.method public final l(Lpb/i;)Z
    .locals 5

    invoke-virtual {p0}, Lpb/i;->N()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lpb/x;

    new-instance v0, Lb0/l1;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lb0/l1;-><init>(IZ)V

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    iput-object p0, v0, Lb0/l1;->m:Ljava/lang/Object;

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v3

    invoke-virtual {p0, v3}, Lpb/h;->a(Lpb/h;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lb0/l1;->s(Lpb/i;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return v2

    :cond_1
    return v1

    :cond_2
    sget-boolean v0, Lpb/n;->a:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    new-instance v0, Lgc/h;

    invoke-direct {v0}, Lgc/a;-><init>()V

    new-instance v1, Lpb/o;

    invoke-direct {v1}, Lpb/o;-><init>()V

    iput-object v1, v0, Lgc/h;->b:Lpb/o;

    invoke-virtual {v1, v3, v3, v3}, Lpb/o;->f(III)V

    invoke-static {p0, p1, v0}, Lcc/a;->d(Lpb/i;Lpb/i;Lgc/a;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lpb/i;->getDimension()I

    move-result v0

    if-ge v0, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lpb/i;->getDimension()I

    move-result v0

    if-ge v0, v1, :cond_5

    invoke-virtual {p1}, Lpb/i;->D()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb/h;->a(Lpb/h;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-static {p0, p1}, Lb0/l1;->y(Lpb/i;Lpb/i;)Lpb/o;

    move-result-object p0

    invoke-virtual {p0}, Lpb/o;->a()Z

    move-result p0

    return p0
.end method

.method public final o()Lpb/i;
    .locals 3

    invoke-virtual {p0}, Lpb/i;->p()Lpb/i;

    move-result-object v0

    iget-object v1, p0, Lpb/i;->l:Lpb/h;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lpb/h;

    invoke-direct {v2, v1}, Lpb/h;-><init>(Lpb/h;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lpb/i;->l:Lpb/h;

    iget-object p0, p0, Lpb/i;->n:Ljava/util/ArrayList;

    iput-object p0, v0, Lpb/i;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract p()Lpb/i;
.end method

.method public abstract r(Lpb/i;)Z
.end method

.method public abstract s()Lpb/i;
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ld7/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lac/a;->l:Lac/a;

    sget-object v2, Lac/a;->m:Lac/a;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    iget-object v2, p0, Lpb/i;->m:Lpb/m;

    iget-object v2, v2, Lpb/m;->l:Lpb/a0;

    invoke-virtual {v2}, Lpb/a0;->a()I

    move-result v2

    new-instance v5, Lac/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast v3, Ljava/text/DecimalFormat;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iput-object v3, v5, Lac/b;->a:Ljava/text/DecimalFormat;

    new-instance v2, Lg5/e;

    invoke-direct {v2, v1}, Lg5/e;-><init>(Ljava/util/EnumSet;)V

    invoke-virtual {p0, v2}, Lpb/i;->f(Lg5/e;)V

    iget-object v1, v2, Lg5/e;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/EnumSet;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ld7/g;->e(Lpb/i;Ljava/util/EnumSet;ILjava/io/StringWriter;Lac/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create DecimalFormat for Locale.US"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 p0, 0x0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract u()I
.end method

.method public abstract v()Lpb/a;
.end method

.method public abstract x()[Lpb/a;
.end method

.method public final z()Lpb/h;
    .locals 1

    iget-object v0, p0, Lpb/i;->l:Lpb/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpb/i;->j()Lpb/h;

    move-result-object v0

    iput-object v0, p0, Lpb/i;->l:Lpb/h;

    :cond_0
    new-instance v0, Lpb/h;

    iget-object p0, p0, Lpb/i;->l:Lpb/h;

    invoke-direct {v0, p0}, Lpb/h;-><init>(Lpb/h;)V

    return-object v0
.end method
