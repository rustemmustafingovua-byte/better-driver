.class public final Li0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/f;


# instance fields
.field public final a:Lz0/d;

.field public final b:Lp/r1;

.field public final c:Lr0/e1;


# direct methods
.method public constructor <init>(Lz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/c;->a:Lz0/d;

    new-instance p1, Lp/r1;

    invoke-direct {p1}, Lp/r1;-><init>()V

    iput-object p1, p0, Li0/c;->b:Lp/r1;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Li0/c;->c:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Li0/e;La9/i;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Li0/b;

    invoke-direct {v0, p1}, Li0/b;-><init>(Li0/e;)V

    new-instance p1, Lg0/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2, v1}, Lg0/f;-><init>(Li0/f;Ljava/lang/Object;Ly8/c;I)V

    sget-object v0, Lp/n1;->l:Lp/n1;

    iget-object p0, p0, Li0/c;->b:Lp/r1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf2/z2;

    invoke-direct {v0, p0, p1, v2}, Lf2/z2;-><init>(Lp/r1;Li9/c;Ly8/c;)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final b(Li9/a;Lr0/q;I)V
    .locals 7

    const v0, 0x2b25d11e

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

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

    if-eqz v0, :cond_3

    iget-object v0, p0, Li0/c;->c:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Li0/b;

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Li0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Li0/a;-><init>(Li0/c;Li9/a;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    return-void

    :cond_2
    iget-object v3, v2, Li0/b;->a:Li0/e;

    const/16 v0, 0x180

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Li0/c;->a:Lz0/d;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lz0/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v4, p1

    move-object v5, p2

    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {v5}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Li0/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v4, p3, v0}, Li0/a;-><init>(Li0/c;Li9/a;II)V

    iput-object p2, p1, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method
