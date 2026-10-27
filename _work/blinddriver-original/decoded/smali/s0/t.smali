.class public final Ls0/t;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/t;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/t;->c:Ls0/t;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 6

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/e2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/a;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/c;

    invoke-virtual {v0}, Lr0/e2;->d()Lr0/h2;

    move-result-object v3

    if-eqz p5, :cond_0

    :try_start_0
    new-instance v4, Lg5/e;

    const/16 v5, 0xc

    invoke-direct {v4, v5, p5, p3}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object p5, p1, Ls0/c;->d:Ls0/m0;

    invoke-virtual {p5}, Ls0/m0;->E()Z

    move-result p5

    if-nez p5, :cond_1

    const-string p5, "FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?"

    invoke-static {p5}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Ls0/c;->c:Ls0/m0;

    invoke-virtual {p1, p2, v3, p4, v4}, Ls0/m0;->D(Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, p0}, Lr0/h2;->e(Z)V

    invoke-virtual {p3}, Lr0/h2;->d()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lr0/e2;->a(Lr0/a;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Lr0/h2;->A(Lr0/e2;I)V

    invoke-virtual {p3}, Lr0/h2;->k()V

    return-void

    :goto_1
    invoke-virtual {v3, v1}, Lr0/h2;->e(Z)V

    throw p0
.end method
