.class public final Lo0/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/c1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/c1;->a:Lo0/c1;

    return-void
.end method


# virtual methods
.method public final a(Lg5/i;Lr0/q;I)V
    .locals 4

    const v0, 0x5d549e6c

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

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

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Li9/a;

    iget-object v1, p1, Lg5/i;->o:Ljava/lang/Object;

    check-cast v1, Lf3/u;

    new-instance v2, Lo0/b1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lo0/b1;-><init>(ILjava/lang/Object;)V

    const v3, 0x455a0383

    invoke-static {v3, v2, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/16 v3, 0x180

    invoke-static {v0, v1, v2, p2, v3}, Lg5/f;->a(Li9/a;Lf3/u;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lg0/k;

    const/4 v1, 0x4

    invoke-direct {v0, p3, v1, p0, p1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method
