.class public final Lb6/p0;
.super Ld6/n;
.source "SourceFile"


# static fields
.field public static final x:La6/g;

.field public static final y:I


# instance fields
.field public final v:Ls5/p;

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, La6/g;

    sget-object v1, Ls5/p;->e:Lw5/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, La6/f;->l:La6/f;

    iput-object v1, v0, La6/g;->l:La6/f;

    sget-object v1, La6/e;->o:La6/e;

    iput-object v1, v0, La6/g;->m:Ls5/u;

    new-instance v1, Lw5/k;

    const-string v2, " "

    invoke-direct {v1, v2}, Lw5/k;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, La6/g;->n:Lw5/k;

    const/4 v1, 0x4

    const/16 v3, 0x3a

    invoke-static {v3, v1}, La6/q;->a(CI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La6/g;->p:Ljava/lang/String;

    const/16 v1, 0x2c

    const/4 v3, 0x1

    invoke-static {v1, v3}, La6/q;->a(CI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, La6/g;->q:Ljava/lang/String;

    iput-object v2, v0, La6/g;->r:Ljava/lang/String;

    invoke-static {v1, v3}, La6/q;->a(CI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La6/g;->s:Ljava/lang/String;

    iput-object v2, v0, La6/g;->t:Ljava/lang/String;

    sput-object v0, Lb6/p0;->x:La6/g;

    const-class v0, Lb6/q0;

    invoke-static {v0}, Ld6/m;->b(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lb6/p0;->y:I

    return-void
.end method

.method public constructor <init>(Lb6/p0;JI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Ld6/n;-><init>(Ld6/n;J)V

    .line 5
    iput p4, p0, Lb6/p0;->w:I

    .line 6
    iget-object p1, p1, Lb6/p0;->v:Ls5/p;

    iput-object p1, p0, Lb6/p0;->v:Ls5/p;

    return-void
.end method

.method public constructor <init>(Lb6/p0;Ld6/a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ld6/n;-><init>(Ld6/n;Ld6/a;)V

    .line 8
    iget p2, p1, Lb6/p0;->w:I

    iput p2, p0, Lb6/p0;->w:I

    .line 9
    iget-object p1, p1, Lb6/p0;->v:Ls5/p;

    iput-object p1, p0, Lb6/p0;->v:Ls5/p;

    return-void
.end method

.method public constructor <init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ld6/n;-><init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/i;)V

    .line 2
    sget p1, Lb6/p0;->y:I

    iput p1, p0, Lb6/p0;->w:I

    .line 3
    sget-object p1, Lb6/p0;->x:La6/g;

    iput-object p1, p0, Lb6/p0;->v:Ls5/p;

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
    new-instance v0, Lb6/p0;

    invoke-direct {v0, p0, p1}, Lb6/p0;-><init>(Lb6/p0;Ld6/a;)V

    return-object v0
.end method

.method public final r(Ls5/g;)V
    .locals 2

    sget-object v0, Lb6/q0;->o:Lb6/q0;

    iget v0, v0, Lb6/q0;->m:I

    iget v1, p0, Lb6/p0;->w:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p1, Ls5/g;->l:Ls5/p;

    if-nez v0, :cond_1

    iget-object p0, p0, Lb6/p0;->v:Ls5/p;

    instance-of v0, p0, La6/h;

    if-eqz v0, :cond_0

    check-cast p0, La6/h;

    invoke-interface {p0}, La6/h;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls5/p;

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Ls5/g;->y(Ls5/p;)V

    :cond_1
    sget-object p0, Lb6/q0;->F:Lb6/q0;

    iget p0, p0, Lb6/q0;->m:I

    and-int/2addr p0, v1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eqz p0, :cond_4

    if-eqz p0, :cond_3

    sget-object p0, Ls5/f;->u:Ls5/f;

    iget v0, p0, Ls5/f;->m:I

    :cond_3
    move p0, v0

    invoke-virtual {p1, v0, p0}, Ls5/g;->t(II)Ls5/g;

    :cond_4
    return-void
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

    const/4 v0, 0x1

    invoke-static {p0, p1, p0, v0}, Lj6/u;->m(Ld6/n;Lb6/l;Ld6/n;Z)Lj6/e0;

    move-result-object p0

    new-instance p1, Lj6/t;

    invoke-direct {p1, p0}, Lj6/t;-><init>(Lj6/e0;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final t(Lb6/q0;)Z
    .locals 0

    iget p0, p0, Lb6/p0;->w:I

    iget p1, p1, Lb6/q0;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
