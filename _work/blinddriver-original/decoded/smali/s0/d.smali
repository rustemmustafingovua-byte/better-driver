.class public final Ls0/d;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/d;->c:Ls0/d;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ls0/l0;->b(I)I

    move-result p0

    invoke-virtual {p3, p0}, Lr0/h2;->a(I)V

    return-void
.end method
