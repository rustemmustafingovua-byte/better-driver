.class public abstract Lr/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp2/y;

.field public static final b:Lr/w1;

.field public static final c:Lr/v1;

.field public static final d:Lr/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/y;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lp2/y;-><init>(I)V

    sput-object v0, Lr/z1;->a:Lp2/y;

    new-instance v0, Lr/w1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/z1;->b:Lr/w1;

    new-instance v0, Lr/v1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/z1;->c:Lr/v1;

    new-instance v0, Lr/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/z1;->d:Lr/x1;

    return-void
.end method

.method public static final a(Lr/n2;JLa9/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lr/y1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/y1;

    iget v1, v0, Lr/y1;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/y1;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/y1;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lr/y1;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/y1;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/y1;->m:Lj9/w;

    iget-object p1, v0, Lr/y1;->l:Lr/n2;

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    move-object v8, p0

    move-object p0, p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    new-instance v8, Lj9/w;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sget-object p3, Lp/n1;->l:Lp/n1;

    new-instance v4, Lb0/m2;

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object v5, p0

    move-wide v6, p1

    invoke-direct/range {v4 .. v10}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    iput-object v5, v0, Lr/y1;->l:Lr/n2;

    iput-object v8, v0, Lr/y1;->m:Lj9/w;

    iput v3, v0, Lr/y1;->o:I

    invoke-virtual {v5, p3, v4, v0}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, v5

    :goto_1
    iget p1, v8, Lj9/w;->l:F

    invoke-virtual {p0, p1}, Lr/n2;->h(F)J

    move-result-wide p0

    new-instance p2, Ll1/b;

    invoke-direct {p2, p0, p1}, Ll1/b;-><init>(J)V

    return-object p2
.end method

.method public static b(Lb0/t2;Lr/m1;ZZLs/i;)Lf1/r;
    .locals 6

    new-instance v0, Lr/u1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lr/u1;-><init>(Lr/h2;Lr/m1;ZZLs/i;)V

    return-object v0
.end method
