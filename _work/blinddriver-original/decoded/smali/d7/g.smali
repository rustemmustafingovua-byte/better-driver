.class public Ld7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/i;
.implements Ly8/g;
.implements Lx1/a;
.implements Lj4/b;


# static fields
.field public static m:Ld7/g;


# instance fields
.field public final synthetic l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Ld7/g;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld7/g;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc2/l0;)V
    .locals 0

    const/16 p1, 0x14

    iput p1, p0, Ld7/g;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lbb/e;JZ)V
    .locals 5

    sget-object v0, Lbb/e;->h:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lbb/e;->l:Lbb/e;

    if-nez v0, :cond_0

    new-instance v0, Lbb/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbb/e;->l:Lbb/e;

    new-instance v0, Lbb/b;

    const-string v1, "Okio Watchdog"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lbb/w;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lbb/e;->g:J

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lbb/e;->g:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lbb/w;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lbb/e;->g:J

    :goto_0
    iget-wide p1, p0, Lbb/e;->g:J

    sub-long/2addr p1, v0

    sget-object p3, Lbb/e;->l:Lbb/e;

    invoke-static {p3}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, p3, Lbb/e;->f:Lbb/e;

    if-eqz v2, :cond_4

    iget-wide v3, v2, Lbb/e;->g:J

    sub-long/2addr v3, v0

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    move-object p3, v2

    goto :goto_1

    :cond_4
    :goto_2
    iput-object v2, p0, Lbb/e;->f:Lbb/e;

    iput-object p0, p3, Lbb/e;->f:Lbb/e;

    sget-object p0, Lbb/e;->l:Lbb/e;

    if-ne p3, p0, :cond_5

    sget-object p0, Lbb/e;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static final b(F[F[F)F
    .locals 7

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_0

    aget p0, p2, v2

    mul-float/2addr v1, p0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    add-int/lit8 v3, v2, -0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    cmpg-float p2, v0, v5

    if-nez p2, :cond_1

    return v5

    :cond_1
    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :cond_2
    const/4 p0, -0x1

    if-ne v3, p0, :cond_3

    const/4 p0, 0x0

    aget p1, p1, p0

    aget p0, p2, p0

    move p2, p1

    move p1, v5

    move v3, p1

    goto :goto_0

    :cond_3
    aget p0, p1, v3

    aget p1, p1, v2

    aget v3, p2, v3

    aget p2, p2, v2

    move v6, p1

    move p1, p0

    move p0, p2

    move p2, v6

    :goto_0
    cmpg-float v2, p1, p2

    if-nez v2, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p0, v3

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    mul-float/2addr p0, v1

    return p0
.end method

.method public static f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V
    .locals 1

    sget-object v0, Lac/a;->n:Lac/a;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_0
    sget-object v0, Lac/a;->o:Lac/a;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "M"

    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_1
    return-void
.end method

.method public static i()Lbb/e;
    .locals 7

    sget-object v0, Lbb/e;->l:Lbb/e;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lbb/e;->f:Lbb/e;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v0, Lbb/e;->i:Ljava/util/concurrent/locks/Condition;

    sget-wide v4, Lbb/e;->j:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lbb/e;->l:Lbb/e;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lbb/e;->f:Lbb/e;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lbb/e;->k:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    sget-object v0, Lbb/e;->l:Lbb/e;

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Lbb/e;->g:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    sget-object v0, Lbb/e;->i:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v1

    :cond_2
    sget-object v2, Lbb/e;->l:Lbb/e;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v0, Lbb/e;->f:Lbb/e;

    iput-object v3, v2, Lbb/e;->f:Lbb/e;

    iput-object v1, v0, Lbb/e;->f:Lbb/e;

    const/4 v1, 0x2

    iput v1, v0, Lbb/e;->e:I

    return-object v0
.end method

.method public static k(Landroidx/lifecycle/g1;Landroidx/lifecycle/s0;I)Landroidx/lifecycle/e1;
    .locals 1

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    instance-of p1, p0, Landroidx/lifecycle/k;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/k;

    invoke-interface {p1}, Landroidx/lifecycle/k;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lf4/b;->a:Lf4/b;

    :cond_1
    :goto_0
    instance-of p2, p0, Landroidx/lifecycle/k;

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/k;

    invoke-interface {p2}, Landroidx/lifecycle/k;->getDefaultViewModelCreationExtras()Ld4/b;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Ld4/a;->b:Ld4/a;

    :goto_1
    const-string v0, "factory"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/e1;

    invoke-interface {p0}, Landroidx/lifecycle/g1;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/e1;-><init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lbb/j;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcb/b;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcb/b;->a(C)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lbb/j;

    invoke-direct {p0, v1}, Lbb/j;-><init>([B)V

    return-object p0

    :cond_1
    const-string v0, "Unexpected hex string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m(Ljava/lang/String;)Lbb/j;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbb/j;

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbb/j;-><init>([B)V

    iput-object p0, v0, Lbb/j;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static n(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/fonts/Font;
    .locals 6

    new-instance v0, Landroid/graphics/fonts/FontStyle;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-static {v0, v2}, Ld7/g;->q(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-static {v0, v5}, Ld7/g;->q(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v5

    if-ge v5, v2, :cond_0

    move-object v1, v4

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static q(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private final s()V
    .locals 0

    return-void
.end method

.method private final t(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static u(Lpb/a;Lpb/a;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LINESTRING ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lpb/a;->l:D

    iget-wide v3, p0, Lpb/a;->m:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lac/b;->b:Lac/b;

    invoke-virtual {v5, v1, v2}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lpb/a;->l:D

    iget-wide p0, p1, Lpb/a;->m:D

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lqb/a;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LINESTRING "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqb/a;->n:[Lpb/a;

    array-length v2, v1

    if-nez v2, :cond_0

    const-string p0, "EMPTY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Lqb/a;->C(I)D

    move-result-wide v3

    invoke-virtual {p0, v2}, Lqb/a;->n(I)D

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lac/b;->b:Lac/b;

    invoke-virtual {v8, v3, v4}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs w(Landroid/content/pm/PackageInfo;[Ld7/k;)Ld7/k;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Ld7/l;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ld7/l;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Ld7/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final x(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    :goto_0
    move v3, v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    move v3, v2

    move-object v2, p0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :goto_3
    if-eqz p0, :cond_6

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz v3, :cond_5

    sget-object p0, Ld7/m;->a:[Ld7/k;

    invoke-static {v2, p0}, Ld7/g;->w(Landroid/content/pm/PackageInfo;[Ld7/k;)Ld7/k;

    move-result-object p0

    goto :goto_4

    :cond_5
    sget-object p0, Ld7/m;->a:[Ld7/k;

    aget-object p0, p0, v1

    filled-new-array {p0}, [Ld7/k;

    move-result-object p0

    invoke-static {v2, p0}, Ld7/g;->w(Landroid/content/pm/PackageInfo;[Ld7/k;)Ld7/k;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method


# virtual methods
.method public c()V
    .locals 1

    iget p0, p0, Ld7/g;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string v0, "ProfileInstaller"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public d(ILjava/lang/Object;)V
    .locals 2

    iget p0, p0, Ld7/g;->l:I

    packed-switch p0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v0, 0x6

    const-string v1, "ProfileInstaller"

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :pswitch_b
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e(Lpb/i;Ljava/util/EnumSet;ILjava/io/StringWriter;Lac/b;)V
    .locals 11

    instance-of v0, p1, Lpb/w;

    const-string v1, " "

    if-eqz v0, :cond_0

    check-cast p1, Lpb/w;

    const-string v0, "POINT"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object v1, p1, Lpb/w;->o:Lpb/d;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    return-void

    :cond_0
    instance-of v0, p1, Lpb/s;

    if-eqz v0, :cond_1

    check-cast p1, Lpb/s;

    const-string v0, "LINEARRING"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object v1, p1, Lpb/q;->o:Lpb/d;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    return-void

    :cond_1
    instance-of v0, p1, Lpb/q;

    if-eqz v0, :cond_2

    check-cast p1, Lpb/q;

    const-string v0, "LINESTRING"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object v1, p1, Lpb/q;->o:Lpb/d;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    return-void

    :cond_2
    instance-of v0, p1, Lpb/x;

    if-eqz v0, :cond_3

    check-cast p1, Lpb/x;

    const-string v0, "POLYGON"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->g(Lpb/x;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    return-void

    :cond_3
    instance-of v0, p1, Lpb/u;

    const-string v7, ")"

    const-string v8, ", "

    const/4 v3, 0x0

    const-string v4, "("

    const-string v6, "EMPTY"

    if-eqz v0, :cond_7

    check-cast p1, Lpb/u;

    const-string v0, "MULTIPOINT"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    array-length v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v9, v3

    :goto_0
    array-length v0, p1

    if-ge v9, v0, :cond_6

    if-lez v9, :cond_5

    invoke-virtual {p4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    aget-object v0, p1, v9

    check-cast v0, Lpb/w;

    iget-object v1, v0, Lpb/w;->o:Lpb/d;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_7
    instance-of v0, p1, Lpb/t;

    const/4 v9, 0x1

    if-eqz v0, :cond_b

    check-cast p1, Lpb/t;

    const-string v0, "MULTILINESTRING"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    array-length v0, p1

    if-nez v0, :cond_8

    invoke-virtual {p4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, p3

    move v10, v3

    :goto_1
    array-length v1, p1

    if-ge v10, v1, :cond_a

    if-lez v10, :cond_9

    invoke-virtual {p4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    move v4, v9

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_2

    :goto_3
    aget-object v0, p1, v10

    check-cast v0, Lpb/q;

    iget-object v1, v0, Lpb/q;->o:Lpb/d;

    move-object v0, p0

    move-object v2, p2

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    add-int/lit8 v10, v10, 0x1

    move v0, v3

    move v3, v4

    goto :goto_1

    :cond_a
    invoke-virtual {p4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_b
    instance-of v0, p1, Lpb/v;

    if-eqz v0, :cond_f

    check-cast p1, Lpb/v;

    const-string v0, "MULTIPOLYGON"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    array-length v0, p1

    if-nez v0, :cond_c

    invoke-virtual {p4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, p3

    move v10, v3

    :goto_4
    array-length v1, p1

    if-ge v10, v1, :cond_e

    if-lez v10, :cond_d

    invoke-virtual {p4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    move v4, v9

    :goto_5
    move v3, v0

    goto :goto_6

    :cond_d
    move v4, v3

    goto :goto_5

    :goto_6
    aget-object v0, p1, v10

    move-object v1, v0

    check-cast v1, Lpb/x;

    move-object v0, p0

    move-object v2, p2

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Ld7/g;->g(Lpb/x;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    add-int/lit8 v10, v10, 0x1

    move v0, v3

    move v3, v4

    goto :goto_4

    :cond_e
    invoke-virtual {p4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_f
    instance-of v0, p1, Lpb/j;

    if-eqz v0, :cond_13

    check-cast p1, Lpb/j;

    const-string v0, "GEOMETRYCOLLECTION"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p4}, Ld7/g;->f(Ljava/util/EnumSet;Ljava/io/StringWriter;)V

    iget-object p1, p1, Lpb/j;->o:[Lpb/i;

    array-length v0, p1

    if-nez v0, :cond_10

    invoke-virtual {p4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, p3

    move v6, v3

    :goto_7
    array-length v1, p1

    if-ge v6, v1, :cond_12

    if-lez v6, :cond_11

    invoke-virtual {p4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    :cond_11
    move v3, v0

    aget-object v1, p1, v6

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Ld7/g;->e(Lpb/i;Ljava/util/EnumSet;ILjava/io/StringWriter;Lac/b;)V

    add-int/lit8 v6, v6, 0x1

    move v0, v3

    goto :goto_7

    :cond_12
    invoke-virtual {p4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported Geometry implementation:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public g(Lpb/x;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V
    .locals 8

    iget-object p4, p1, Lpb/x;->o:Lpb/s;

    iget-object v0, p1, Lpb/x;->p:[Lpb/s;

    invoke-virtual {p4}, Lpb/q;->L()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p0, "EMPTY"

    invoke-virtual {p5, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p4, "("

    invoke-virtual {p5, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p1, Lpb/x;->o:Lpb/s;

    iget-object v2, p1, Lpb/q;->o:Lpb/d;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_1

    const-string p1, ", "

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    aget-object p1, v0, v1

    iget-object p1, p1, Lpb/q;->o:Lpb/d;

    add-int/lit8 p3, v4, 0x1

    const/4 p4, 0x1

    invoke-virtual/range {p0 .. p6}, Ld7/g;->h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {p5, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lpb/d;Ljava/util/EnumSet;IZLjava/io/StringWriter;Lac/b;)V
    .locals 2

    invoke-interface {p1}, Lpb/d;->size()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EMPTY"

    invoke-virtual {p5, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "("

    invoke-virtual {p5, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Lpb/d;->size()I

    move-result p3

    if-ge p0, p3, :cond_4

    if-lez p0, :cond_1

    const-string p3, ", "

    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p0}, Lpb/d;->C(I)D

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Lpb/d;->n(I)D

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object p3, Lac/a;->n:Lac/a;

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p5, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lpb/d;->q(I)D

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    sget-object p3, Lac/a;->o:Lac/a;

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p5, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lpb/d;->K(I)D

    move-result-wide p3

    invoke-virtual {p6, p3, p4}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    const-string p0, ")"

    invoke-virtual {p5, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public o([Lo3/d;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v4, p1, v2

    iget-object v5, v4, Lo3/d;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "systemfont"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Ld7/g;->p(Lo3/d;)Landroid/graphics/fonts/Font;

    move-result-object v4

    goto :goto_6

    :cond_0
    :try_start_0
    iget-object v5, v4, Lo3/d;->a:Landroid/net/Uri;

    iget-object v6, v4, Lo3/d;->e:Ljava/lang/String;

    const-string v7, "r"

    invoke-virtual {p2, v5, v7, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v4, v1

    goto :goto_6

    :catch_0
    move-exception v4

    goto :goto_5

    :cond_2
    :try_start_1
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v7, v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget v8, v4, Lo3/d;->c:I

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    iget-boolean v8, v4, Lo3/d;->d:Z

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    iget v4, v4, Lo3/d;->b:I

    invoke-virtual {v7, v4}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4, v6}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_3
    :try_start_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    const-string v5, "TypefaceCompatApi29Impl"

    const-string v6, "Font load failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_6
    if-nez v4, :cond_4

    goto :goto_7

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    goto :goto_7

    :cond_5
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public p(Lo3/d;)Landroid/graphics/fonts/Font;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Getting font from Typeface is not supported before API31"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r(III)I
    .locals 8

    int-to-long v0, p1

    long-to-float p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p0, v2

    float-to-long v2, p0

    const/16 p0, 0xa

    int-to-long v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const p0, 0x7fffffdf

    int-to-long v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/32 v0, 0x7fffffdf

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    int-to-long v4, p2

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    long-to-int p0, v2

    return p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Java array size exceeded (current length: %d, elements: %d, expected additions: %d)"

    invoke-direct {p0, p3, p2, p1}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ld7/g;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CompositionErrorContext"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
