.class public abstract Ly5/c;
.super Lt5/b;
.source "SourceFile"


# static fields
.field public static final e0:I

.field public static final f0:I

.field public static final g0:I

.field public static final h0:I

.field public static final i0:I

.field public static final j0:I

.field public static final k0:I

.field public static final l0:I

.field public static final m0:I

.field public static final n0:[I

.field public static final o0:[I


# instance fields
.field public d0:Ls5/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ls5/j;->B:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->e0:I

    sget-object v0, Ls5/j;->v:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->f0:I

    sget-object v0, Ls5/j;->z:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->g0:I

    sget-object v0, Ls5/j;->A:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->h0:I

    sget-object v0, Ls5/j;->t:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->i0:I

    sget-object v0, Ls5/j;->r:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->j0:I

    sget-object v0, Ls5/j;->q:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->k0:I

    sget-object v0, Ls5/j;->o:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->l0:I

    sget-object v0, Ls5/j;->p:Ls5/j;

    iget v0, v0, Ls5/j;->m:I

    sput v0, Ly5/c;->m0:I

    sget-object v0, Lw5/b;->e:[I

    sput-object v0, Ly5/c;->n0:[I

    sget-object v0, Lw5/b;->f:[I

    sput-object v0, Ly5/c;->o0:[I

    return-void
.end method


# virtual methods
.method public final R()Ls5/o;
    .locals 0

    iget-object p0, p0, Ly5/c;->d0:Ls5/o;

    return-object p0
.end method

.method public final a0()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final f0()La6/k;
    .locals 0

    sget-object p0, Lt5/b;->c0:La6/k;

    return-object p0
.end method

.method public final v1(I)Z
    .locals 1

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    iget p0, p0, Ls5/k;->l:I

    sget p1, Ly5/c;->i0:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
