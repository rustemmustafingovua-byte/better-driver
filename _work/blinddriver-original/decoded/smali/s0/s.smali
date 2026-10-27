.class public final Ls0/s;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/s;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/s;->c:Ls0/s;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/e2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/a;

    invoke-virtual {p3}, Lr0/h2;->d()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lr0/e2;->a(Lr0/a;)I

    move-result p1

    invoke-virtual {p3, p0, p1}, Lr0/h2;->A(Lr0/e2;I)V

    invoke-virtual {p3}, Lr0/h2;->k()V

    return-void
.end method
