.class public final synthetic Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf2/p2;

.field public final synthetic m:J

.field public final synthetic n:Z

.field public final synthetic o:Lf1/r;

.field public final synthetic p:Lm0/r;


# direct methods
.method public synthetic constructor <init>(Lf2/p2;JZLf1/r;Lm0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/c;->l:Lf2/p2;

    iput-wide p2, p0, Lm0/c;->m:J

    iput-boolean p4, p0, Lm0/c;->n:Z

    iput-object p5, p0, Lm0/c;->o:Lf1/r;

    iput-object p6, p0, Lm0/c;->p:Lm0/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lf2/l1;->s:Lr0/s2;

    iget-object v0, p0, Lm0/c;->l:Lf2/p2;

    invoke-virtual {p2, v0}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object p2

    new-instance v0, Lm0/e;

    iget-wide v1, p0, Lm0/c;->m:J

    iget-boolean v3, p0, Lm0/c;->n:Z

    iget-object v4, p0, Lm0/c;->o:Lf1/r;

    iget-object v5, p0, Lm0/c;->p:Lm0/r;

    invoke-direct/range {v0 .. v5}, Lm0/e;-><init>(JZLf1/r;Lm0/r;)V

    const p0, 0x4b1ac501    # 1.0142977E7f

    invoke-static {p0, v0, p1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
