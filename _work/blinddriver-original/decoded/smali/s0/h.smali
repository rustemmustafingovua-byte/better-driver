.class public final Ls0/h;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/h;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/h;->c:Ls0/h;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/t0;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr0/t0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr0/u;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ls0/l0;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/s0;

    invoke-virtual {p2, p0}, Lr0/u;->m(Lr0/t0;)Lr0/s0;

    const-string p0, "Could not resolve state for movable content"

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
