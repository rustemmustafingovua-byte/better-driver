.class public final Ls0/z;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/z;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/z;->c:Ls0/z;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ls0/l0;->b(I)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lr0/c;->g(II)V

    return-void
.end method
