.class public abstract Lm/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    return-void
.end method

.method public static final a(JLn/r0;Lr0/q;)Lr0/r2;
    .locals 10

    invoke-static {p0, p1}, Lm1/p;->f(J)Ln1/c;

    move-result-object v0

    invoke-virtual {p3, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lm1/p;->f(J)Ln1/c;

    move-result-object v0

    sget-object v1, Lm/g;->n:Lm/g;

    new-instance v2, Landroidx/fragment/app/t;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    new-instance v0, Ln/o1;

    invoke-direct {v0, v1, v2}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    invoke-virtual {p3, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1
    move-object v3, v1

    check-cast v3, Ln/o1;

    new-instance v2, Lm1/p;

    invoke-direct {v2, p0, p1}, Lm1/p;-><init>(J)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x0

    const-string v6, "ColorAnimation"

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v2 .. v9}, Ln/e;->b(Ljava/lang/Object;Ln/o1;Ln/j;Ljava/lang/Float;Ljava/lang/String;Lr0/q;II)Lr0/r2;

    move-result-object p0

    return-object p0
.end method
