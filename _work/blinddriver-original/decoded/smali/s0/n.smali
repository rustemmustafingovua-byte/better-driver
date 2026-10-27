.class public final Ls0/n;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/n;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/n;->c:Ls0/n;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p3, p2, p0}, Lg5/f;->L(Lr0/h2;Lr0/c;I)V

    invoke-virtual {p3}, Lr0/h2;->j()V

    return-void
.end method
