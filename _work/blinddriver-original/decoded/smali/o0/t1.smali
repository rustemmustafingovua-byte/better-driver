.class public final Lo0/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/q1;

.field public final synthetic m:Z

.field public final synthetic n:Lz0/d;


# direct methods
.method public constructor <init>(Lo0/q1;ZLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/t1;->l:Lo0/q1;

    iput-boolean p2, p0, Lo0/t1;->m:Z

    iput-object p3, p0, Lo0/t1;->n:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x33841157    # -6.6042532E7f

    invoke-virtual {p1, p2}, Lr0/q;->b0(I)V

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    sget-object p2, Lo0/z0;->a:Lr0/a0;

    iget-boolean v0, p0, Lo0/t1;->m:Z

    iget-object v1, p0, Lo0/t1;->l:Lo0/q1;

    if-eqz v0, :cond_1

    iget-wide v0, v1, Lo0/q1;->a:J

    goto :goto_1

    :cond_1
    iget-wide v0, v1, Lo0/q1;->d:J

    :goto_1
    new-instance v3, Lm1/p;

    invoke-direct {v3, v0, v1}, Lm1/p;-><init>(J)V

    invoke-virtual {p2, v3}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p2

    new-instance v0, Lo0/d0;

    iget-object p0, p0, Lo0/t1;->n:Lz0/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lo0/d0;-><init>(Lz0/d;I)V

    const p0, -0x3542ef07    # -6195324.5f

    invoke-static {p0, v0, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    const p0, -0x33716f37    # -7.4745416E7f

    invoke-virtual {p1, p0}, Lr0/q;->b0(I)V

    invoke-virtual {p1, v2}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
