.class public final Lo0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Ln/i0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lp/a2;

.field public final synthetic p:Lm1/h0;

.field public final synthetic q:J

.field public final synthetic r:F

.field public final synthetic s:F

.field public final synthetic t:Lz0/d;


# direct methods
.method public constructor <init>(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/n;->l:Lf1/r;

    iput-object p2, p0, Lo0/n;->m:Ln/i0;

    iput-object p3, p0, Lo0/n;->n:Lr0/u0;

    iput-object p4, p0, Lo0/n;->o:Lp/a2;

    iput-object p5, p0, Lo0/n;->p:Lm1/h0;

    iput-wide p6, p0, Lo0/n;->q:J

    iput p8, p0, Lo0/n;->r:F

    iput p9, p0, Lo0/n;->s:F

    iput-object p10, p0, Lo0/n;->t:Lz0/d;

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

    if-eqz p1, :cond_1

    iget-object v9, p0, Lo0/n;->t:Lz0/d;

    const/16 v11, 0x180

    iget-object v0, p0, Lo0/n;->l:Lf1/r;

    iget-object v1, p0, Lo0/n;->m:Ln/i0;

    iget-object v2, p0, Lo0/n;->n:Lr0/u0;

    iget-object v3, p0, Lo0/n;->o:Lp/a2;

    iget-object v4, p0, Lo0/n;->p:Lm1/h0;

    iget-wide v5, p0, Lo0/n;->q:J

    iget v7, p0, Lo0/n;->r:F

    iget v8, p0, Lo0/n;->s:F

    invoke-static/range {v0 .. v11}, Lo0/u1;->a(Lf1/r;Ln/i0;Lr0/u0;Lp/a2;Lm1/h0;JFFLz0/d;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
