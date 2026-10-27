.class public abstract La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/Boolean;

.field public static d:Ljava/lang/Boolean;

.field public static e:Ljava/lang/Boolean;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Landroid/text/Spannable;JII)V
    .locals 2

    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, p2}, Lm1/v;->y(J)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-interface {p0, v0, p3, p4, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static final B(Landroid/text/Spannable;JLb3/c;II)V
    .locals 6

    invoke-static {p1, p2}, Lb3/o;->b(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    invoke-static {v0, v1, v2, v3}, Lb3/p;->a(JJ)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_0

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-interface {p3, p1, p2}, Lb3/c;->p0(J)F

    move-result p1

    invoke-static {p1}, Ll9/a;->z(F)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-interface {p0, v0, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_0
    const-wide v4, 0x200000000L

    invoke-static {v0, v1, v4, v5}, Lb3/p;->a(JJ)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    invoke-static {p1, p2}, Lb3/o;->c(J)F

    move-result p1

    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p0, p3, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public static final C(Landroid/text/Spannable;Lw2/b;II)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lw2/b;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    iget-object v1, v1, Lw2/a;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    new-instance p1, Landroid/text/style/LocaleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/LocaleList;)V

    const/16 v0, 0x21

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public static D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static final E(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lt8/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lt8/l;

    iget-object p0, p0, Lt8/l;->l:Ljava/lang/Throwable;

    throw p0
.end method

.method public static a([Lmb/x3;)[Lmb/r0;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    instance-of v4, v4, Lmb/r0;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lmb/r0;

    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    instance-of v5, v4, Lmb/r0;

    if-eqz v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    check-cast v4, Lmb/r0;

    aput-object v4, v0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static b([Lmb/x3;)I
    .locals 1

    const-string v0, "private"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "protected"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "public"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static c([Lmb/x3;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(Lhb/c;[Ljava/lang/String;)[Lmb/n0;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lmb/n0;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lmb/n0;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lmb/n0;-><init>(Lhb/c;Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static e(Ljava/lang/StringBuilder;Ljava/lang/Object;Li9/c;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static f(Ljava/util/Set;Ljava/util/Set;)La6/n;
    .locals 1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, La6/n;

    invoke-direct {v0, p0, p1}, La6/n;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static final g(Ljava/lang/Throwable;)Lt8/l;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt8/l;

    invoke-direct {v0, p0}, Lt8/l;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(Lgc/b;Lpb/a;Lpb/a;)Lgc/b;
    .locals 10

    new-instance v0, Lgc/b;

    iget-boolean v1, p0, Lgc/b;->l:Z

    iget v3, p0, Lgc/b;->n:I

    iget-object v5, p0, Lgc/b;->t:Lpb/i;

    iget-boolean v6, p0, Lgc/b;->p:Z

    iget-object v8, p0, Lgc/b;->q:Lpb/a;

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lgc/b;-><init>(ZIIILpb/i;ZLpb/a;Lpb/a;Lpb/a;)V

    return-object v0
.end method

.method public static i(Lpb/i;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lc5/o;->l(Lpb/i;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lpb/q;

    iget-object v3, v3, Lpb/q;->o:Lpb/d;

    invoke-interface {v3}, Lpb/d;->t()[Lpb/a;

    move-result-object v3

    new-instance v4, Lcc/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, v4, Lcc/c;->a:[Lpb/a;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final j(D)J
    .locals 2

    const-wide v0, 0x100000000L

    double-to-float p0, p0

    invoke-static {p0, v0, v1}, La/a;->u(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k(I)J
    .locals 2

    const-wide v0, 0x100000000L

    int-to-float p0, p0

    invoke-static {p0, v0, v1}, La/a;->u(FJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs l([Lmb/x3;[Ljava/lang/String;)Z
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

.method public static m(Lpb/x;Lpb/i;)Z
    .locals 3

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpb/h;->h(Lpb/h;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lec/a;

    invoke-direct {v1}, Lsb/a;-><init>()V

    iput-boolean v2, v1, Lec/a;->c:Z

    iput-object v0, v1, Lec/a;->b:Lpb/h;

    invoke-virtual {v1, p1}, Lsb/a;->a(Lpb/i;)V

    iget-boolean v0, v1, Lec/a;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lec/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lec/b;-><init>(I)V

    iput-boolean v2, v0, Lec/b;->d:Z

    iget-object v1, p0, Lpb/x;->o:Lpb/s;

    iget-object v1, v1, Lpb/q;->o:Lpb/d;

    iput-object v1, v0, Lec/b;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    iput-object v1, v0, Lec/b;->c:Lpb/h;

    invoke-virtual {v0, p1}, Lsb/a;->a(Lpb/i;)V

    iget-boolean v0, v0, Lec/b;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lec/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lec/b;-><init>(I)V

    iput-boolean v2, v0, Lec/b;->d:Z

    invoke-virtual {p0}, Lpb/i;->z()Lpb/h;

    move-result-object p0

    iput-object p0, v0, Lec/b;->c:Lpb/h;

    new-instance v1, Lnb/c;

    invoke-direct {v1, p0}, Lnb/c;-><init>(Lpb/h;)V

    iput-object v1, v0, Lec/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lsb/a;->a(Lpb/i;)V

    iget-boolean p0, v0, Lec/b;->d:Z

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, La/a;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, La/a;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, La/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v0, La/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, La/a;->c:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, La/a;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-gtz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p([[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    array-length v4, v3

    const-string v5, "."

    invoke-static {v4, v5, v3}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ", "

    invoke-static {v0, p0, v1}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static final r(FJ)J
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lm1/p;->d(J)F

    move-result v0

    mul-float/2addr v0, p0

    invoke-static {v0, p1, p2}, Lm1/p;->b(FJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public static final u(FJ)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    sget-object p2, Lb3/o;->b:[Lb3/p;

    return-wide p0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "output"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr9/c;

    invoke-direct {v0, p0}, Lr9/c;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    const-string v1, "package:"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v4, "it"

    invoke-static {p0, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0, v1}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/data/app/"

    invoke-static {p0, v0, v2}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ".apk"

    invoke-static {p0, v0}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/._-=~+@"

    invoke-static {v1, v0}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    return-object v3
.end method

.method public static w(Lpb/a;Lpb/a;Lpb/a;)D
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Lpb/a;->l:D

    iget-wide v5, v2, Lpb/a;->l:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    iget-wide v7, v1, Lpb/a;->m:D

    iget-wide v9, v2, Lpb/a;->m:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    invoke-virtual/range {p0 .. p1}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-double v7, v5, v3

    sub-double v9, v5, v3

    mul-double v17, v9, v7

    iget-wide v11, v2, Lpb/a;->m:D

    iget-wide v13, v1, Lpb/a;->m:D

    sub-double v15, v11, v13

    invoke-static/range {v11 .. v18}, Lm/a;->b(DDDD)D

    move-result-wide v7

    iget-wide v9, v0, Lpb/a;->l:D

    sub-double v15, v9, v3

    sub-double v17, v5, v3

    mul-double v17, v17, v15

    move-wide v15, v3

    iget-wide v3, v0, Lpb/a;->m:D

    sub-double v19, v3, v13

    sub-double v21, v11, v13

    mul-double v21, v21, v19

    add-double v21, v21, v17

    div-double v21, v21, v7

    const-wide/16 v17, 0x0

    cmpg-double v17, v21, v17

    if-gtz v17, :cond_1

    invoke-virtual/range {p0 .. p1}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v21, v17

    if-ltz v1, :cond_2

    invoke-virtual {v0, v2}, Lpb/a;->h(Lpb/a;)D

    move-result-wide v0

    return-wide v0

    :cond_2
    sub-double v0, v13, v3

    sub-double/2addr v5, v15

    mul-double/2addr v5, v0

    sub-double v3, v15, v9

    sub-double/2addr v11, v13

    mul-double/2addr v11, v3

    sub-double/2addr v5, v11

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public static final x(JFLb3/c;)F
    .locals 4

    invoke-static {p0, p1}, Lb3/o;->b(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    invoke-static {v0, v1, v2, v3}, Lb3/p;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Lb3/c;->S()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p3, p2}, Lb3/c;->H(F)J

    move-result-wide v0

    invoke-static {p0, p1}, Lb3/o;->c(J)F

    move-result p0

    invoke-static {v0, v1}, Lb3/o;->c(J)F

    move-result p1

    div-float/2addr p0, p1

    :goto_0
    mul-float/2addr p0, p2

    return p0

    :cond_0
    invoke-interface {p3, p0, p1}, Lb3/c;->p0(J)F

    move-result p0

    return p0

    :cond_1
    const-wide v2, 0x200000000L

    invoke-static {v0, v1, v2, v3}, Lb3/p;->a(JJ)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0, p1}, Lb3/o;->c(J)F

    move-result p0

    goto :goto_0

    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    iget v0, p0, La/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, La/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public abstract s(Ljava/lang/Throwable;)V
.end method

.method public abstract t(Lg5/i;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, La/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p0

    invoke-virtual {p0}, Lj9/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public abstract y(Z)V
.end method

.method public abstract z(Z)V
.end method
