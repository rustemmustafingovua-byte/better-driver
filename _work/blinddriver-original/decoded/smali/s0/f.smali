.class public final Ls0/f;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/f;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/f;->c:Ls0/f;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 1

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/e;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget p0, p0, Lz0/e;->a:I

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1, v0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/a;

    if-lez p0, :cond_1

    new-instance v0, Lad/s2;

    invoke-direct {v0, p2, p0}, Lad/s2;-><init>(Lr0/c;I)V

    move-object p2, v0

    :cond_1
    if-eqz p5, :cond_2

    new-instance p0, Lg5/e;

    const/16 v0, 0xc

    invoke-direct {p0, v0, p5, p3}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3, p4, p0}, Ls0/a;->C(Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V

    return-void
.end method
