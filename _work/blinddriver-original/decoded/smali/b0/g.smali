.class public abstract Lb0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    int-to-float v0, v0

    sput v0, Lb0/g;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x401a827a

    div-float/2addr v0, v1

    sput v0, Lb0/g;->b:F

    return-void
.end method

.method public static final a(Lm0/r;Lf1/r;JLr0/q;I)V
    .locals 10

    const v0, 0x69deb1cb

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x80

    and-int/lit16 v2, v0, 0x93

    const/16 v3, 0x92

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p4, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p4}, Lr0/q;->Y()V

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Lr0/q;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4}, Lr0/q;->W()V

    and-int/lit16 v0, v0, -0x381

    goto :goto_4

    :cond_4
    :goto_3
    and-int/lit16 v0, v0, -0x381

    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    :goto_4
    invoke-virtual {p4}, Lr0/q;->r()V

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v1, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_6

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v1, v2, :cond_7

    :cond_6
    new-instance v1, Lb0/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v1, Li9/c;

    invoke-static {p1, v4, v1}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    sget-object v2, Lf1/c;->m:Lf1/j;

    new-instance v3, Lb0/b;

    invoke-direct {v3, p2, p3, v1}, Lb0/b;-><init>(JLf1/r;)V

    const v1, -0x628ed1fe

    invoke-static {v1, v3, p4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    or-int/lit16 v0, v0, 0x1b0

    invoke-static {p0, v2, v1, p4, v0}, Lm0/d1;->a(Lm0/r;Lf1/e;Lz0/d;Lr0/q;I)V

    :goto_5
    move-wide v6, p2

    goto :goto_6

    :cond_8
    invoke-virtual {p4}, Lr0/q;->W()V

    goto :goto_5

    :goto_6
    invoke-virtual {p4}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v3, Lb0/c;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v8, p5

    invoke-direct/range {v3 .. v9}, Lb0/c;-><init>(Ljava/lang/Object;Lf1/r;JII)V

    iput-object v3, p2, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final b(Lf1/r;Lr0/q;II)V
    .locals 5

    const v0, 0x29616e63

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v2, p2, 0x6

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v2, p2

    :goto_1
    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    if-eq v3, v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v2, v4

    invoke-virtual {p1, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    sget-object p0, Lf1/o;->a:Lf1/o;

    :cond_3
    sget v0, Lb0/g;->b:F

    sget v1, Lb0/g;->a:F

    invoke-static {p0, v0, v1}, Lu/b1;->m(Lf1/r;FF)Lf1/r;

    move-result-object v0

    new-instance v1, Lb0/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lb0/e;-><init>(I)V

    invoke-static {v0, v1}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    invoke-static {v0, p1}, Lu/b;->e(Lf1/r;Lr0/q;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lb0/d;

    invoke-direct {v0, p0, p2, p3}, Lb0/d;-><init>(Lf1/r;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method
