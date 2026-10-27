.class public final Lo0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/n3;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lz0/d;

.field public final synthetic p:Lp2/m0;

.field public final synthetic q:F

.field public final synthetic r:Lu/s0;


# direct methods
.method public constructor <init>(Lo0/n3;ZZLz0/d;Lp2/m0;FLu/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/q0;->l:Lo0/n3;

    iput-boolean p2, p0, Lo0/q0;->m:Z

    iput-boolean p3, p0, Lo0/q0;->n:Z

    iput-object p4, p0, Lo0/q0;->o:Lz0/d;

    iput-object p5, p0, Lo0/q0;->p:Lp2/m0;

    iput p6, p0, Lo0/q0;->q:F

    iput-object p7, p0, Lo0/q0;->r:Lu/s0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-virtual {v10, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo0/q0;->l:Lo0/n3;

    iget-boolean p2, p0, Lo0/q0;->m:Z

    iget-boolean v0, p0, Lo0/q0;->n:Z

    if-nez p2, :cond_1

    iget-wide v1, p1, Lo0/n3;->f:J

    :goto_1
    move-wide v2, v1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    iget-wide v1, p1, Lo0/n3;->b:J

    goto :goto_1

    :cond_2
    iget-wide v1, p1, Lo0/n3;->k:J

    goto :goto_1

    :goto_2
    if-nez p2, :cond_3

    iget-wide v4, p1, Lo0/n3;->g:J

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    iget-wide v4, p1, Lo0/n3;->c:J

    goto :goto_3

    :cond_4
    iget-wide v4, p1, Lo0/n3;->l:J

    :goto_3
    if-nez p2, :cond_5

    iget-wide p1, p1, Lo0/n3;->h:J

    :goto_4
    move-wide v6, p1

    goto :goto_5

    :cond_5
    if-nez v0, :cond_6

    iget-wide p1, p1, Lo0/n3;->d:J

    goto :goto_4

    :cond_6
    iget-wide p1, p1, Lo0/n3;->m:J

    goto :goto_4

    :goto_5
    iget-object v9, p0, Lo0/q0;->r:Lu/s0;

    const/4 v11, 0x0

    iget-object v0, p0, Lo0/q0;->o:Lz0/d;

    iget-object v1, p0, Lo0/q0;->p:Lp2/m0;

    iget v8, p0, Lo0/q0;->q:F

    invoke-static/range {v0 .. v11}, Lo0/r0;->a(Lz0/d;Lp2/m0;JJJFLu/s0;Lr0/q;I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
