.class public final Ls0/g0;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/g0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/g0;->c:Ls0/g0;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li9/e;

    invoke-interface {p2, p1, p0}, Lr0/c;->q(Li9/e;Ljava/lang/Object;)V

    return-void
.end method
