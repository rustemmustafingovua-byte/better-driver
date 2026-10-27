.class public final Lg0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg0/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg0/r;->a:Lg0/r;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lr0/q;I)V
    .locals 5

    const v0, 0xf5caf94

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget v1, Lq/e;->j:F

    invoke-static {v0, v1}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_3

    :cond_2
    new-instance v2, Lb0/a;

    const/16 v1, 0x8

    invoke-direct {v2, v1, p1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Li9/c;

    invoke-static {v0, v2}, Lj1/g;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    invoke-static {v0, p2, v3}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lg0/k;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1, p0, p1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Icon;Lr0/q;I)V
    .locals 4

    const v0, 0x7e274b59

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lg0/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/q;-><init>(Lg0/r;Landroid/graphics/drawable/Icon;II)V

    :goto_2
    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    return-void

    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p0, v2, p2, v0}, Lg0/r;->a(Landroid/graphics/drawable/Drawable;Lr0/q;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lg0/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lg0/q;-><init>(Lg0/r;Landroid/graphics/drawable/Icon;II)V

    goto :goto_2

    :cond_6
    return-void
.end method
