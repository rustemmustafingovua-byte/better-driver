.class public final Lp/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/h2;


# static fields
.field public static final j:Lg5/c;


# instance fields
.field public final a:Lr0/b1;

.field public final b:Lr0/b1;

.field public final c:Lr0/b1;

.field public final d:Ls/i;

.field public final e:Lr0/b1;

.field public f:F

.field public final g:Lr/m;

.field public final h:Lr0/d0;

.field public final i:Lr0/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lod/u;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lod/u;-><init>(I)V

    new-instance v1, Ln/p1;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    new-instance v2, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lp/a2;->j:Lg5/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/b1;

    invoke-direct {v0, p1}, Lr0/b1;-><init>(I)V

    iput-object v0, p0, Lp/a2;->a:Lr0/b1;

    new-instance p1, Lr0/b1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lp/a2;->b:Lr0/b1;

    new-instance p1, Lr0/b1;

    invoke-direct {p1, v0}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lp/a2;->c:Lr0/b1;

    new-instance p1, Ls/i;

    invoke-direct {p1}, Ls/i;-><init>()V

    iput-object p1, p0, Lp/a2;->d:Ls/i;

    new-instance p1, Lr0/b1;

    const v0, 0x7fffffff

    invoke-direct {p1, v0}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lp/a2;->e:Lr0/b1;

    new-instance p1, Lb0/a;

    const/16 v0, 0x17

    invoke-direct {p1, v0, p0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lr/m;

    invoke-direct {v0, p1}, Lr/m;-><init>(Li9/c;)V

    iput-object v0, p0, Lp/a2;->g:Lr/m;

    new-instance p1, Lp/z1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lp/z1;-><init>(Lp/a2;I)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lp/a2;->h:Lr0/d0;

    new-instance p1, Lp/z1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lp/z1;-><init>(Lp/a2;I)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lp/a2;->i:Lr0/d0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lp/a2;->g:Lr/m;

    invoke-virtual {p0}, Lr/m;->a()Z

    move-result p0

    return p0
.end method

.method public final b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp/a2;->g:Lr/m;

    invoke-virtual {p0, p1, p2, p3}, Lr/m;->b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lp/a2;->i:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lp/a2;->h:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e(F)F
    .locals 0

    iget-object p0, p0, Lp/a2;->g:Lr/m;

    invoke-virtual {p0, p1}, Lr/m;->e(F)F

    move-result p0

    return p0
.end method
