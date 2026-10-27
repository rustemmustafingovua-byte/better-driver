.class public final Lb6/h;
.super Ld6/n;
.source "SourceFile"


# static fields
.field public static final y:I


# instance fields
.field public final v:Lp6/m;

.field public final w:Ld6/b;

.field public final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb6/j;

    invoke-static {v0}, Ld6/m;->b(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lb6/h;->y:I

    return-void
.end method

.method public constructor <init>(Lb6/h;JI)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Ld6/n;-><init>(Ld6/n;J)V

    .line 6
    iput p4, p0, Lb6/h;->x:I

    .line 7
    iget-object p2, p1, Lb6/h;->v:Lp6/m;

    iput-object p2, p0, Lb6/h;->v:Lp6/m;

    .line 8
    iget-object p1, p1, Lb6/h;->w:Ld6/b;

    iput-object p1, p0, Lb6/h;->w:Ld6/b;

    return-void
.end method

.method public constructor <init>(Lb6/h;Ld6/a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ld6/n;-><init>(Ld6/n;Ld6/a;)V

    .line 10
    iget p2, p1, Lb6/h;->x:I

    iput p2, p0, Lb6/h;->x:I

    .line 11
    iget-object p2, p1, Lb6/h;->v:Lp6/m;

    iput-object p2, p0, Lb6/h;->v:Lp6/m;

    .line 12
    iget-object p1, p1, Lb6/h;->w:Ld6/b;

    iput-object p1, p0, Lb6/h;->w:Ld6/b;

    return-void
.end method

.method public constructor <init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/b;Ld6/i;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Ld6/n;-><init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/i;)V

    .line 2
    sget p0, Lb6/h;->y:I

    iput p0, v0, Lb6/h;->x:I

    .line 3
    sget-object p0, Lp6/m;->l:Lp6/m;

    iput-object p0, v0, Lb6/h;->v:Lp6/m;

    .line 4
    iput-object p6, v0, Lb6/h;->w:Ld6/b;

    return-void
.end method


# virtual methods
.method public final f()Ld6/e;
    .locals 0

    sget-object p0, Ld6/e;->l:Ld6/e;

    return-object p0
.end method

.method public final n(Ld6/g;)Z
    .locals 0

    iget-object p0, p0, Ld6/n;->s:Ld6/i;

    invoke-virtual {p0, p1}, Ld6/i;->a(Ld6/g;)Z

    move-result p0

    return p0
.end method

.method public final o(Ld6/a;)Ld6/n;
    .locals 1

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lb6/h;

    invoke-direct {v0, p0, p1}, Lb6/h;-><init>(Lb6/h;Ld6/a;)V

    return-object v0
.end method

.method public final r(Lb6/l;)Lj6/t;
    .locals 1

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->m:Lj6/s;

    check-cast v0, Lj6/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lj6/u;->k(Ld6/m;Lb6/l;)Lj6/t;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lj6/u;->j(Ld6/n;Lb6/l;)Lj6/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, p0, v0}, Lj6/u;->m(Ld6/n;Lb6/l;Ld6/n;Z)Lj6/e0;

    move-result-object p0

    new-instance p1, Lj6/t;

    invoke-direct {p1, p0}, Lj6/t;-><init>(Lj6/e0;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final s(Lb6/l;)Lj6/t;
    .locals 1

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->m:Lj6/s;

    check-cast v0, Lj6/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lj6/u;->k(Ld6/m;Lb6/l;)Lj6/t;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lj6/u;->j(Ld6/n;Lb6/l;)Lj6/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, p0, v0}, Lj6/u;->m(Ld6/n;Lb6/l;Ld6/n;Z)Lj6/e0;

    move-result-object p0

    new-instance p1, Lj6/t;

    invoke-direct {p1, p0}, Lj6/t;-><init>(Lj6/e0;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final t(Lb6/j;)Z
    .locals 0

    iget p0, p0, Lb6/h;->x:I

    iget p1, p1, Lb6/j;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Z
    .locals 1

    sget-object v0, Lb6/j;->G:Lb6/j;

    invoke-virtual {p0, v0}, Lb6/h;->t(Lb6/j;)Z

    move-result p0

    return p0
.end method
