.class public abstract Lw/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw/k;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v5, Lw/q;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget-object v16, Lr/m1;->l:Lr/m1;

    sget-object v0, Ly8/i;->l:Ly8/i;

    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v8

    invoke-static {}, Lpc/h;->b()Lb3/d;

    move-result-object v9

    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-static {v0, v0, v1}, Lb3/b;->b(III)J

    move-result-wide v10

    new-instance v0, Lw/k;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v12, Lu8/r;->l:Lu8/r;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lw/k;-><init>(Lw/l;IZFLc2/s0;FZLu9/t;Lb3/c;JLjava/util/List;IIILr/m1;II)V

    sput-object v0, Lw/r;->a:Lw/k;

    return-void
.end method

.method public static final a(Lr0/q;)Lw/p;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lw/p;->x:Lg5/c;

    invoke-virtual {p0, v0}, Lr0/q;->e(I)Z

    move-result v3

    invoke-virtual {p0, v0}, Lr0/q;->e(I)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_0

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-ne v4, v3, :cond_1

    :cond_0
    new-instance v4, Lsc/i;

    const/16 v3, 0x12

    invoke-direct {v4, v3}, Lsc/i;-><init>(I)V

    invoke-virtual {p0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Li9/a;

    invoke-static {v1, v2, v4, p0, v0}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/p;

    return-object p0
.end method
