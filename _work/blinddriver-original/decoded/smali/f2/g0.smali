.class public final Lf2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field public static final a:Lf2/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/g0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf2/g0;->a:Lf2/g0;

    return-void
.end method


# virtual methods
.method public final onClearTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getContentCaptureManager$ui()Lh1/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lh1/a;->l:Lh1/a;

    iput-object p1, p0, Lh1/d;->q:Lh1/a;

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object p0

    iget-object p1, p0, Lk/k;->c:[Ljava/lang/Object;

    iget-object p0, p0, Lk/k;->a:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Lm2/q;

    iget-object v8, v8, Lm2/q;->a:Lm2/p;

    iget-object v8, v8, Lm2/p;->d:Lm2/m;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    sget-object v9, Lm2/t;->D:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    if-eqz v9, :cond_2

    sget-object v9, Lm2/l;->n:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Lm2/a;

    if-eqz v10, :cond_2

    iget-object v8, v10, Lm2/a;->b:Lt8/e;

    check-cast v8, Li9/a;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final onHideTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getContentCaptureManager$ui()Lh1/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lh1/a;->l:Lh1/a;

    iput-object p1, p0, Lh1/d;->q:Lh1/a;

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object p0

    iget-object p1, p0, Lk/k;->c:[Ljava/lang/Object;

    iget-object p0, p0, Lk/k;->a:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Lm2/q;

    iget-object v8, v8, Lm2/q;->a:Lm2/p;

    iget-object v8, v8, Lm2/p;->d:Lm2/m;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    sget-object v9, Lm2/t;->D:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lm2/l;->m:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Lm2/a;

    if-eqz v10, :cond_2

    iget-object v8, v10, Lm2/a;->b:Lt8/e;

    check-cast v8, Li9/c;

    if-eqz v8, :cond_2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final onShowTranslation(Landroid/view/View;)Z
    .locals 12

    const-string p0, "null cannot be cast to non-null type androidx.compose.ui.platform.AndroidComposeView"

    invoke-static {p1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getContentCaptureManager$ui()Lh1/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lh1/a;->m:Lh1/a;

    iput-object p1, p0, Lh1/d;->q:Lh1/a;

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object p0

    iget-object p1, p0, Lk/k;->c:[Ljava/lang/Object;

    iget-object p0, p0, Lk/k;->a:[J

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget-wide v3, p0, v2

    not-long v5, v3

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    sub-int v5, v2, v0

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_3

    const-wide/16 v8, 0xff

    and-long/2addr v8, v3

    const-wide/16 v10, 0x80

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, p1, v8

    check-cast v8, Lm2/q;

    iget-object v8, v8, Lm2/q;->a:Lm2/p;

    iget-object v8, v8, Lm2/p;->d:Lm2/m;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    sget-object v9, Lm2/t;->D:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lm2/l;->m:Lm2/w;

    invoke-virtual {v8, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    check-cast v10, Lm2/a;

    if-eqz v10, :cond_2

    iget-object v8, v10, Lm2/a;->b:Lt8/e;

    check-cast v8, Li9/c;

    if-eqz v8, :cond_2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :cond_2
    shr-long/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_5

    :cond_4
    if-eq v2, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
