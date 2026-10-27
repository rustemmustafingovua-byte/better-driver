.class public final Lr/p0;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# static fields
.field public static final i:Lp2/y;


# instance fields
.field public final a:Lo0/o4;

.field public final b:Lr/m1;

.field public final c:Z

.field public final d:Ls/i;

.field public final e:Z

.field public final f:Li9/f;

.field public final g:Li9/f;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/y;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lp2/y;-><init>(I)V

    sput-object v0, Lr/p0;->i:Lp2/y;

    return-void
.end method

.method public constructor <init>(Lo0/o4;Lr/m1;ZLs/i;ZLi9/f;Li9/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/p0;->a:Lo0/o4;

    iput-object p2, p0, Lr/p0;->b:Lr/m1;

    iput-boolean p3, p0, Lr/p0;->c:Z

    iput-object p4, p0, Lr/p0;->d:Ls/i;

    iput-boolean p5, p0, Lr/p0;->e:Z

    iput-object p6, p0, Lr/p0;->f:Li9/f;

    iput-object p7, p0, Lr/p0;->g:Li9/f;

    iput-boolean p8, p0, Lr/p0;->h:Z

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 5

    new-instance v0, Lr/s0;

    sget-object v1, Lr/p0;->i:Lp2/y;

    iget-boolean v2, p0, Lr/p0;->c:Z

    iget-object v3, p0, Lr/p0;->d:Ls/i;

    iget-object v4, p0, Lr/p0;->b:Lr/m1;

    invoke-direct {v0, v1, v2, v3, v4}, Lr/o0;-><init>(Li9/c;ZLs/i;Lr/m1;)V

    iget-object v1, p0, Lr/p0;->a:Lo0/o4;

    iput-object v1, v0, Lr/s0;->T:Lo0/o4;

    iput-object v4, v0, Lr/s0;->U:Lr/m1;

    iget-boolean v1, p0, Lr/p0;->e:Z

    iput-boolean v1, v0, Lr/s0;->V:Z

    iget-object v1, p0, Lr/p0;->f:Li9/f;

    iput-object v1, v0, Lr/s0;->W:Li9/f;

    iget-object v1, p0, Lr/p0;->g:Li9/f;

    iput-object v1, v0, Lr/s0;->X:Li9/f;

    iget-boolean p0, p0, Lr/p0;->h:Z

    iput-boolean p0, v0, Lr/s0;->Y:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lr/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lr/p0;

    iget-object v0, p0, Lr/p0;->a:Lo0/o4;

    iget-object v1, p1, Lr/p0;->a:Lo0/o4;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lr/p0;->b:Lr/m1;

    iget-object v1, p1, Lr/p0;->b:Lr/m1;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lr/p0;->c:Z

    iget-boolean v1, p1, Lr/p0;->c:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lr/p0;->d:Ls/i;

    iget-object v1, p1, Lr/p0;->d:Ls/i;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lr/p0;->e:Z

    iget-boolean v1, p1, Lr/p0;->e:Z

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lr/p0;->f:Li9/f;

    iget-object v1, p1, Lr/p0;->f:Li9/f;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lr/p0;->g:Li9/f;

    iget-object v1, p1, Lr/p0;->g:Li9/f;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean p0, p0, Lr/p0;->h:Z

    iget-boolean p1, p1, Lr/p0;->h:Z

    if-eq p0, p1, :cond_a

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lr/s0;

    iget-object p1, v0, Lr/s0;->T:Lo0/o4;

    iget-object v1, p0, Lr/p0;->a:Lo0/o4;

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iput-object v1, v0, Lr/s0;->T:Lo0/o4;

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, v0, Lr/s0;->U:Lr/m1;

    iget-object v4, p0, Lr/p0;->b:Lr/m1;

    if-eq v1, v4, :cond_1

    iput-object v4, v0, Lr/s0;->U:Lr/m1;

    move p1, v2

    :cond_1
    iget-boolean v1, v0, Lr/s0;->Y:Z

    iget-boolean v3, p0, Lr/p0;->h:Z

    if-eq v1, v3, :cond_2

    iput-boolean v3, v0, Lr/s0;->Y:Z

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, p1

    :goto_1
    iget-object p1, p0, Lr/p0;->f:Li9/f;

    iput-object p1, v0, Lr/s0;->W:Li9/f;

    iget-object p1, p0, Lr/p0;->g:Li9/f;

    iput-object p1, v0, Lr/s0;->X:Li9/f;

    iget-boolean p1, p0, Lr/p0;->e:Z

    iput-boolean p1, v0, Lr/s0;->V:Z

    sget-object v1, Lr/p0;->i:Lp2/y;

    iget-boolean v2, p0, Lr/p0;->c:Z

    iget-object v3, p0, Lr/p0;->d:Ls/i;

    invoke-virtual/range {v0 .. v5}, Lr/o0;->g1(Li9/c;ZLs/i;Lr/m1;Z)V

    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lr/p0;->a:Lo0/o4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lr/p0;->b:Lr/m1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lr/p0;->c:Z

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lr/p0;->d:Ls/i;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lr/p0;->e:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lr/p0;->f:Li9/f;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lr/p0;->g:Li9/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lr/p0;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
