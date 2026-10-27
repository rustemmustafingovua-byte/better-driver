.class public abstract Ll7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static final A(Lr0/d2;ILjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Le1/k;

    invoke-direct {v0, p0}, Le1/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lr0/d2;->q(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v2

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lr0/d2;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lr0/d2;->b:[I

    invoke-virtual {p0, v3, p1}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    sget-object v3, Lr0/m;->a:Lr0/e;

    :goto_1
    invoke-virtual {p0, p1}, Lr0/d2;->i(I)I

    move-result v4

    iget-object v5, p0, Lr0/d2;->a:Lr0/e2;

    invoke-virtual {v5, p1}, Lr0/e2;->g(I)Lr0/l0;

    move-result-object p1

    invoke-virtual {v0, v4, v3, p1, p2}, Le1/b;->d(ILjava/lang/Object;Lr0/l0;Ljava/lang/Object;)V

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lr0/d2;->a(I)Lr0/a;

    move-result-object p1

    invoke-virtual {p0, v1}, Lr0/d2;->q(I)I

    move-result p2

    move-object v6, v2

    move-object v2, p1

    move p1, v1

    move v1, p2

    move-object p2, v6

    goto :goto_0

    :cond_1
    move p1, v1

    move-object p2, v2

    goto :goto_0

    :cond_2
    iget-object p0, v0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final B(JJ)J
    .locals 7

    invoke-static {p0, p1}, Lp2/l0;->f(J)I

    move-result v0

    invoke-static {p0, p1}, Lp2/l0;->e(J)I

    move-result v1

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v2

    invoke-static {p0, p1}, Lp2/l0;->e(J)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {p0, p1}, Lp2/l0;->f(J)I

    move-result v3

    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result v6

    if-ge v3, v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v2

    invoke-static {p0, p1}, Lp2/l0;->f(J)I

    move-result v3

    if-gt v2, v3, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-static {p0, p1}, Lp2/l0;->e(J)I

    move-result v3

    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result v6

    if-gt v3, v6, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v0

    move v1, v0

    goto :goto_6

    :cond_4
    invoke-static {p0, p1}, Lp2/l0;->f(J)I

    move-result v2

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v3

    if-gt v2, v3, :cond_5

    move v2, v5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result v3

    invoke-static {p0, p1}, Lp2/l0;->e(J)I

    move-result p0

    if-gt v3, p0, :cond_6

    move v4, v5

    :cond_6
    and-int p0, v2, v4

    if-eqz p0, :cond_7

    invoke-static {p2, p3}, Lp2/l0;->d(J)I

    move-result p0

    :goto_5
    sub-int/2addr v1, p0

    goto :goto_6

    :cond_7
    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result p0

    invoke-static {p2, p3}, Lp2/l0;->e(J)I

    move-result p1

    if-ge v0, p1, :cond_8

    if-gt p0, v0, :cond_8

    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v0

    invoke-static {p2, p3}, Lp2/l0;->d(J)I

    move-result p0

    goto :goto_5

    :cond_8
    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result v1

    goto :goto_6

    :cond_9
    invoke-static {p2, p3}, Lp2/l0;->f(J)I

    move-result p0

    if-le v1, p0, :cond_a

    invoke-static {p2, p3}, Lp2/l0;->d(J)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p2, p3}, Lp2/l0;->d(J)I

    move-result p0

    goto :goto_5

    :cond_a
    :goto_6
    invoke-static {v0, v1}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(Landroid/content/Context;)Lb3/e;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    new-instance v1, Lb3/e;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lc3/b;->a(F)Lc3/a;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lb3/n;

    invoke-direct {v2, v0}, Lb3/n;-><init>(F)V

    :cond_0
    invoke-direct {v1, p0, v0, v2}, Lb3/e;-><init>(FFLc3/a;)V

    return-object v1
.end method

.method public static final b(Landroid/window/BackEvent;)Lh4/b;
    .locals 7

    invoke-static {p0}, Lb5/a;->a(Landroid/window/BackEvent;)F

    move-result v3

    invoke-static {p0}, Lb5/a;->t(Landroid/window/BackEvent;)F

    move-result v4

    invoke-static {p0}, Lb5/a;->y(Landroid/window/BackEvent;)F

    move-result v2

    invoke-static {p0}, Lb5/a;->g(Landroid/window/BackEvent;)I

    move-result v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x24

    if-lt v0, v5, :cond_0

    invoke-static {p0}, Lh4/j;->b(Landroid/window/BackEvent;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    new-instance v0, Lh4/b;

    invoke-direct/range {v0 .. v6}, Lh4/b;-><init>(IFFFJ)V

    return-object v0
.end method

.method public static final c(Ljava/util/logging/Logger;Loa/a;Loa/c;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Loa/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%-22s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Loa/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Lv8/i;)Lv8/i;
    .locals 1

    iget-object v0, p0, Lv8/i;->l:Lv8/f;

    invoke-virtual {v0}, Lv8/f;->b()Lv8/f;

    iget v0, v0, Lv8/f;->t:I

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lv8/i;->m:Lv8/i;

    return-object p0
.end method

.method public static final e(Lr0/h2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;
    .locals 5

    iget-boolean v0, p0, Lr0/h2;->w:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lr0/h2;->p()I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Le1/k;

    invoke-direct {v0, p0}, Le1/k;-><init>(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lr0/h2;->v:I

    if-gez p3, :cond_1

    iget-object p3, p0, Lr0/h2;->b:[I

    invoke-virtual {p0, p3, p2}, Lr0/h2;->E([II)I

    move-result p3

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget p1, p0, Lr0/h2;->i:I

    iget-object v1, p0, Lr0/h2;->b:[I

    invoke-virtual {p0, p2}, Lr0/h2;->r(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lr0/h2;->N([II)I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lr0/h2;->s:Lk/x;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/h0;

    if-eqz v1, :cond_2

    iget v1, v1, Lk/h0;->b:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p2}, Lr0/h2;->r(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lr0/h2;->b:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, p2}, Lr0/h2;->s(I)I

    move-result v1

    goto :goto_3

    :cond_4
    if-ltz p3, :cond_5

    invoke-virtual {p0, v2, p3}, Lr0/h2;->E([II)I

    move-result p2

    goto :goto_2

    :cond_5
    move p2, p3

    :goto_2
    invoke-virtual {p0, p3}, Lr0/h2;->s(I)I

    move-result v1

    goto :goto_5

    :goto_3
    if-ltz p2, :cond_8

    invoke-virtual {p0, p2}, Lr0/h2;->r(I)I

    move-result v2

    iget-object v3, p0, Lr0/h2;->b:[I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    invoke-virtual {p0, p2}, Lr0/h2;->t(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_6
    sget-object v2, Lr0/m;->a:Lr0/e;

    :goto_4
    invoke-virtual {p0, p2}, Lr0/h2;->O(I)Lr0/l0;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Le1/b;->d(ILjava/lang/Object;Lr0/l0;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lr0/h2;->b(I)Lr0/a;

    move-result-object p1

    if-ltz p3, :cond_7

    iget-object p2, p0, Lr0/h2;->b:[I

    invoke-virtual {p0, p2, p3}, Lr0/h2;->E([II)I

    move-result p2

    invoke-virtual {p0, p3}, Lr0/h2;->s(I)I

    move-result v1

    :goto_5
    move v4, p3

    move p3, p2

    move p2, v4

    goto :goto_3

    :cond_7
    move p2, p3

    goto :goto_3

    :cond_8
    iget-object p0, v0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_9
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Li3/f;

    invoke-direct {p1, p0}, Li3/f;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Li3/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "permission must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k([Ljava/lang/Enum;)Lb9/b;
    .locals 1

    const-string v0, "entries"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb9/b;

    invoke-direct {v0, p0}, Lb9/b;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method

.method public static l(Ljava/lang/Class;)Le6/b0;
    .locals 2

    const-class v0, Ls5/h;

    if-ne p0, v0, :cond_0

    new-instance p0, Lg6/x;

    const-class v0, Ls5/h;

    invoke-direct {p0, v0}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Ljava/util/ArrayList;

    if-ne p0, v0, :cond_1

    sget-object p0, Lf6/j;->n:Lf6/j;

    return-object p0

    :cond_1
    const-class v0, Ljava/util/HashSet;

    if-ne p0, v0, :cond_2

    sget-object p0, Lf6/j;->p:Lf6/j;

    return-object p0

    :cond_2
    const-class v0, Ljava/util/LinkedList;

    if-ne p0, v0, :cond_3

    new-instance p0, Lf6/j;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lf6/j;-><init>(I)V

    return-object p0

    :cond_3
    const-class v0, Ljava/util/TreeSet;

    if-ne p0, v0, :cond_4

    new-instance p0, Lf6/j;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lf6/j;-><init>(I)V

    return-object p0

    :cond_4
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p0, v1, :cond_5

    new-instance p0, Lf6/k;

    invoke-direct {p0, v0}, Lf6/k;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p0, v1, :cond_b

    new-instance p0, Lf6/k;

    invoke-direct {p0, v0}, Lf6/k;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_6
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p0, v0, :cond_7

    sget-object p0, Lf6/j;->q:Lf6/j;

    return-object p0

    :cond_7
    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_8

    sget-object p0, Lf6/j;->o:Lf6/j;

    return-object p0

    :cond_8
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p0, v0, :cond_9

    new-instance p0, Lf6/j;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lf6/j;-><init>(I)V

    return-object p0

    :cond_9
    const-class v0, Ljava/util/TreeMap;

    if-ne p0, v0, :cond_a

    new-instance p0, Lf6/j;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lf6/j;-><init>(I)V

    return-object p0

    :cond_a
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p0, v1, :cond_b

    new-instance p0, Lf6/k;

    invoke-direct {p0, v0}, Lf6/k;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final m(Lr0/d2;Lr0/u;II)Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Lr0/d2;->b:[I

    :goto_0
    const/4 v1, 0x0

    if-ge p2, p3, :cond_5

    mul-int/lit8 v2, p2, 0x5

    add-int/lit8 v2, v2, 0x3

    aget v2, v0, v2

    add-int/2addr v2, p2

    invoke-virtual {p0, p2}, Lr0/d2;->j(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lr0/d2;->i(I)I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v0, p2}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/s;->e:Lr0/y0;

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lr0/d2;->h(II)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lr0/y1;

    if-eqz v4, :cond_0

    check-cast v3, Lr0/y1;

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, v3, Lr0/y1;->a:Lr0/x1;

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    instance-of v4, v3, Lr0/o;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lr0/o;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v1, Lr0/o;->l:Lr0/p;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lr0/d2;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2, v2}, Ll7/a;->m(Lr0/d2;Lr0/u;II)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    move p2, v2

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static final n(J)Ljava/lang/String;
    .locals 12

    const-wide/32 v0, -0x3b9328e0

    cmp-long v0, p0, v0

    const-string v1, " s "

    const v2, 0x3b9aca00

    const v3, 0x1dcd6500

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    sub-long/2addr p0, v3

    int-to-long v2, v2

    div-long/2addr p0, v2

    invoke-static {p0, p1, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v4, -0xf404c

    cmp-long v0, p0, v4

    const-string v4, " ms"

    const v5, 0xf4240

    const v6, 0x7a120

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    sub-long/2addr p0, v1

    int-to-long v1, v5

    div-long/2addr p0, v1

    invoke-static {p0, p1, v4, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, p0, v7

    const-string v7, " \u00b5s"

    const/16 v8, 0x3e8

    const/16 v9, 0x1f4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    sub-long/2addr p0, v1

    int-to-long v1, v8

    div-long/2addr p0, v1

    invoke-static {p0, p1, v7, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v10, 0xf404c

    cmp-long v0, p0, v10

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    add-long/2addr p0, v1

    int-to-long v1, v8

    div-long/2addr p0, v1

    invoke-static {p0, p1, v7, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-wide/32 v7, 0x3b9328e0

    cmp-long v0, p0, v7

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    add-long/2addr p0, v1

    int-to-long v1, v5

    div-long/2addr p0, v1

    invoke-static {p0, p1, v4, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    add-long/2addr p0, v3

    int-to-long v2, v2

    div-long/2addr p0, v2

    invoke-static {p0, p1, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%6s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Lla/t;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lla/t;->c:Lr9/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lr9/i;->d(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v0

    const/16 v2, 0x22

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lr9/e;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "toLowerCase(...)"

    invoke-static {v3, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lr9/e;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lr9/g;->b()Lo9/d;

    move-result-object v0

    iget v0, v0, Lo9/b;->m:I

    :goto_0
    add-int/2addr v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    sget-object v7, Lla/t;->d:Lr9/i;

    invoke-virtual {v7, p0, v0}, Lr9/i;->d(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v7

    const-string v9, "substring(...)"

    if-eqz v7, :cond_5

    iget-object v0, v7, Lr9/g;->c:Lr9/f;

    invoke-virtual {v0, v4}, Lr9/f;->b(I)Lr9/d;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    iget-object v10, v10, Lr9/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v10, v11

    :goto_1
    if-nez v10, :cond_1

    invoke-virtual {v7}, Lr9/g;->b()Lo9/d;

    move-result-object v0

    iget v0, v0, Lo9/b;->m:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v8}, Lr9/f;->b(I)Lr9/d;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v11, v12, Lr9/d;->a:Ljava/lang/String;

    :cond_2
    if-nez v11, :cond_3

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Lr9/f;->b(I)Lr9/d;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v11, v0, Lr9/d;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v0, 0x27

    invoke-static {v11, v0}, Lr9/k;->r0(Ljava/lang/String;C)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v11, v0}, Lr9/k;->Z(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lr9/g;->b()Lo9/d;

    move-result-object v0

    iget v0, v0, Lo9/b;->m:I

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parameter is not formatted correctly: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for: \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0, v2}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lla/t;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v3, v5, v1}, Lla/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No subtype found for: \""

    invoke-static {v2, v1, p0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final p(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No valid saved state was found for the key \'"

    const-string v1, "\'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final q(Lp2/g;)Z
    .locals 6

    iget-object v0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lp2/g;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    iget-object v5, v4, Lp2/e;->a:Ljava/lang/Object;

    instance-of v5, v5, Lp2/m;

    if-eqz v5, :cond_0

    iget v5, v4, Lp2/e;->b:I

    iget v4, v4, Lp2/e;->c:I

    invoke-static {v1, v0, v5, v4}, Lp2/h;->b(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static r(Li9/e;)Lq9/i;
    .locals 1

    new-instance v0, Lq9/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v0, v0}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p0

    iput-object p0, v0, Lq9/i;->o:Ly8/c;

    return-object v0
.end method

.method public static s(Ly8/h;Li9/e;)Lg3/l;
    .locals 2

    sget-object v0, Lu9/u;->l:Lu9/u;

    const-string v1, "context"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/graphhopper/routing/f;

    invoke-direct {v1, p0, v0, p1}, Lcom/graphhopper/routing/f;-><init>(Ly8/h;Lu9/u;Li9/e;)V

    invoke-static {v1}, Ll9/a;->q(Lg3/j;)Lg3/l;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/Set;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lu8/v;->J(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-static {v3, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    move v4, v1

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static u(Le8/b;)Lcom/google/gson/JsonElement;
    .locals 6

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    iget-boolean v2, p0, Le8/b;->m:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Le8/b;->m:Z

    :try_start_0
    invoke-static {p0}, Ly7/d;->i(Le8/b;)Lcom/google/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Le8/b;->m:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Landroidx/fragment/app/i0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Landroidx/fragment/app/i0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v2, p0, Le8/b;->m:Z

    throw v0
.end method

.method public static x(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    aget-object v3, p1, v2

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Permission request for permissions "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " must not contain null or empty values"

    invoke-static {p2, p1, v0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3

    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_1
    if-lez v2, :cond_6

    array-length v4, p1

    if-ne v2, v4, :cond_4

    return-void

    :cond_4
    move v2, v1

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v1

    aput-object v5, v3, v2

    move v2, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "singleton(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static varargs z([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    invoke-static {v1}, Lu8/v;->J(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p0, v0}, Lu8/l;->G0([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lu8/t;->l:Lu8/t;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lg3/h;Lg3/d;Lg3/d;)Z
.end method

.method public abstract g(Lg3/h;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract h(Lg3/h;Lg3/g;Lg3/g;)Z
.end method

.method public abstract j(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract v(Lg3/g;Lg3/g;)V
.end method

.method public abstract w(Lg3/g;Ljava/lang/Thread;)V
.end method
