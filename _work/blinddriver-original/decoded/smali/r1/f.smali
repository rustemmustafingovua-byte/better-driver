.class public final Lr1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:I

.field public static final l:Lmb/q;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Lr1/g0;

.field public final g:J

.field public final h:I

.field public final i:Z

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/q;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lr1/f;->l:Lmb/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLr1/g0;JIZ)V
    .locals 3

    sget-object v0, Lr1/f;->l:Lmb/q;

    monitor-enter v0

    :try_start_0
    sget v1, Lr1/f;->k:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lr1/f;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/f;->a:Ljava/lang/String;

    iput p2, p0, Lr1/f;->b:F

    iput p3, p0, Lr1/f;->c:F

    iput p4, p0, Lr1/f;->d:F

    iput p5, p0, Lr1/f;->e:F

    iput-object p6, p0, Lr1/f;->f:Lr1/g0;

    iput-wide p7, p0, Lr1/f;->g:J

    iput p9, p0, Lr1/f;->h:I

    iput-boolean p10, p0, Lr1/f;->i:Z

    iput v1, p0, Lr1/f;->j:I

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lr1/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lr1/f;

    iget-object v0, p1, Lr1/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lr1/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lr1/f;->b:F

    iget v1, p1, Lr1/f;->b:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lr1/f;->c:F

    iget v1, p1, Lr1/f;->c:F

    invoke-static {v0, v1}, Lb3/f;->b(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lr1/f;->d:F

    iget v1, p1, Lr1/f;->d:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_8

    iget v0, p0, Lr1/f;->e:F

    iget v1, p1, Lr1/f;->e:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lr1/f;->f:Lr1/g0;

    iget-object v1, p1, Lr1/f;->f:Lr1/g0;

    invoke-virtual {v0, v1}, Lr1/g0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Lr1/f;->g:J

    iget-wide v2, p1, Lr1/f;->g:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p0, Lr1/f;->h:I

    iget v1, p1, Lr1/f;->h:I

    if-ne v0, v1, :cond_8

    iget-boolean p0, p0, Lr1/f;->i:Z

    iget-boolean p1, p1, Lr1/f;->i:Z

    if-eq p0, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lr1/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lr1/f;->b:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/f;->c:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/f;->d:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget v2, p0, Lr1/f;->e:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object v2, p0, Lr1/f;->f:Lr1/g0;

    invoke-virtual {v2}, Lr1/g0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget v0, Lm1/p;->h:I

    iget-wide v3, p0, Lr1/f;->g:J

    invoke-static {v2, v1, v3, v4}, Lm/a;->f(IIJ)I

    move-result v0

    iget v2, p0, Lr1/f;->h:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean p0, p0, Lr1/f;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
