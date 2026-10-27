.class public abstract Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object v0

    sput-object v0, Ln/e;->a:Ln/r0;

    sget-object v0, Ln/y1;->a:Ljava/lang/Object;

    new-instance v0, Lb3/f;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1}, Lb3/f;-><init>(F)V

    const/4 v1, 0x3

    invoke-static {v2, v2, v0, v1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    return-void
.end method

.method public static final a(FLn/r0;Lr0/q;)Lr0/r2;
    .locals 8

    new-instance v0, Lb3/f;

    invoke-direct {v0, p0}, Lb3/f;-><init>(F)V

    sget-object v1, Ln/d;->l:Ln/o1;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v3, 0x0

    const-string v4, "DpAnimation"

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Ln/e;->b(Ljava/lang/Object;Ln/o1;Ln/j;Ljava/lang/Float;Ljava/lang/String;Lr0/q;II)Lr0/r2;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Ln/o1;Ln/j;Ljava/lang/Float;Ljava/lang/String;Lr0/q;II)Lr0/r2;
    .locals 8

    and-int/lit8 p4, p7, 0x8

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    move-object p3, p6

    :cond_0
    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p4

    sget-object p7, Lr0/m;->a:Lr0/e;

    if-ne p4, p7, :cond_1

    invoke-static {p6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p4

    invoke-virtual {p5, p4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p4, Lr0/u0;

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p7, :cond_2

    new-instance v0, Ln/c;

    invoke-direct {v0, p0, p1, p3}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v3, v0

    check-cast v3, Ln/c;

    invoke-static {p6, p5}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v5

    if-eqz p3, :cond_3

    instance-of p1, p2, Ln/r0;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Ln/r0;

    iget-object v0, p1, Ln/r0;->c:Ljava/lang/Object;

    invoke-static {v0, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget p2, p1, Ln/r0;->a:F

    iget p1, p1, Ln/r0;->b:F

    new-instance v0, Ln/r0;

    invoke-direct {v0, p2, p1, p3}, Ln/r0;-><init>(FFLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-static {p2, p5}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v4

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p7, :cond_4

    const/4 p1, -0x1

    const/4 p2, 0x6

    invoke-static {p1, p2, p6}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object p1

    invoke-virtual {p5, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v2, p1

    check-cast v2, Lw9/i;

    invoke-virtual {p5, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p5, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_5

    if-ne p2, p7, :cond_6

    :cond_5
    new-instance p2, Lb0/n;

    const/16 p1, 0xd

    invoke-direct {p2, p1, v2, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast p2, Li9/a;

    invoke-static {p2, p5}, Lr0/r;->j(Li9/a;Lr0/q;)V

    invoke-virtual {p5, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p5, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p5}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_7

    if-ne p1, p7, :cond_8

    :cond_7
    new-instance v1, Lf2/z2;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v1 .. v7}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    invoke-virtual {p5, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object p1, v1

    :cond_8
    check-cast p1, Li9/e;

    invoke-static {p1, v2, p5}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {p4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/r2;

    if-nez p0, :cond_9

    iget-object p0, v3, Ln/c;->c:Ln/k;

    :cond_9
    return-object p0
.end method
